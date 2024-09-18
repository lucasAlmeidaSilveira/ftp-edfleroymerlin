<style>
    .btn-frete-prazo{
        padding: 8px;
    }

    .user-content p {
        font-size: 16px;
        font-family: "DM Sans", sans-serif;
    }
</style>

{# Product labels #}
{% set show_labels = not product.has_stock or product.compare_at_price or product.promotional_offer %}
{% set tag_promotional_enable = settings.tag_promotional_enable %}

{% include 'snipplets/labels.tpl' with {'product_detail': true} %}

{# Product name and breadcrumbs #}

{% if home_main_product %}
    <h2 class="h1 pt-2 mb-3">{{ product.name }}</h2>
{% else %}
    {% embed "snipplets/page-header.tpl" %}
        {% block page_header_text %}{{ product.name }}{% endblock page_header_text %}
    {% endembed %}
{% endif %}

{# SKU #}

{% if settings.product_sku and product.tags[0] %}
    <div style="text-align: left;" class="font-smallest opacity-60 mt-1 mb-3">
        <span class="product-sku">REF: 
            {% for tag in product.tags %}
                {{ tag }}
            {% endfor %}
        </span>
    </div>
{% endif %}

{% if "Quadro Artesanal" in product.name %}
    <div class="box-info-artesanal">
        {% include "snipplets/svg/info-circle.tpl" with {svg_custom_class: "icon-inline"} %}
        {{ settings.info_artesanal }}
    </div>
{% endif %}

{# Product form, includes: Variants, CTA and Shipping calculator #}

 <form id="product_form" class="js-product-form text-left" method="post" action="{{ store.cart_url }}" data-store="product-form-{{ product.id }}">
	<input type="hidden" name="add_to_cart" value="{{product.id}}" />
 	{% if template == "product" %}
        {% set show_size_guide = true %}
    {% endif %}
        
    {% set variations_custom = params.homolog == 'true' or settings.variation_customize_enable %}

    {% if product.variations %}
        {% if variations_custom %}
            {% include "snipplets/product/product-variants-custom.tpl" with {show_size_guide: show_size_guide} %}
        {% else %}
            {% include "snipplets/product/product-variants.tpl" with {show_size_guide: show_size_guide} %}
        {% endif %}
    {% endif %}

    {% if product.category.name == 'Galerias' %}
        {% include "snipplets/product/product-gallery.tpl" %}
    {% endif %}

    {# Product price #}

    <div class="price-container mb-4" data-store="product-price-{{ product.id }}">
        <div class="">
            <div class="price-compare ml-0" {% if not product.compare_at_price or not product.display_price %}style="display:none;"{% else %} style="display:block;"{% endif %}>
                <span id="compare_price_display" class="js-compare-price-display compare-price-display  h3">{% if product.compare_at_price and product.display_price %}{{ product.compare_at_price | money }}{% endif %}</span>
            </div>
            <div style="display: flex; align-items: flex-end; gap: 8px;">
                <div class="js-price-display h1 font-weight-bold" id="price_display" {% if not product.display_price %}style="display:none;"{% endif %} data-product-price="{{ product.price }}">
                    <span style="font-size: 14px">
                        por 
                    </span>
                    {% if product.display_price %}{{ product.price | money }}{% endif %}
                </div>
                {% if product.compare_at_price and tag_promotional_enable %}
                    {% set discountPercentage = ((product.compare_at_price - product.price) / product.compare_at_price) * 100 %}
                        <div class="tag-promo">
                            {{ discountPercentage | round(0) }}% OFF
                        </div>
                {% endif %}
            </div>
        </div>
        {% if settings.product_detail_installments %}
            <div class="d-block">
                {{ component('installments', {'location' : 'product_detail', short_wording: true}) }}
            </div>
        {% endif %}
    </div>

    {# Promotional text #}

    {% if product.promotional_offer and not product.promotional_offer.script.is_percentage_off and product.display_price %}
        <div class="js-product-promo-container mb-4" data-store="product-promotion-info">
            {% if product.promotional_offer.script.is_discount_for_quantity %}
                {% for threshold in product.promotional_offer.parameters %}
                    <h4 class="mb-2 h6 text-accent">{{ "¡{1}% OFF comprando {2} o más!" | translate(threshold.discount_decimal_percentage * 100, threshold.quantity) }}</h4>
                {% endfor %}
            {% else %}
                <h4 class="mb-2 h6 text-accent">{{ "¡Llevá {1} y pagá {2}!" | translate(product.promotional_offer.script.quantity_to_take, product.promotional_offer.script.quantity_to_pay) }}</h4>
            {% endif %}
            {% if product.promotional_offer.scope_type == 'categories' %}
                <p class="font-small">{{ "Válido para" | translate }} {{ "este producto y todos los de la categoría" | translate }}:
                {% for scope_value in product.promotional_offer.scope_value_info %}
                {{ scope_value.name }}{% if not loop.last %}, {% else %}.{% endif %}
                {% endfor %}</br>{{ "Podés combinar esta promoción con otros productos de la misma categoría." | translate }}</p>
            {% elseif product.promotional_offer.scope_type == 'all'  %}
                <p class="font-small">{{ "Vas a poder aprovechar esta promoción en cualquier producto de la tienda." | translate }}</p>
            {% endif %}
        </div>
    {% endif %}

    {% set show_product_quantity = product.available and product.display_price %}

    {% if settings.last_product and show_product_quantity %}
        <div class="{% if product.variations %}js-last-product {% endif %}text-accent font-weight-bold mb-4"{% if product.selected_or_first_available_variant.stock != 1 %} style="display: none;"{% endif %}>
            {{ settings.last_product_text }}
        </div>
    {% endif %}

    <div class="form-row">
        {% if show_product_quantity %}
            {% include "snipplets/product/product-quantity.tpl" %}
        {% endif %}
        {% set state = store.is_catalog ? 'catalog' : (product.available ? product.display_price ? 'cart' : 'contact' : 'nostock') %}
        {% set texts = {'cart': "Agregar al carrito", 'contact': "Consultar precio", 'nostock': "Sin stock", 'catalog': "Consultar"} %}
        <div style="flex: 1;">

            {# Add to cart CTA #}

            <input type="submit" class="js-addtocart js-prod-submit-form btn btn-buy btn-block {{ state }}" value="{{ texts[state] | translate }}" {% if state == 'nostock' %}disabled{% endif %} data-store="product-buy-button" data-component="product.add-to-cart"/>

            {# Fake add to cart CTA visible during add to cart event #}

            {% include 'snipplets/placeholders/button-placeholder.tpl' with {custom_class: "btn-buy"} %}

        </div>

        {% if settings.ajax_cart %}
            <div class="col-12">
                <div class="js-added-to-cart-product-message font-small {% if settings.product_stock %}mt-4{% endif %}" style="display: none;">
                    {% include "snipplets/svg/check.tpl" with {svg_custom_class: "icon-inline icon-lg svg-icon-text mr-2 d-table float-left"} %}
                    <span>
                        {{'Ya agregaste este producto.' | translate }}<a href="#" class="js-modal-open js-open-cart js-fullscreen-modal-open btn-link float-right ml-1" data-toggle="#modal-cart" data-modal-url="modal-fullscreen-cart">{{ 'Ver carrito' | translate }}</a>
                    </span>
                </div>
            </div>
        {% endif %}
    </div>

    {% set has_size_guide_page_finded = false %}
    {% set size_guide_url_handle = settings.size_guide_url | trim('/') | split('/') | last %}

    {% for page in pages if page.handle == size_guide_url_handle and not has_size_guide_page_finded %}
        {% set has_size_guide_page_finded = true %}
        {% if has_size_guide_page_finded %}
            <div class="mb-4 btn-frete-prazo">
                <a data-toggle="#size-guide-modal" data-modal-url="modal-fullscreen-size-guide" class="js-modal-open js-fullscreen-modal-open font-small">
                    {% include "snipplets/svg/truck.tpl" with {svg_custom_class: "icon-inline icon-lg svg-icon-text mr-1"} %}
                    <span class="btn-link font-body">Entenda Nosso Prazo de Produção</span>
                </a>
                {% embed "snipplets/modal.tpl" with{modal_id: 'size-guide-modal',modal_class: 'bottom-md', modal_position: 'right modal-centered-md', modal_transition: 'slide', modal_header_title: true, modal_footer: true, modal_width: 'centered', modal_mobile_full_screen: 'true'} %}
                    {% block modal_head %}
                        Entenda Nosso Prazo de Produção
                    {% endblock %}
                    {% block modal_body %}
                        <div class="user-content">
                            {{ page.content }}
                        </div>
                    {% endblock %}
                {% endembed %}
            </div>
        {% endif %}
    {% endfor %}

    {% if template == 'product' %}
        <div class="row m-md-0">

            {# Product installments #}

            {% set installments_info = product.installments_info_from_any_variant %}
            {% set hasDiscount = product.maxPaymentDiscount.value > 0 %}
            {% set show_payments_info = settings.product_detail_installments and product.show_installments and product.display_price and installments_info %}
            {% if product.description is not empty %}
                <div class="js-accordion-container accordion px-3 col-12">
                    <a href="#" class="js-accordion-toggle py-3 row">
                        <div class="col">
                            <span class="h5">{{ 'Descrição' | translate }}</span>
                        </div>
                        <div class="col-auto">
                            <span class="js-accordion-toggle-inactive">
                                {% include "snipplets/svg/plus.tpl" with {svg_custom_class: "icon-inline svg-icon-text"} %}
                            </span>
                            <span class="js-accordion-toggle-active" style="display: none;">
                            {% include "snipplets/svg/minus.tpl" with {svg_custom_class: "icon-inline svg-icon-text"} %}
                            </span>
                        </div>
                    </a>
                    <div class="js-accordion-content pt-3" style="display: none;">
                            {{ product.description }}
                    </div>
                </div>
            {% endif %}
            
        </div>
    {% endif %}

    {# Define contitions to show shipping calculator and store branches on product page #}

    {% set show_product_fulfillment = settings.shipping_calculator_product_page or (store.has_shipping or store.branches) and not product.free_shipping and not product.is_non_shippable %}

    {% if show_product_fulfillment %}

        {# Shipping calculator and branch link #}

        <div id="product-shipping-container" class="product-shipping-calculator list accordion px-3 col-12" {% if not product.display_price or not product.has_stock %}style="display:none;"{% endif %} data-shipping-url="{{ store.shipping_calculator_url }}">
            {% if store.has_shipping %}
                {% include "snipplets/shipping/shipping-calculator.tpl" with {'shipping_calculator_variant' : product.selected_or_first_available_variant, 'product_detail': true} %}
            {% endif %}
        </div>

        {% if store.branches %} 
            {# Link for branches #}
            {% include "snipplets/shipping/branches.tpl" with {'product_detail': true} %}
        {% endif %}

    {% endif %}

 </form>

{# Product payments details #}

{% include 'snipplets/product/product-payment-details.tpl' %}
