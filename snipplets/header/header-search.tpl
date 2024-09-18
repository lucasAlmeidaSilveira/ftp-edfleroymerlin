<script>
    document.addEventListener('DOMContentLoaded', function() {
        var searchForm = document.querySelector('.js-search-form');
        var searchInput = document.getElementById('searchInput');
        var searchType = document.getElementById('searchType');

        searchForm.addEventListener('submit', function(e) {
            var searchValue = searchInput.value;
            var selectedType = searchType.value;

            // Adiciona "AP" apenas se "Código" estiver selecionado e o valor não começar com "AP"
            if (selectedType === 'code' && !searchValue.startsWith('AP')) {
                searchInput.value = 'AP' + searchValue;
            }

            // Se "Nome" estiver selecionado, não é necessário modificar o valor do input
            // A submissão continua sem alterações
        });
    });
</script>

<style>
    .search-group {
        display: flex;
        align-items: center;
        width: 100%;
    }

    .search-select {
        width: 30px; /* Largura do quadrado */
        height: 100%;
        -webkit-appearance: none; /* Remove o estilo padrão do select no Chrome e Safari */
        -moz-appearance: none; /* Remove o estilo padrão do select no Firefox */
        appearance: none; /* Remove o estilo padrão do select */
        background-color: white;
        border: none;
        border-radius: 0; /* Bordas quadradas */
        position: relative; /* Para posicionar a seta */
        cursor: pointer;
    }

    /* Adiciona a seta ao select */
    .search-select {
        background-image: url('data:image/svg+xml;charset=US-ASCII,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="black"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" /></svg>');
        background-repeat: no-repeat;
        background-position: center right 5px; /* Posiciona a seta no centro à direita */
        background-size: 20px; /* Tamanho da seta */
    }

    .search-input {
        flex-grow: 1;
    }

    .search-input-submit {
        background: none;
        border: none;
        cursor: pointer;
    }

</style>

<form class="js-search-container js-search-form search-container {% if floating_search %}search-container-floating d-none d-md-block{% endif %}" action="{{ store.search_url }}" method="get">
    <div class="form-group m-0">
        <input class="js-search-input form-control form-control-rounded search-input {% if floating_search %}pr-5{% endif %}" autocomplete="off" type="search" name="q" placeholder="{{ '¿Qué estás buscando?' | translate }}" aria-label="{{ '¿Qué estás buscando?' | translate }}" />
        <button type="submit" class="search-input-submit" value="{{ 'Buscar' | translate }}" aria-label="{{ 'Buscar' | translate }}">
            {% include "snipplets/svg/search.tpl" with {svg_custom_class: "icon-inline icon-lg svg-icon-text"} %}
        </button>
    </div>
</form>
<div class="js-search-suggest search-suggest w-md-100 mt-1 mt-md-2" style="display: none;">
    {# AJAX container for search suggestions #}
</div>
