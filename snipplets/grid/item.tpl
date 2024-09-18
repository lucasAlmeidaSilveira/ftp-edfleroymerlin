{# /*============================================================================
  #Item grid
==============================================================================*/

#Properties

#Slide Item

#}

{% set slide_item = slide_item | default(false) %}
{% set columns_desktop = settings.grid_columns_desktop %}
{% set columns_mobile = settings.grid_columns_mobile %}
{% set tag_promotional_enable = settings.tag_promotional_enable %}

{% if slide_item %}
    <div class="swiper-slide">
{% endif %}
    <div class="js-item-product{% if slide_item %} js-item-slide p-0{% endif %}{% if not slide_item %} col-{% if columns_mobile == 1 or horizontal_item %}12{% else %}6{% endif %} col-md-{% if columns_desktop == 4 %}3{% elseif horizontal_item %}4{% elseif columns_desktop == 5 %}2-4{% else %}2{% endif %}{% endif %} item-product col-grid" data-product-type="list" data-product-id="{{ product.id }}" data-store="product-item-{{ product.id }}" data-component="product-list-item" data-component-value="{{ product.id }}" data-transition="fade-in-up">

        {% if horizontal_item %}
            {% set placeholder_btn_size = 'btn-small' %}
        {% else %}
            {% set placeholder_btn_size = 'btn-medium' %}
        {% endif %}
        <div class="item{% if horizontal_item %} item-horizontal{% endif %}{% if slide_item %} m-0{% endif %}">
            {% if horizontal_item and not settings.quick_shop %}
                <div class="row">
            {% elseif settings.quick_shop %}
                <div class="js-product-container js-quickshop-container{% if product.variations %} js-quickshop-has-variants{% endif %} position-relative{% if horizontal_item %} row{% endif %}" data-variants="{{ product.variants_object | json_encode }}" data-quickshop-id="quick{{ product.id }}">
            {% endif %}
            {% set product_url_with_selected_variant = has_filters ?  ( product.url | add_param('variant', product.selected_or_first_available_variant.id)) : product.url  %}

            {% set item_img_width = product.featured_image.dimensions['width'] %}
            {% set item_img_height = product.featured_image.dimensions['height'] %}
            {% set item_img_srcset = product.featured_image %}
            {% set item_img_alt = product.featured_image.alt %}
            {% set item_img_spacing = item_img_height / item_img_width * 100 %}
            {% set show_secondary_image = settings.product_hover and product.other_images %}

            {# Set how much viewport space the images will take to load correct image #}

            {% if columns_mobile == 2 %}
                {% set mobile_image_viewport_space = '50' %}
            {% else %}
                {% set mobile_image_viewport_space = '100' %}
            {% endif %}

            {% if columns_desktop == 6 %}
                {% set desktop_image_viewport_space = '16' %}
            {% elseif columns_desktop == 5 %}
                {% set desktop_image_viewport_space = '20' %}
            {% else %}
                {% set desktop_image_viewport_space = '25' %}
            {% endif %}

            <div class="{% if show_secondary_image %}js-item-with-secondary-image{% endif %} item-image{% if columns == 1 %} item-image-big{% endif %}{% if horizontal_item %} col-5 pr-0{% endif %}">
                <div style="padding-bottom: {{ item_img_spacing }}%;" class="js-item-image-padding position-relative" data-store="product-item-image-{{ product.id }}">
                    <a href="{{ product_url_with_selected_variant }}" title="{{ product.name }}" aria-label="{{ product.name }}" >
                        <img alt="{{ item_img_alt }}" data-expand="-10" src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset="{{ item_img_srcset | product_image_url('small')}} 240w, {{ item_img_srcset | product_image_url('medium')}} 320w, {{ item_img_srcset | product_image_url('large')}} 480w, {{ item_img_srcset | product_image_url('huge')}} 640w, {{ item_img_srcset | product_image_url('original')}} 1024w" class="js-item-image lazyautosizes lazyload img-absolute img-absolute-centered fade-in {% if show_secondary_image %}item-image-primary{% endif %}" width="{{ item_img_width }}" height="{{ item_img_height }}" sizes="(max-width: 768px) {{ mobile_image_viewport_space }}vw, (min-width: 769px) {{ desktop_image_viewport_space }}vw"/> 
                        <div class="placeholder-fade">
                        </div>

                        {% if show_secondary_image %}
                            <img alt="{{ item_img_alt }}" data-sizes="auto" src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset="{{ product.other_images | first | product_image_url('small')}} 240w, {{ product.other_images | first | product_image_url('medium')}} 320w, {{ product.other_images | first | product_image_url('large')}} 480w, {{ product.other_images | first | product_image_url('huge')}} 640w, {{ product.other_images | first | product_image_url('original')}} 1024w" class="js-item-image js-item-image-secondary lazyautosizes lazyload img-absolute img-absolute-centered fade-in item-image-secondary" sizes="(min-width: 768px) {{ desktop_image_viewport_space }}vw, {{ mobile_image_viewport_space }}vw" style="display:none;" />
                        {% endif %}
                    </a>
                </div>

                {% if product.free_shipping %}
                    {% include 'snipplets/labels.tpl' with {shipping: true} %}
                {% endif %}
                
                {# /* {% if product.compare_at_price %}
                    {% set discountPercentage = ((product.compare_at_price - product.price) / product.compare_at_price) * 100 %}
                    
                    <div class="label-discount">
                        <span class="discount-percentage">
                            -{{ discountPercentage | round(0) }}%
                        </span>
                    </div>
                {% endif %} */ #}

            </div>
            {% if settings.quick_shop and product.available and product.display_price and product.variations %}

                {# Hidden product form to update item image and variants: Also this is used for quickshop popup #}

                <div class="js-item-variants hidden">
                    <form class="js-product-form" method="post" action="{{ store.cart_url }}">
                        <input type="hidden" name="add_to_cart" value="{{product.id}}" />
                        {% if product.variations %}
                            {% include "snipplets/product/product-variants.tpl" with {quickshop: true} %}
                        {% endif %}
                        {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
                        {% set texts = {'cart': "Agregar al carrito", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}

                        {# Add to cart CTA #}

                        {% set show_product_quantity = product.available and product.display_price %}

                        <div class="form-row">

                            {% if show_product_quantity %}
                                {% include "snipplets/product/product-quantity.tpl" %}
                            {% endif %}

                            <div class="{% if show_product_quantity %}col-8{% else %}col-12{% endif %}">

                                <input type="submit" class="js-addtocart js-prod-submit-form btn btn-primary w-100 mb-2 {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} />

                                {# Fake add to cart CTA visible during add to cart event #}

                                {% include 'snipplets/placeholders/button-placeholder.tpl' with {custom_class: "mb-1"} %}
                            </div>
                        </div>
                    </form>
                </div>

            {% endif %}
            {% set show_labels = not product.has_stock or product.compare_at_price or product.promotional_offer %}
            <div class="item-description{% if horizontal_item %} col-7{% if not show_labels or not settings.quick_shop %} pt-3{% endif %}{% endif %}" data-store="product-item-info-{{ product.id }}">
                <a href="{{ product_url_with_selected_variant }}" title="{{ product.name }}" aria-label="{{ product.name }}" class="item-link">
                    {% include 'snipplets/labels.tpl' %}
                    <div class="js-item-name item-name mb-2" data-store="product-item-name-{{ product.id }}">{{ product.name }}</div>
                    {% if product.display_price %}
                        <div class="item-price-container mb-1" data-store="product-item-price-{{ product.id }}">
                            <span class="js-price-display item-price">
                                {{ product.price | money }}
                            </span>
                            <span class="js-compare-price-display price-compare" {% if not product.compare_at_price or not product.display_price %}style="display:none;"{% else %}style="display:inline-block;"{% endif %}>
                                {{ product.compare_at_price | money }}
                            </span>
                        </div>
                    {% endif %}
                    {% if settings.product_installments %}
                        {{ component('installments', {'location' : 'product_item', short_wording: true, container_classes: { installment: "item-installments"}}) }}
                    {% endif %}
                </a>
                {% if settings.quick_shop %}
                    <div class="item-actions{% if horizontal_item %} mt-2 pt-1{% else %} mt-3{% endif %}">
                        {% if product.available and product.display_price %}
                            {% if product.variations %}

                                {# Open quickshop popup if has variants #}

                                <a data-toggle="#quickshop-modal" data-modal-url="modal-fullscreen-quickshop" href="{{ product_url_with_selected_variant }}" class="{% if slide_item %}js-quickshop-slide{% endif %} btn btn-primary{% if horizontal_item %} btn-small{% else %} btn-medium d-block{% endif %} py-2" title="{{ 'Compra rápida de' | translate }} {{ product.name }}" aria-label="{{ 'Compra rápida de' | translate }} {{ product.name }}" data-component="product-list-item.add-to-cart" data-component-value="{{product.id}}">{{ 'Comprar' | translate }}</a>
                            {% else %}
                                <form class="js-product-form d-block" method="post" action="{{ store.cart_url }}">
                                    <input type="hidden" name="ada#LD--saveButtond_to_cart" value="{{product.id}}" />
                                    {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
                                    {% set texts = {'cart': "Comprar", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}

                                    <input type="submit" class="js-addtocart js-prod-submit-form btn btn-primary{% if horizontal_item %} btn-small{% else %} btn-medium w-100{% endif %} py-2 {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} data-component="product-list-item.add-to-cart" data-component-value="{{ product.id }}"/>

                                    {# Fake add to cart CTA visible during add to cart event #}

                                    {% include 'snipplets/placeholders/button-placeholder.tpl' with {btn_secondary: true, custom_class: placeholder_btn_size ~ " mb-1 py-2", direct_add: true} %}
                                </form>
                            {% endif %}
                        {% endif %}
                    </div>
                {% endif %}
            </div>
            {% if product.compare_at_price %}
                {% set discountPercentage = ((product.compare_at_price - product.price) / product.compare_at_price) * 100 %}
                
                {% if tag_promotional_enable %}
                    <div class="tag-promo">
                    {{ discountPercentage | round(0) }}% OFF
                    </div>
                {% endif %}
            {% endif %}
            {% if settings.quick_shop or (horizontal_item and not settings.quick_shop) %}
                </div>{# This closes the quickshop tag #}
            {% endif %}

            {# Structured data to provide information for Google about the product content #}
            {{ component('structured-data', {'item': true}) }}
        </div>
    </div>
{% if slide_item %}
    </div>
{% endif %}