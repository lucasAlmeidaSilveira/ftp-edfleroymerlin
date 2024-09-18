{% if products and pages.is_last %}
	<div class="last-page" style="display:none;"></div>
{% endif %}
{% for product in products %}   
    {% if "Quadro Decorativo" in product.name %}
        {% include 'snipplets/grid/item.tpl' %}
    {% else %}
        {% include 'snipplets/grid/item-home.tpl' %}
	{% endif %}
{% endfor %}