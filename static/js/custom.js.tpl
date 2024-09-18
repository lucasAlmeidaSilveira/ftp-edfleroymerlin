{% set variations_custom = params.homolog == 'true' or settings.variation_customize_enable %}

{% if template == 'product' and variations_custom %}

    var var_images = $('.js-product-variants').data('varimages');

    function setImage(option, v){
        if(option.length > 0){
            var image_url = v.url.replace(new RegExp('"', 'g'),'');
            if(option.find('img.btn-var-image').length > 0){
                option.find('img.btn-var-image').attr('src', image_url);
            }else{
                option.prepend('<img src=' + v.url + ' class="btn-var-image">');
            }
        }
    }

    function varImages(){
        $('.js-product-variants').append('<span class="js-var-images-overlay var-images-overlay"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin: auto; background: rgb(255, 255, 255); display: block; shape-rendering: auto;" width="45px" height="45px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid"><circle cx="50" cy="50" fill="none" stroke="#555555" stroke-width="6" r="38" stroke-dasharray="179.0707812546182 61.690260418206066"><animateTransform attributeName="transform" type="rotate" repeatCount="indefinite" dur="0.9174311926605504s" values="0 50 50;360 50 50" keyTimes="0;1"></animateTransform></circle></svg></span>');
        $.each(var_images, function(k, v){
            var variation = $('.js-btn-variation-container[data-variant-lower="' + v.variation + '"]');

            $.each(v.option.split(';'), function(k2, v2){
                var option = variation.find('.js-btn-variation[data-option-lower="' + v2.trim()  + '"]');
                    setImage(option, v);
            });

        });
    }

    // Atualiza a imagem da variação framecolor baseado na seleção de variationfinishing
    function updateFrameColorImage(finishing) {
        var frameColorImages = var_images.filter(function(image) {
            return image.variation === '{{ settings.variation_framecolor_name|trim|lower }}' && image.variation_custom === finishing.trim().toLowerCase();
        });

        if (frameColorImages.length > 0) {
            frameColorImages.forEach(function(v) {
                var variation = $('.js-btn-variation-container[data-variant-lower="' + v.variation + '"]');
                $.each(v.option.split(';'), function(k2, v2){
                    var option = variation.find('.js-btn-variation[data-option-lower="' + v2.trim() + '"]');
                    setImage(option, v);
                });
            });
        }
    }

    // Adiciona um evento de mudança aos selects de variationfinishing
    $('.js-variation-option').on('change', function() {
        var selectedFinishing = $(this).find('option:selected').text().toLowerCase();
        updateFrameColorImage(selectedFinishing);
    });

    varImages();

    $(document).on("click", ".js-btn-variation", function (e) {
        e.preventDefault();
        $this = $(this);
        $variation_container = $this.closest(".js-btn-variation-container");
        $variation_container.find(".js-btn-variation").removeClass("selected");
        $this.addClass("selected");
        
        
        var option_id = $this.data('option');
        $selected_option = $this.closest('.js-product-variants').find('.js-variation-option option').filter(function () {
            return this.value == option_id;
        });
        jQueryNuvem($selected_option[0]).prop('selected', true).trigger('change');

        // console.log($selected_option);

    });

    $.each($('.js-btn-variation-container'), function(k,v){
        var label = $(this).find('> .form-label');

            label.prepend(`<span class="index">${k+1}</span>`);
    });

    $('.box-info').on('mouseover', function(){
        $(this).addClass('show-tooltip');
        $('body').prepend('<span class="tooltip-overlay"></span>');
    });

    $('.box-info').on('mouseleave', function(){
        $('.box-info').removeClass('show-tooltip');
        $('.tooltip-overlay').remove();
    });

    // $('.tooltip-overlay').on('click', function(){
    //     $('.box-info').removeClass('show-tooltip');
    //     $('.tooltip-overlay').remove();
    // });

{% endif %}

{% if template == 'product' %}

    function check_variations_stock(){

        const varsLenght = $('.section-single-product .js-var-buttons').length;
        var option0_selected, option1_selected;

        $('.js-btn-variation').addClass('no-stock');

        $.each($('.js-var-buttons'), function(k,v){
            var btns = $(this).find('.js-btn-variation'),
                last = k + 1 == $('.js-var-buttons').length,
                has_stock = null;

            $.each(btns, function(k2, v2){
                var option = $(this).data('option');

                if(k == 0){
                    var has_stock = LS.variants.filter( (a) => a[`option0`] == option 
                                                                && (a.stock == null || a.stock > 0) 
                                    );

                        if($(this).hasClass('selected')){
                            option0_selected = option;
                        }
                }else if(k == 1){
                    var has_stock = LS.variants.filter( (a) => a[`option0`] == option0_selected
                                                                && a[`option1`] == option
                                                                && (a.stock == null || a.stock > 0) 
                                    );
                        if($(this).hasClass('selected')){
                            option1_selected = option;
                        }
                }else if(k == 2){
                    var has_stock = LS.variants.filter( (a) => a[`option0`] == option0_selected
                                                                && a[`option1`] == option1_selected
                                                                && a[`option2`] == option 
                                                                && (a.stock == null || a.stock > 0) 
                                    );
                }

                if(has_stock.length){
                    $(this).removeClass('no-stock');
                }
            });


            if(last){
                setTimeout(function(){
                    $('.js-var-images-overlay').remove();
                },500);
            }

        });

    }

    var loading = '<span class="js-var-images-overlay var-images-overlay"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="margin: auto; display: block; shape-rendering: auto; background-color:transparent; " width="45px" height="45px" viewBox="0 0 100 100" preserveAspectRatio="xMidYMid"><circle cx="50" cy="50" fill="none" stroke="#555555" stroke-width="6" r="38" stroke-dasharray="179.0707812546182 61.690260418206066"><animateTransform attributeName="transform" type="rotate" repeatCount="indefinite" dur="0.9174311926605504s" values="0 50 50;360 50 50" keyTimes="0;1"></animateTransform></circle></svg></span>';
        const firstLevelVarOnLoad = $('.js-variation-option option:selected')[0].value;

        setTimeout(function(){
            $('.section-single-product .js-var-buttons').find('.js-btn-variation[data-option="' + firstLevelVarOnLoad + '"]')[0].click();
        },500);

        $('.js-var-select').find('.js-variation-option').on('change', function(){
            $('.js-product-variants').append(loading);
            
            check_variations_stock();
        });

    // Product sticky image

    var head_height = $('.js-head-main').outerHeight()
        window_height = $(window).height(),
        offset = 100;

        $('.js-product-sticky-image').css({
            position: 'sticky',
            top: head_height
        });

        $('.js-product-slide-link').css({
            'padding-bottom': 0,
            'height': (window_height - head_height) * .9  
        })
{% endif %}