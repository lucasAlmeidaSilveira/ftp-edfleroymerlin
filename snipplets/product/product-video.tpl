{% if product.video_url %}
	{% if product.images_count > 1 %}
		{% set video_index = product.images_count %}
	{% else %}
		{% set video_index = 1 %}
	{% endif %}

	{% if thumb %}
		<a href="#" class="js-product-thumb js-video-thumb product-thumb d-block mb-3" data-thumb-loop="{{ video_index }}">
			{% include 'snipplets/video-item.tpl' with {thumb: true} %}
		</a>
	{% else %}
		<div class="js-product-slide js-product-video-slide swiper-slide slider-slide" data-image-position="{{ video_index }}" style="height: auto;">
			<div class="product-video-container">
				<div class="product-video">

					{# Visible video inside slider #}
					{% include 'snipplets/video-item.tpl' with {product_modal_trigger: true, product_video: true} %}

					{# Hidden video inside modal #}
					{% include 'snipplets/video-item.tpl' with {product_modal: true, product_video: true} %}
				</div>
			</div>
		</div>
	{% endif %}
{% endif %}
