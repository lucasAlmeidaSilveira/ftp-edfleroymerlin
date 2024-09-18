{% set banner = banner | default(false) %}
{% set banner_promotional = banner_promotional | default(false) %}
{% set banner_news = banner_news | default(false) %}

{% if banner %}
    {% set section_banner = settings.banner %}
    {% set section_title = settings.banner_title %}
    {% set section_slider = settings.banner_slider %}
    {% set section_slider_auto_scroll = settings.banner_slider_autoscroll %}
    {% set section_slider_id = 'banners' %}
    {% set section_columns_mobile_2 = settings.banner_columns_mobile == 2 %}
    {% set section_columns_desktop_4 = settings.banner_columns_desktop == 4 %}
    {% set section_columns_desktop_3 = settings.banner_columns_desktop == 3 %}
    {% set section_columns_desktop_2 = settings.banner_columns_desktop == 2 %}
    {% set section_columns_desktop_1 = settings.banner_columns_desktop == 1 %}
    {% set section_same_size = settings.banner_same_size %}
    {% set section_text_outside = settings.banner_text_outside %}
    {% set section_without_margins = settings.banner_without_margins %}
{% endif %}
{% if banner_promotional %}
    {% set section_banner = settings.banner_promotional %}
    {% set section_title = settings.banner_promotional_title %}
    {% set section_slider = settings.banner_promotional_slider %}
    {% set section_slider_auto_scroll = settings.banner_promotional_slider_autoscroll %}
    {% set section_slider_id = 'banners-promotional' %}
    {% set section_columns_mobile_2 = settings.banner_promotional_columns_mobile == 2 %}
    {% set section_columns_desktop_4 = settings.banner_promotional_columns_desktop == 4 %}
    {% set section_columns_desktop_3 = settings.banner_promotional_columns_desktop == 3 %}
    {% set section_columns_desktop_2 = settings.banner_promotional_columns_desktop == 2 %}
    {% set section_columns_desktop_1 = settings.banner_promotional_columns_desktop == 1 %}
    {% set section_same_size = settings.banner_promotional_same_size %}
    {% set section_text_outside = settings.banner_promotional_text_outside %}
    {% set section_without_margins = settings.banner_promotional_without_margins %}
{% endif %}
{% if banner_news %}
    {% set section_banner = settings.banner_news %}
    {% set section_title = settings.banner_news_title %}
    {% set section_slider = settings.banner_news_slider %}
    {% set section_slider_auto_scroll = settings.banner_news_slider_autoscroll %}
    {% set section_slider_id = 'banners-news' %}
    {% set section_columns_mobile_2 = settings.banner_news_columns_mobile == 2 %}
    {% set section_columns_desktop_4 = settings.banner_news_columns_desktop == 4 %}
    {% set section_columns_desktop_3 = settings.banner_news_columns_desktop == 3 %}
    {% set section_columns_desktop_2 = settings.banner_news_columns_desktop == 2 %}
    {% set section_columns_desktop_1 = settings.banner_news_columns_desktop == 1 %}
    {% set section_same_size = settings.banner_news_same_size %}
    {% set section_text_outside = settings.banner_news_text_outside %}
    {% set section_without_margins = settings.banner_news_without_margins %}
{% endif %}

<div class="container">
    {% if section_title or section_slider and (section_banner and section_banner is not empty) %}
        <div class="row mb-3 pb-2">
            {% if section_title %}
                <div class="col">
                    <h2 class="h3 mb-0">{{ section_title }}</h2>
                </div>
            {% endif %}
            {% if section_slider and (section_banner and section_banner is not empty and not section_slider_auto_scroll) %}
                <div class="col text-right d-none d-md-block">
                    <div class="js-swiper-{{ section_slider_id }}-prev swiper-button-prev d-inline-block svg-circle svg-icon-text">{% include "snipplets/svg/chevron-left.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}</div>
                    <div class="js-swiper-{{ section_slider_id }}-next swiper-button-next d-inline-block svg-circle svg-icon-text ml-2">{% include "snipplets/svg/chevron-right.tpl" with {svg_custom_class: "icon-inline icon-lg"} %}</div>
                </div>
            {% endif %}
        </div>
    {% endif %}
{% if section_without_margins %}
</div>
<div class="container-fluid">
{% endif %}
    <div class="row">
        <div class="col-12{% if section_slider and not section_without_margins %} pr-0 pr-md-3{% elseif section_without_margins %} p-0{% endif %}">
            {% if section_slider %}
                <div class="js-swiper-{{ section_slider_id }} swiper-container {% if section_slider_auto_scroll %}swiper-auto-scroll{% endif %}">
                    <div class="swiper-wrapper">
            {% else %}
                <div class="row {% if section_without_margins %}no-gutters{% else %}{% endif %}">
            {% endif %}
            {% for slide in section_banner %}
                <div class="{% if section_slider %}swiper-slide slide-container {% if not section_without_margins %}pr-3 pr-md-0{% endif %}{% else %}col-grid {% if section_columns_mobile_2 %}col-6 {% endif %}{% if section_columns_desktop_4 %}col-md-3{% elseif section_columns_desktop_3 %}col-md-4{% elseif section_columns_desktop_2 %}col-md-6{% elseif section_columns_desktop_1 %}col-md-12{% endif %}{% endif %}" {% if not section_slider_auto_scroll %}data-transition="fade-in-up"{% endif %}>
                    {% set has_banner_text = slide.title or slide.description or slide.button %}
                    <div class="textbanner text-center{% if section_without_margins %} textbanner-no-border m-0{% endif %}">
                        {% if slide.link %}
                            <a href="{{ slide.link | setting_url }}" class="textbanner-link" aria-label="{{ 'Carrusel' | translate }} {{ loop.index }}">
                        {% endif %}
                        <div class="textbanner-image{% if not section_same_size %} p-0{% endif %}{% if has_banner_text and not section_text_outside %} overlay{% endif %}">
                            <img {% if slide.width and slide.height %} width="{{ slide.width }}" height="{{ slide.height }}" {% endif %} src="{% if not section_slider %}{{ 'images/empty-placeholder.png' | static_url }}{% endif %}{% if section_slider and section_slider_auto_scroll %}{{ slide.image | static_url | settings_image_url('tiny') }}{% endif %}" data-sizes="auto" data-expand="-10" data-srcset="{{ slide.image | static_url | settings_image_url('large') }} 480w, {{ slide.image | static_url | settings_image_url('huge') }} 640w, {{ slide.image | static_url | settings_image_url('original') }} 1024w, {{ slide.image | static_url | settings_image_url('1080p') }} 1920w" class="textbanner-image-effect {% if section_same_size %}textbanner-image-background{% else %}img-fluid d-block w-100{% endif %} lazyautosizes lazyload fade-in" {% if slide.title %}alt="{{ banner_title }}"{% else %}alt="{{ 'Banner de' | translate }} {{ store.name }}"{% endif %} />
                            <div class="placeholder-fade"></div>
                        {% if section_text_outside %}
                            </div>
                        {% endif %}
                        {% if not section_text_outside %}
                            </div>
                        {% endif %}
                        {% if slide.link %}
                        {% if slide.title %}
                            <h3 class="home-banner-category-name">{{ slide.title }}</h3>
                        {% endif %}
                            </a>
                        {% endif %}
                    </div>
                </div>
            {% endfor %}
            {% if section_slider %}
                    </div>
                </div>
            {% else %}
                </div>
            {% endif %}
        </div>
    </div>
</div>