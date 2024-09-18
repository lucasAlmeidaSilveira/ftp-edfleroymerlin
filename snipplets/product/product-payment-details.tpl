{# Product payments details #}

{% if product.installments_info_from_any_variant %}
    {% set gateways = installments_info | length %}
    {% set store_set_for_new_installments_view = store.is_set_for_new_installments_view %}
    {# Get the array that contains the display settings for each payment method #}
    {% set payment_methods_config = product.payment_methods_config %}
    
    {% embed "snipplets/modal.tpl" with{
        modal_id: 'installments-modal',
        modal_class: 'bottom-md', 
        modal_position: 'right modal-centered-md', 
        modal_transition: 'slide', 
        modal_header_title: true, 
        modal_footer: true, 
        modal_width: 'centered', 
        modal_mobile_full_screen: 'true'} %}

        {% block modal_head %}
            {{ 'Medios de pago' | translate }}
        {% endblock %}
        {% block modal_body %}

            {# Modal header and gateways tab links #}

            {{ component('payments/payments-details',
                {
                    text_classes: {
                        text_accent: "text-accent font-weight-bold ml-1",
                        subtitles: "mb-3",
                        text_big: "font-big",
                        text_small: "font-small",
                        align_right: "text-right"
                    },
                    spacing_classes: {
                        top_1x: "mt-1",
                        top_2x: "mt-2",
                        top_3x: "mt-3",
                        right_1x: "mr-1",
                        right_2x: "mr-2",
                        right_3x: "mr-3",
                        bottom_1x: "mb-1",
                        bottom_2x: "mb-2",
                        bottom_3x: "mb-3",
                        left_3x: "ml-3",
                    },
                    container_classes : {
                        payment_method: "box p-3"
                    }
                })
            }}
        {% endblock %}
        {% block modal_foot %}
            <div class="text-right">
                <span class="js-modal-close js-fullscreen-modal-close btn-link pull-right">{{ 'Volver al producto' | translate }}</span>
            </div>
        {% endblock %}
    {% endembed %}

{% endif %}
