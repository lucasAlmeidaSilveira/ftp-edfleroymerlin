<div class="container-btn-product"> 
  <div class="header-btn-product">
    <img class="js-item-image lazyautosizes lazyload" alt="{{ product.name }}" data-expand="-10" src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset="{{ product.images | first | product_image_url('small')}}"/> 
    <div class="info-btn-product">
      <p class="title-btn-product">{{ product.name }}</p>
      <div class="js-price-display" id="price_display" {% if not product.display_price %}style="display:none;"{% endif %} data-product-price="{{ product.price }}">
        <p class="price-btn-product">
          {% if product.display_price %}{{ product.price | money }}{% endif %}
        </p>
      </div>
    </div>
  </div>
  <a class="btn-product" href="#scroll-product">
    Continuar compra
  </a>
</div>
