<div class="js-cart-item {% if item.product.is_non_shippable %}js-cart-item-non-shippable{% else %}js-cart-item-shippable{% endif %} item cart-item" data-item-id="{{ item.id }}" data-store="cart-item-{{ item.product.id }}" data-component="cart.line-item" style="display: flex; flex-direction: column; margin-bottom: 20px;">
  <div class="{% if cart_page %}align-items-md-center{% endif %}" style=" display: flex; flex-wrap: wrap; align-items: center;" >

    {% set show_free_shipping_label = item.product.free_shipping and not (cart.free_shipping.cart_has_free_shipping or cart.free_shipping.min_price_free_shipping.min_price) %}

    {# Cart item image #}
    <div class="cart-item-image-col {% if cart_page %}cart-item-image-col-md mr-md-3{% endif %} col-auto pl-0">
      <a href="{{ item.url }}">
        <img src="{{ item.featured_image | product_image_url('medium') }}" class="img-fluid cart-item-image {% if cart_page %}cart-item-image-md{% endif %}" />
      </a>
    </div>
    <div class="col {% if cart_page %}col-md pr-md-0{% else %}align-items-center{% endif %} pl-0 py-3">
      <div class="row {% if cart_page %}align-items-md-center{% endif %}">
        
        <div class="col {% if cart_page %}col-md-5 pr-md-3{% endif %} pr-0">

          {# Cart item name #}

          <div class="font-small mb-2 mb-md-1 {% if cart_page %}col-12 col-md-12 px-0 font-md-body{% endif %}" data-component="line-item.name">
            <a href="{{ item.url }}" data-component="name.short-name">
              {{ item.short_name }}
            </a>
            {% if show_free_shipping_label %}
              <div class="my-2">
                <span class="label label-accent label-small font-smallest">{{ "Envío gratis" | translate }}</span>
              </div>
            {% endif %}
          </div>

          {# Cart item subtotal #}
          
          <span class="js-cart-item-subtotal h5 {% if cart_page %}col-12 col-md-2 px-0 text-md-center d-block d-md-none{% endif %}" data-line-item-id="{{ item.id }}" data-component="subtotal.value" data-component-value={{ item.subtotal | money }}'>{{ item.subtotal | money }}</span>
        </div>

        <div class="col-auto {% if cart_page %}col-md-7 p-0{% endif %} text-center">

          {% if cart_page %}
          <div class="row align-items-md-center">
          {% endif %}

          {# Cart item quantity controls #}

          <div class="cart-item-quantity {% if cart_page %}col-12 col-md-3 px-0 mb-2 mb-md-0 text-center{% endif %}" data-component="line-item.subtotal"> 
            {% embed "snipplets/forms/form-input.tpl" with{
              type_number: true, 
              input_value: item.quantity, 
              input_name: 'quantity[' ~ item.id ~ ']', 
              input_data_attr: 'item-id',
              input_data_val: item.id,
              input_group_custom_class: 'form-quantity cart-item-quantity small m-auto mb-0', 
              input_custom_class: 'js-cart-quantity-input text-center', 
              input_label: false, input_append_content: true, 
              data_component: 'quantity.value',
              form_control_container_custom_class: 'js-cart-quantity-container col px-1'} %}
                {% block input_prepend_content %}
                <div class="row m-0 align-items-center ">
                  <span class="js-cart-quantity-btn form-quantity-icon btn" onclick="LS.minusQuantity({{ item.id }}{% if not cart_page %}, true{% endif %})" data-component="quantity.minus">
                    {% include "snipplets/svg/minus.tpl" with {svg_custom_class: "icon-inline icon-w-12 icon-xs"} %}
                  </span>
                {% endblock input_prepend_content %}
                {% block input_append_content %}
                  
                  {# Always place this spinner before the quantity input #}
            
                  <span class="js-cart-input-spinner cart-item-spinner" style="display: none;">
                    {% include "snipplets/svg/spinner-third.tpl" with {svg_custom_class: "icon-inline icon-spin svg-icon-text"} %}
                  </span>

                  <span class="js-cart-quantity-btn form-quantity-icon btn" onclick="LS.plusQuantity({{ item.id }}{% if not cart_page %}, true{% endif %})" data-component="quantity.plus">
                    {% include "snipplets/svg/plus.tpl" with {svg_custom_class: "icon-inline icon-w-12 icon-xs"} %}
                  </span>
                </div>
                {% endblock input_append_content %}
            {% endembed %}
          </div>

          {% if cart_page %}
            
            {# Cart item unit price #}
            
            <span class="cart-item-subtotal-short h5 col-2 col-md-4 text-center p-0 d-none d-md-block" data-line-item-id="{{ item.id }}">{{ item.unit_price | money }}</span>

            <span class="js-cart-item-subtotal h5 col-5 col-md-4 text-right text-md-center p-0 mt-2 mt-md-0 d-none d-md-block" data-line-item-id="{{ item.id }}" data-component="subtotal.value" data-component-value={{ item.subtotal | money }}'>{{ item.subtotal | money }}</span>

          {% endif %}

          <button type="button" class="btn btn-link mt-2 {% if cart_page %}d-block d-md-none m-auto{% endif %}" onclick="LS.removeItem({{ item.id }}{% if not cart_page %}, true{% endif %})" data-component="line-item.remove">
            {{ "Borrar" | translate }}
          </button>

          {% if cart_page %}
          </div>
          {% endif %}
        </div>

        
      </div>
    </div>

    {% if cart_page %}
      
      {# Cart item delete #}
      <div class="col-auto d-none d-md-block text-center" >
        <button type="button" class="btn btn-link" onclick="LS.removeItem({{ item.id }}{% if not cart_page %}, true{% endif %})" data-component="line-item.remove">
          {{ "Borrar" | translate }}
        </button>
      </div>
    {% endif %}

  </div>
{% if item.short_variant_name %}
  {% if "Quadro Decorativo" in item.short_name %}
    {% if item.short_variant_name %}
    {% set variant_parts = item.short_variant_name | split(',') %}
    {% set first_part = "Cada quadro: " ~ variant_parts[0] %}
    {% set rest_parts = variant_parts | slice(1) | join(',') %}

    <small data-component="name.short-variant-name">
      {{ first_part }},{{ rest_parts }} 
      {% if "Canvas" in rest_parts %}
        Impressão em tecido Canvas
      {% endif %}
      {% if "Impressão" in rest_parts or "c/ Vidro" in rest_parts or "vidro" in rest_parts %}
        Impressão em papel fotográfico
      {% endif %}
      {% if "Metacrilato" in rest_parts %}
        Impressão em papel adesivo fotográfico com placa acrílico
      {% endif %}
    </small>

  {% else %}
    <small data-component="name.short-variant-name">{{ item.short_variant_name }}</small>
	{% endif %}
{% endif %}
{% endif %}
</div>

