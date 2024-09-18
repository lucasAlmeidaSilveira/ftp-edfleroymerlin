<p class="title-container-box-image-gallery">Medidas de cada quadro</p>
<div class="container-box-image-gallery">

  {% for image in product.images|slice(1) %}
    {% if "Coleção" not in image.alt %}
      {% include 'snipplets/product/product-image-gallery.tpl' %}
    {% endif %}
  {% endfor %}
</div>