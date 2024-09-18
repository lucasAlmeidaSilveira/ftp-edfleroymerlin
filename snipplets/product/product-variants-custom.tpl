{% set var_images = [] %}
{% set var_colors = [] %}

{% for item in settings.variationsize %}
	{% set image_url = item.image | static_url %}
	{% set options = item.description|split(':') %}
	{% set var_images = var_images|merge([{
		option: options[0]|trim|lower,
		option2: options[1]|trim|lower,
		url: '"' ~ image_url ~ '"',
		variation: settings.variation_size_name|trim|lower
	}])  %}
{% endfor %}

{% for item in settings.variationfinishing %}
	{% set image_url = item.image | static_url %}
	{% set options = item.description|split(':') %}
	{% set var_images = var_images|merge([{
		option: options[0]|trim|lower,
		option2: options[1]|trim|lower,
		url: '"' ~ image_url ~ '"',
		variation: settings.variation_finishing_name|trim|lower
	}])  %}
{% endfor %}

{% for item in settings.variationframecolor %}
	{% set image_url = item.image | static_url %}
	{% set options = item.description|split(':') %}
	{% set option_custom = item.title|split(':') %}
	{% set var_images = var_images|merge([{
		option: options[0]|trim|lower,
		option2: options[1]|trim|lower,
		url: '"' ~ image_url ~ '"',
		variation: settings.variation_framecolor_name|trim|lower,
		variation_custom: option_custom[0]|trim|lower
	}])  %}
{% endfor %}

{% for color in settings.variation_framecolor_colors|split('\r\n') %}
	{% set color_array = color|split(':') %}

	{% set var_colors = var_colors|merge([{
            color: color_array[0]|trim,
            hexa: color_array[1]|trim
        }]) %}
{% endfor %}

<div class="js-product-variants position-relative {% if quickshop %}js-product-quickshop-variants{% endif %} form-row mb-2" data-varimages="{{ var_images | json_encode }}" data-varcolors="{{ var_colors | json_encode }}">
	{% set has_size_variations = false %}
	{% for variation in product.variations %}

		<div class="js-product-variants-group js-var-select {% if variation.name in ['Color', 'Cor'] %}js-color-variants-container{% endif %} {% if quickshop %}col-12 {% else %} col-12 {% if loop.length == 3 %} col-md-4 {% else %} col-md-6{% endif %}{% endif %}" style="display:none;">
			{% if quickshop %}
				{% embed "snipplets/forms/form-select.tpl" with{select_label: true, select_label_name: '' ~ variation.name ~ '', select_for: 'variation_' ~ loop.index , select_id: 'variation_' ~ loop.index, select_name: 'variation' ~ '[' ~ variation.id ~ ']', select_group_custom_class: 'form-group-small mb-2', select_custom_class: 'js-variation-option js-refresh-installment-data form-control-small', select_label_custom_class:'mb-1'} %}
					{% block select_options %}
						{% for option in variation.options %}
							<option value="{{ option.id }}" data-value-lower="{{ option.id | lower }}" {% if product.default_options[variation.id] == option.id %} selected="selected" {% endif %}>{{ option.name }}</option>
						{% endfor %}
					{% endblock select_options%}
				{% endembed %}
			{% else %}
				{% embed "snipplets/forms/form-select.tpl" with{select_label: true, select_label_name: '' ~ variation.name ~ '', select_for: 'variation_' ~ loop.index , select_id: 'variation_' ~ loop.index, select_name: 'variation' ~ '[' ~ variation.id ~ ']', select_custom_class: 'js-variation-option js-refresh-installment-data'} %}
					{% block select_options %}
						{% for option in variation.options %}
							<option value="{{ option.id }}" data-value-lower="{{ option.id | lower }}" {% if product.default_options[variation.id] == option.id %} selected="selected" {% endif %}>{{ option.name }}</option>
						{% endfor %}
					{% endblock select_options%}
				{% endembed %}
			{% endif %}
		</div>
		{% if variation.name in ['Talle', 'Talla', 'Tamanho', 'Size'] %}
			{% set has_size_variations = true %}
		{% endif %}


	{% endfor %}
	{% if show_size_guide and settings.size_guide_url and has_size_variations %}
		{% set has_size_guide_page_finded = false %}
		{% set size_guide_url_handle = settings.size_guide_url | trim('/') | split('/') | last %}

		{% for page in pages if page.handle == size_guide_url_handle and not has_size_guide_page_finded %}
			{% set has_size_guide_page_finded = true %}
			{% if has_size_guide_page_finded %}
				<a data-toggle="#size-guide-modal" data-modal-url="modal-fullscreen-size-guide" class="js-modal-open js-fullscreen-modal-open btn-link btn-link-primary font-small col-12 mb-2">
					{% include "snipplets/svg/arrows-h.tpl" with {svg_custom_class: "icon-inline icon-lg svg-icon-primary mr-1"} %}
					{{ 'Guía de talles' | translate }}
				</a>
				{% embed "snipplets/modal.tpl" with{modal_id: 'size-guide-modal',modal_class: 'bottom-md', modal_position: 'right', modal_transition: 'slide', modal_header: true, modal_footer: true, modal_width: 'centered', modal_mobile_full_screen: 'true'} %}
					{% block modal_head %}
						{{ 'Guía de talles' | translate }}
					{% endblock %}
					{% block modal_body %}
						<div class="user-content">
							{{ page.content }}
						</div>
					{% endblock %}
				{% endembed %}
			{% endif %}
		{% endfor %}
	{% endif %}

	{% set var_level = 0 %}
	{% for variation in product.variations %}
		{% set box_info = false %}
		{% set is_color = false %}

		{% if variation.name|lower == settings.variation_size_name|lower %}
			{% set box_info = settings.variation_size_info %}
		{% elseif variation.name|lower == settings.variation_finishing_name|lower %}
			{% set box_info = settings.variation_finishing_info %}
		{% elseif variation.name|lower == settings.variation_framecolor_name|lower %}
			{% set box_info = settings.variation_framecolor_info %}
			{% set is_color = true %}
		{% endif %}

		<div class="col-12 js-var-buttons" data-variant="{{ variation.name }}">
			<div data-variant="{{ variation.name }}" data-variant-lower="{{ variation.name | lower }}" class="js-btn-variation-container btn-variation-container mb-3 text-center text-md-left" data-variant="{{ variation.name }}" data-variation-id="{{ var_level }}">
				<label for="variation_{{loop.index}}" class="form-label mb-4">
					{% if variation.name == "Selecione o tamanho" %}
						Selecione o tamanho de cada quadro
					{% else %}
						{{variation.name}}
					{% endif %}
					{% if box_info %}
						<span class="box-info">
							<i>i</i>
							<span class="box-info-tooltip">
								{{ box_info | raw }}
							</span>
						</span>
					{% endif %}

				</label>
				<div class="row justify-content-center justify-content-md-start no-gutters">

					<div class="col-12">
						<div class="btn-var-wrapper">
							{% for option in variation.options %}
								{% if option.name != 'Caixa' and option.name != 'Com vidro' %}
									<div class="btn-var-item">
										<a data-option="{{ option.id }}" data-option-lower="{{ option.id | lower }}" class="js-btn-variation btn btn-var mr-2 mb-2 {{ variation.name|lower|replace(' ', '-') }} {% if product.default_options[variation.id] == option.id %} selected {% endif %}" data-name="{{ option.name }}">
											{% if option.custom_data or is_color %}
												{% set option_color = '' %}
												{% for color in var_colors if color.color|lower == option.name|lower %}
													{% set option_color = color.hexa %}
												{% else %}
													{% set option_color = option.custom_data %}
												{% endfor %}
												<span class="btn-color-icon" style="background: {{ option_color }}"></span>
											{% endif %}
											<div class="px-1 py-2">
												{{ option.name }}
											</div>
										</a>
									</div>
								{% endif %}
							{% endfor %}
						</div>
					</div>

				</div>
			</div>
		</div>

		{% set var_level = var_level + 1 %}
	{% endfor %}

</div>
