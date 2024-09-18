{% if store.whatsapp %}
    <a href="{{ store.whatsapp }}?text=Oi%2C Arte própria%2C possuo uma dúvida%2C pode me ajudar%3F&?utm_source=site" target="_blank" class="js-btn-fixed-bottom btn-whatsapp" aria-label="{{ 'Comunicate por WhatsApp' | translate }}">
        {% include "snipplets/svg/whatsapp.tpl" with {'chat' : true} %}
    </a>
{% endif %}


