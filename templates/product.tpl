{# Sticky Btn Buy Javascript #}

<script>
    document.addEventListener('DOMContentLoaded', function() {
    var containerBtnProduct = document.querySelector('.container-btn-product'); // Seleciona o container do botão

    function toggleContainerVisibility() {
        var triggerHeight = document.body.scrollHeight * 0.4; // Define o gatilho para 40% da altura da página

        // Verifica se a página foi rolada mais de 40% da altura
        if (window.pageYOffset > triggerHeight) {
        containerBtnProduct.style.display = 'flex'; // Torna o container visível
        } else {
        containerBtnProduct.style.display = 'none'; // Esconde o container
        }
    }

    // Verifica se a largura da tela é de até 768px (um valor comum para dispositivos móveis)
    if (window.innerWidth <= 768) {
        window.addEventListener('scroll', toggleContainerVisibility);
        toggleContainerVisibility(); // Verifica imediatamente no carregamento se precisa ser exibido
    } else {
        containerBtnProduct.style.display = 'none'; // Garante que esteja escondido em telas maiores
    }
    });
</script>

{# Payments details #}

<div id="single-product" class="js-has-new-shipping js-product-detail js-product-container js-shipping-calculator-container pt-3 pt-md-5" data-variants="{{product.variants_object | json_encode }}" data-store="product-detail">
    <div class="container">
        <div class="row section-single-product">
            <div class="col-12 col-md-6 col-lg-7{% if not settings.scroll_product_images and product.images_count > 1 %} pl-md-0{% endif %}">
            	{% include 'snipplets/product/product-image.tpl' %}
            </div>
            <div class="col pt-3" data-store="product-info-{{ product.id }}">
            	{% include 'snipplets/product/product-form.tpl' %}
            	{% include 'snipplets/product/product-btn-sticky.tpl' %}
                {% if not settings.full_width_description %}
                    {% include 'snipplets/product/product-description.tpl' %}
                {% endif %}
            </div>

            {# Product description full width #}

            {% if settings.full_width_description %}
                {% include 'snipplets/product/product-description.tpl' %}
            {% endif %}
        </div>
    </div>
</div>

{# Related products #}
{% include 'snipplets/product/product-related.tpl' %}
