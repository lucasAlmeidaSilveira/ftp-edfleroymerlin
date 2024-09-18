<ul class="contact-info">
	{% if store.phone %}
		<li class="footer-menu-item">
			<span>SAC:</span>
			<a href="tel:{{ store.phone }}" class="{% if btn_link %}btn{% else %}contact{% endif %}-link">
				{% if with_icons %}
					{% include "snipplets/svg/phone.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
				{% endif %}
				{{ store.phone }} 
				<span style="display: inline-block; width: 16px;">
					{% include "snipplets/svg/whatsapp.tpl" with {'chat' : true} %}
				</span>
			</a>
		</li>
	{% endif %}
	{% if store.email %}
		<li class="footer-menu-item">
			<a href="mailto:{{ store.email }}" class="{% if btn_link %}btn{% else %}contact{% endif %}-link">
				{% if with_icons %}
					{% include "snipplets/svg/email.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
				{% endif %}
				{{ store.email }}
			</a>
		</li>
	{% endif %}
	{% if store.address and not is_order_cancellation %}
		<li class="footer-menu-item">
			{% if with_icons %}
				{% include "snipplets/svg/map-marker-alt.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
			{% endif %}
			{{ store.address }}
		</li>
	{% endif %}
	{% if store.blog %}
		<li class="footer-menu-item">
			<a target="_blank" href="{{ store.blog }}" class="{% if btn_link %}btn{% else %}contact{% endif %}-link">
				{% if with_icons %}
					{% include "snipplets/svg/comments.tpl" with {svg_custom_class: "icon-inline mr-1 font-body"} %}
				{% endif %}
				{{ "¡Visitá nuestro Blog!" | translate }}
			</a>
		</li>
	{% endif %}
</ul>