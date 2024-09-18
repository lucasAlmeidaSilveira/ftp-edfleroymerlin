{% set featured_products = featured_products | default(false) %}

{% if featured_products %}
{% set sections_products = sections.primary.products %}
{% set section_name = 'primary' %}
{% set sections_horizontal_item = false %}
{% set section_title = settings.featured_products_title %}
{% set section_link = settings.featured_products_link %}
{% endif %}

	{% if settings.is_category_featured %}

		<section id="category-featured" class="flex container"> <div class="box-video order-image">
			{% if settings.urlvideo_category_section %}
				<video id="main-video" disablepictureinpicture="" preload="auto" autoplay="true" width="100%" height="100%" playsinline="true" loop muted>
					<source src={{ settings.urlvideo_category_section }} type="video/mp4">
				</video>
			{% endif %}
		</div>
		{% if sections_products %}
			<div class="row mb-3 pb-2 align-items-center">
				<div class="col">
					<h3 class="mb-1">{{ section_title }}</h3>
				</div>
				<div class="col-auto text-right d-none d-md-block">
					<div class="js-swiper-related-prev swiper-button-prev d-inline-block svg-circle svg-icon-text">{% include "snipplets/svg/chevron-left.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}</div>
					<div class="js-swiper-related-next swiper-button-next d-inline-block svg-circle svg-icon-text ml-2">{% include "snipplets/svg/chevron-right.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 pr-0 pr-md-3">
					<div class="js-swiper-related swiper-container" data-related-products-amount="{{ sections_products | length }}">
						<div class="swiper-wrapper">
							{% for product in sections_products %}
								{% include 'snipplets/grid/item-home.tpl' with {'slide_item': true} %}
							{% endfor %}
						</div>
					</div>
				</div>
			</div>
		{% else %}
			<div class="body-right flex direction-column gap-32">
				<div class="body-info flex direction-column gap-16">
					<div class="content flex direction-column gap-8">
						<div class="box-title flex direction-column gap-2">
							<small class="subtitle-category">{{ settings.subtitle_category_section }}</small>
							<h2 class="title-category">{{ settings.title_category_section }}</h2>
						</div>
						<p class="text-category">{{ settings.text_category_section }}</p>
					</div>
					<a class="link-category" href={{ settings.link_category_section }}>{{ settings.text_link_category_section }}</a>
				</div>
			</div>
		{% endif %}

	</section>

{% endif %}
