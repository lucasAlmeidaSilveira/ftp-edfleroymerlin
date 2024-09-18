<div id="shoppingCartPage" data-minimum="{{ settings.cart_minimum_value }}" data-store="cart-page">
    <div class="container">

        {% embed "snipplets/page-header.tpl" with {'breadcrumbs': true} %}
            {% block page_header_text %}{{ "Carrito de compras" | translate }}{% endblock page_header_text %}
        {% endembed %}
        
        <form action="{{ store.cart_url }}" method="post" class="visible-when-content-ready" data-store="cart-form" data-component="cart">

            {# Cart alerts #}

            {% if error.add %}
                {{ component('alert', {'type': 'warning', 'message': 'our_components.cart.error_messages.' ~ error.add }) }}
            {% endif %}
            {% for error in error.update %}
                <div class="alert alert-warning">{{ "No podemos ofrecerte {1} unidades de {2}. Solamente tenemos {3} unidades." | translate(error.requested, error.item.name, error.stock) }}</div>
            {% endfor %}
            {% if cart.items %}

                <div class="row">

                    {# Cart header #}
                    
                    <div class="col-8 mb-3 d-none d-md-block">
                        <div class="row">
                            <div class="col-5">
                                <span class="js-cart-products-heading-plural" {% if cart.items_count == 1 %}style="display: none;"{% endif %}>{{ 'Productos' | translate }}</span>
                                <span class="js-cart-products-heading-singular" {% if cart.items_count > 1 %}style="display: none;"{% endif %}>{{ 'Producto' | translate }}</span>
                            </div>
                            <div class="col-7">
                                <div class="row">
                                    <div class="col-4 text-center px-0">{{ 'Cantidad' | translate }}</div>
                                    <div class="col-3">{{ 'Precio' | translate }}</div>
                                    <div class="col-4">{{ 'Subtotal' | translate }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-8">
                        <div class="js-ajax-cart-list">

                            {# Cart items #}

                            {% if cart.items %}
                              {% for item in cart.items %}
                                {% include "snipplets/cart-item-ajax.tpl" with {'cart_page': true} %}
                              {% endfor %}
                            {% endif %}
                            {% if store.show_shipping_emergency_message %}
                                {% include "snipplets/product/product-notice-composition.tpl" %}
                            {% endif %}
                        </div>
                        {# Cart fulfillment #}

                        {% include "snipplets/shipping/cart-fulfillment.tpl" with {'cart_page': true} %}
                    </div>
                    <div class="col-12 col-md-4">
                        {% include "snipplets/cart-totals.tpl" with {'cart_page': true} %}
                    </div>
                </div>
            {% else %}

                {#  Empty cart  #}

                {% if not error %}
                    {{ component('alert', {'type': 'info', 'message': ('El carrito de compras está vacío.' | translate) }) }}
                {% endif %}
            {% endif %}
            <div id="error-ajax-stock" class="row" style="display: none;">
                <div class="alert alert-warning w-100">
                    {{ "¡Uy! No tenemos más stock de este producto para agregarlo al carrito. Si querés podés" | translate }}<a href="{{ store.products_url }}" class="btn-link ml-1">{{ "ver otros acá" | translate }}</a>
                </div>
            </div>
        </form>
    </div>
    <div id="store-curr" class="hidden">{{ cart.currency }}</div>
</div>

