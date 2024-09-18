{% embed "snipplets/page-header.tpl" with {container: true} %}
	{% block page_header_text %}{{ page.name }}{% endblock page_header_text %}
{% endembed %}

{# Institutional page  #}

<section class="user-content pb-5">

	<div class="container">
		<div class="row">
			<div class="col-md-8">
			  {% if page.name == 'Nossas Lojas' %}
					{% include "templates/modified/page/nossas_lojas.tpl" %}
				{% endif %}
      </div>
			
			{{ page.content }}
			</div>
		</div>
	</div>

</section>
