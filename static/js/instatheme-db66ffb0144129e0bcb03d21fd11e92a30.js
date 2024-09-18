window.tiendaNubeInstaTheme = (function(jQueryNuvem) {
	return {
		waitFor: function() {
			return [];
		},
		placeholders: function() {
			return [
				{
					placeholder: '.js-home-slider-placeholder',
					content: '.js-home-slider-top',
					contentReady: function() {
						return $(this).find('img').length > 0;
					},
				},
				{
					placeholder: '.js-category-banner-placeholder',
					content: '.js-category-banner-top',
					contentReady: function() {
						return $(this).find('img').length > 0;
					},
				},
				{
					placeholder: '.js-promotional-banner-placeholder',
					content: '.js-promotional-banner-top',
					contentReady: function() {
						return $(this).find('img').length > 0;
					},
				},
				{
					placeholder: '.js-news-banner-placeholder',
					content: '.js-news-banner-top',
					contentReady: function() {
						return $(this).find('img').length > 0;
					},
				},
			];
		},
		handlers: function(instaElements) {
			const handlers = {
				logo: new instaElements.Logo({
					$storeName: jQueryNuvem('#no-logo'),
					$logo: jQueryNuvem('#logo')
				}),
				// ----- Section order -----
				home_order_position: new instaElements.Sections({
					container: '.js-home-sections-container',
					data_store: {
						'slider': 'home-slider',
						'main_categories': 'home-categories-featured',
						'products': 'home-products-featured',
						'welcome': 'home-welcome-message',
						'informatives': 'banner-services',
						'categories': 'home-banner-categories',
						'promotional': 'home-banner-promotional',
						'news_banners': 'home-banner-news',
						'new': 'home-products-new',
						'video': 'home-video',
						'sale': 'home-products-sale',
						'instafeed': 'home-instagram-feed',
						'main_product': 'home-product-main',
						'brands': 'home-brands',
						'testimonials': 'home-testimonials',
						'newsletter' : 'home-newsletter',
					}
				}),
			};

			// ----------------------------------- Slider -----------------------------------

			// Build the html for a slide given the data from the settings editor
			function buildHomeSlideDom(aSlide, imageClasses) {
				return '<div class="swiper-slide slide-container">' +
							(aSlide.link ? '<a href="' + aSlide.link + '">' : '' ) +
								'<img src="' + aSlide.src + '" class="js-slider-image slider-image ' + imageClasses + '"/>' +
								'<div class="container position-relative">' +
									'<div class="swiper-text swiper-' + aSlide.color + '">' +
										(aSlide.title ? '<div class="h1-huge mb-3">' + aSlide.title + '</div>' : '' ) +
										(aSlide.description ? '<p class="mb-3 pl-1">' + aSlide.description + '</p>' : '' ) +
										(aSlide.button && aSlide.link ? '<div class="btn btn-default d-inline-block">' + aSlide.button + '</div>' : '' ) +
									'</div>' +
								'</div>' +
								(aSlide.title || aSlide.description || aSlide.button && aSlide.link ? '<div class="swiper-overlay"></div>' : '' ) +
							(aSlide.link ? '</a>' : '' ) +
						'</div>'
			}

			// Update slider animation
			handlers.slider_animation = new instaElements.Lambda(function(sliderAnimation){
				const $swiperImage = $('.js-home-slider, .js-home-slider-mobile').find('.js-slider-image');
				const $homeSlider = $('.js-home-slider, .js-home-slider-mobile');

				if (sliderAnimation) {
					$homeSlider.attr('data-animation', 'true');
					$swiperImage.addClass('slider-image-animation');
				} else {
					$homeSlider.attr('data-animation', 'false');
					$swiperImage.removeClass('slider-image-animation');
				}
			});

			// Update main slider
			handlers.slider = new instaElements.Lambda(function(slides){
				if (!window.homeSwiper) {
					return;
				}

				// Update animation classes
				const sliderAnimation = $('.js-home-slider').attr('data-animation');
				const imageClasses = sliderAnimation == 'true' ? 'slider-image-animation' : '';

				window.homeSwiper.removeAllSlides();
				slides.forEach(function(aSlide){
					window.homeSwiper.appendSlide(buildHomeSlideDom(aSlide, imageClasses));
				});
				window.homeSwiper.update();
			});

			// Update mobile slider
			handlers.slider_mobile = new instaElements.Lambda(function(slides){
				// This slider is not included in the html if `toggle_slider_mobile` is not set.
				// The second condition could be removed if live preview for this checkbox is implemented but changing the viewport size forces a refresh, so it's not really necessary.
				if (!window.homeMobileSwiper || !window.homeMobileSwiper.slides) {
					return;
				}

				// Update animation classes
				const sliderAnimation = $('.js-home-slider-mobile').attr('data-animation');
				const imageClasses = sliderAnimation == 'true' ? 'slider-image-animation' : '';

				window.homeMobileSwiper.removeAllSlides();
				slides.forEach(function(aSlide){
					window.homeMobileSwiper.appendSlide(buildHomeSlideDom(aSlide, imageClasses));
				});
				window.homeMobileSwiper.update();
			});

			// ----------------------------------- Main Banners -----------------------------------

			// Build the html for a slide given the data from the settings editor
			function buildHomeBannerDom(aSlide, bannerClasses, textBannerClasses, columnClasses, textClasses, imageContainerClasses, imageClasses) {

				return '<div class="js-banner ' + bannerClasses + ' ' + columnClasses + '">' +
						'<div class="js-textbanner textbanner text-center ' + textBannerClasses + '">' +
							(aSlide.link ? '<a href="' + aSlide.link + '">' : '' ) +
								'<div class="js-textbanner-image-container textbanner-image ' + imageContainerClasses + '">' +
									'<img src="' + aSlide.src + '" class="js-textbanner-image textbanner-image-effect ' + imageClasses + '">' +
								'</div>' +
								(aSlide.title || aSlide.description || aSlide.button ? '<div class="js-textbanner-text textbanner-text ' + textClasses + '">' : '') +
									(aSlide.title ? '<div class="h1 mb-0">' + aSlide.title + '</div>' : '' ) +
									(aSlide.description ? '<div class="textbanner-paragraph">' + aSlide.description + '</div>' : '' ) +
									(aSlide.button && aSlide.link ? '<div class="btn btn-secondary btn-medium d-inline-block mt-2">' + aSlide.button + '</div>' : '' ) +
								(aSlide.title || aSlide.description || aSlide.button ? '</div>' : '') +
							(aSlide.link ? '</a>' : '' ) +
						'</div>' +
					'</div>'
			}

			['banner', 'banner_promotional', 'banner_news'].forEach(setting => {

				const bannerName = setting.replace('_', '-');
				const bannerPluralName = 
					setting == 'banner' ? 'banners' : 
					setting == 'banner_promotional' ? 'banners-promotional' : 
					setting == 'banner_news' ? 'banners-news' :
					null;
				const $bannerMainContainer = $(`.js-home-${bannerName}`);
				const $bannerMainItem = $bannerMainContainer.find('.js-banner');
				const bannerSwiper = 
					setting == 'banner' ? 'homeBannerSwiper' : 
					setting == 'banner_promotional' ? 'homeBannerPromotionalSwiper' : 
					setting == 'banner_news' ? 'homeBannerNewsSwiper' :
					null;
				const bannerFormat = $bannerMainContainer.attr('data-format');

				const desktopColumns = $bannerMainContainer.attr('data-desktop-columns');
				const mobileColumns = $bannerMainContainer.attr('data-mobile-columns');

				// Update section title
				handlers[`${setting}_title`] = new instaElements.Text({
					element: `.js-${bannerPluralName}-title`,
					show: function(){
						$(this).show();
					},
					hide: function(){
						$(this).hide();
					},
				})

				// Update banner format
				handlers[`${setting}_slider`] = new instaElements.Lambda(function(bannerSlider){
					if (bannerSlider) {
						$bannerMainContainer.attr('data-format', 'slider');
					} else {
						$bannerMainContainer.attr('data-format', 'grid');
					}
				});

				// Update banners content
				handlers[`${setting}`] = new instaElements.Lambda(function(slides){

					// Update text classes
					const textPosition = $bannerMainContainer.attr('data-text');
					const textClasses = textPosition == 'above' ? 'over-image' : '';

					// Update margin classes
					const bannerMargin = $bannerMainContainer.attr('data-margin');
					const textBannerClasses = bannerMargin == 'false' ? 'textbanner-no-border m-0' : '';

					// Update image classes
					const imageSize = $bannerMainContainer.attr('data-image');
					const imageClasses = imageSize == 'same' ? 'textbanner-image-background' : 'img-fluid d-block w-100';
					const imageContainerClasses = imageSize == 'original' ? 'p-0' : '';

					if (bannerFormat == 'slider') {
						// Update banner classes
						const bannerClasses = 'swiper-slide slide-container';
						// Avoids columnsClasses on slider
						const columnClasses = '';

						if (!window[bannerSwiper]) {
							return;
						}

						window[bannerSwiper].removeAllSlides();
						slides.forEach(function(aSlide){
							window[bannerSwiper].appendSlide(buildHomeBannerDom(aSlide, bannerClasses, textBannerClasses, columnClasses, textClasses, imageContainerClasses, imageClasses));
						});
						window[bannerSwiper].update();
					} else {
						// Update banner classes
						const bannerClasses = 'col-grid';
						// Update column classes
						const desktopColumnsClasses = $bannerMainContainer.attr('data-grid-classes');
						const mobileColumns = $bannerMainContainer.attr('data-mobile-columns');
						const mobileColumnsClasses = mobileColumns == '2' ? 'col-6' : '';
						const columnClasses = desktopColumnsClasses + ' ' + mobileColumnsClasses;

						$bannerMainContainer.find('.js-banner').remove();
						slides.forEach(function(aSlide){
							$bannerMainContainer.find('.js-banner-row').append(buildHomeBannerDom(aSlide, bannerClasses, textBannerClasses, columnClasses, textClasses, imageContainerClasses, imageClasses));
						});
					}
				});

				// Update banner text position
				handlers[`${setting}_text_outside`] = new instaElements.Lambda(function(hasOutsideText){
					const $bannerText = $bannerMainContainer.find('.js-textbanner-text');

					if (hasOutsideText) {
						$bannerMainContainer.attr('data-text', 'outside');
						$bannerText.removeClass('over-image');
					} else {
						$bannerMainContainer.attr('data-text', 'above');
						$bannerText.addClass('over-image');
					}
				});

				// Update banner size
				handlers[`${setting}_same_size`] = new instaElements.Lambda(function(bannerSize){
					const $bannerImageContainer = $bannerMainContainer.find('.js-textbanner-image-container');
					const $bannerImage = $bannerMainContainer.find('.js-textbanner-image');

					if (bannerSize) {
						$bannerMainContainer.attr('data-image', 'same');
						$bannerImageContainer.removeClass('p-0');
						$bannerImage.removeClass('img-fluid d-block w-100').addClass('textbanner-image-background');
					} else {
						$bannerMainContainer.attr('data-image', 'original');
						$bannerImageContainer.addClass('p-0');
						$bannerImage.removeClass('textbanner-image-background').addClass('img-fluid d-block w-100');
					}
				});

				// Update banner margins
				handlers[`${setting}_without_margins`] = new instaElements.Lambda(function(bannerMargin){
					const $bannerContainer = $bannerMainContainer.find('.js-banner-container:not(.js-banner-container-without-margin)');
					const $bannerCol = $bannerMainContainer.find('.js-banner-col');
					const $bannerRow = $bannerContainer.find('.js-banner-row:not(.swiper-wrapper)');
					const $bannerMainTitle = $bannerContainer.find('.js-section-title');
					const $bannerItemContainer = $bannerMainContainer.find('.js-banner');
					const $bannerItem = $bannerItemContainer.find('.js-textbanner');
					const $bannerItemSlide = $bannerMainContainer.find('.js-banner.swiper-slide');
					const bannerFormat = $bannerMainContainer.attr('data-format');

					if (bannerMargin) {
						$bannerMainContainer.attr('data-margin', 'false');
						$bannerContainer.removeClass('container').addClass('container-fluid p-0');
						$bannerRow.removeClass('row-grid').addClass('no-gutters');
						$bannerMainTitle.addClass('container');
						$bannerItemContainer.addClass('m-0');
						$bannerItem.addClass('textbanner-no-border m-0');
						$bannerItemSlide.addClass('p-0');
						$bannerCol.addClass('p-0');
						if (bannerFormat == 'slider') {
							window[bannerSwiper].params.spaceBetween = 0;
						}
					} else {
						$bannerMainContainer.attr('data-margin', 'true');
						$bannerContainer.removeClass('container-fluid p-0').addClass('container');
						$bannerRow.removeClass('no-gutters').addClass('row-grid');
						$bannerMainTitle.removeClass('container');
						$bannerItemContainer.removeClass('m-0');
						$bannerItem.removeClass('textbanner-no-border m-0');
						$bannerItemSlide.removeClass('p-0');
						$bannerCol.removeClass('p-0');
						if (bannerFormat == 'slider') {
							window[bannerSwiper].params.spaceBetween = 20;
						}
					}

					// Updates slider width to avoids swipes inconsistency
					if (bannerFormat == 'slider') {
						window[bannerSwiper].update();
					}

				});

				// Update quantity desktop banners
				handlers[`${setting}_columns_desktop`] = new instaElements.Lambda(function(bannerQuantity){
					const $bannerItem = $bannerMainContainer.find('.js-banner');
					const bannerFormat = $bannerMainContainer.attr('data-format');

					$bannerItem.removeClass('col-md-3 col-md-4 col-md-6 col-md-12');
					if (bannerQuantity == 4) {
						$bannerMainContainer.attr('data-desktop-columns', bannerQuantity);
						$bannerMainContainer.attr('data-grid-classes', 'col-md-3');

						if (bannerFormat == 'grid') {
							$bannerItem.addClass('col-md-3');
						} else {
							if (window.innerWidth > 768) {
								window[bannerSwiper].params.slidesPerView = 4;
								window[bannerSwiper].update();
							}
						}
					} else if (bannerQuantity == 3) {
						$bannerMainContainer.attr('data-desktop-columns', bannerQuantity);
						$bannerMainContainer.attr('data-grid-classes', 'col-md-4');

						if (bannerFormat == 'grid') {
							$bannerItem.addClass('col-md-4');
						} else {
							if (window.innerWidth > 768) {
								window[bannerSwiper].params.slidesPerView = 3;
								window[bannerSwiper].update();
							}
						}
					} else if (bannerQuantity == 2) {
						$bannerMainContainer.attr('data-desktop-columns', bannerQuantity);
						$bannerMainContainer.attr('data-grid-classes', 'col-md-6');

						if (bannerFormat == 'grid') {
							$bannerItem.addClass('col-md-6');
						} else {
							if (window.innerWidth > 768) {
								window[bannerSwiper].params.slidesPerView = 2;
								window[bannerSwiper].update();
							}
						}
					} else if (bannerQuantity == 1) {
						$bannerMainContainer.attr('data-desktop-columns', bannerQuantity);
						$bannerMainContainer.attr('data-grid-classes', 'col-md-12');

						if (bannerFormat == 'grid') {
							$bannerItem.addClass('col-md-12');
						} else {
							if (window.innerWidth > 768) {
								window[bannerSwiper].params.slidesPerView = 1;
								window[bannerSwiper].update();
							}
						}
					}
				});

				// Update quantity mobile banners
				handlers[`${setting}_columns_mobile`] = new instaElements.Lambda(function(bannerQuantity){
					const $bannerItem = $bannerMainContainer.find('.js-banner');
					const bannerFormat = $bannerMainContainer.attr('data-format');

					$bannerItem.removeClass('col-6');
					if (bannerQuantity == 2) {
						$bannerMainContainer.attr('data-mobile-columns', bannerQuantity);
						if (bannerFormat == 'grid') {
							$bannerItem.addClass('col-6');
						} else {
							if (window.innerWidth < 768) {
								window[bannerSwiper].params.slidesPerView = 2.25;
								window[bannerSwiper].update();
							}
						}
					} else if (bannerQuantity == 1) {
						$bannerMainContainer.attr('data-mobile-columns', bannerQuantity);
						if (bannerFormat == 'slider') {
							if (window.innerWidth < 768) {
								window[bannerSwiper].params.slidesPerView = 1.15;
								window[bannerSwiper].update();
							}
						}
					}
				});

				// Toggle grid and slider view
				handlers[`${setting}_slider`] = new instaElements.Lambda(function(bannerSlider){

					const $sectionCol = $bannerMainContainer.find('.js-section-col');
					const $bannerCol = $bannerMainContainer.find('.js-banner-col');
					const $bannerRow = $bannerMainContainer.find('.js-banner-row');
					const $swiperControls = $bannerMainContainer.find('.js-swiper-controls');

					const bannerMargin = $bannerMainContainer.attr('data-margin');

					if (bannerSlider) {
						$bannerMainContainer.attr('data-format', 'slider');
						if (bannerMargin == 'true') {
							$bannerCol.addClass('pr-0 pr-md-3');
						}
					} else {
						$bannerMainContainer.attr('data-format', 'grid');
						$bannerCol.removeClass('pr-0 pr-md-3');
					}

					const bannerFormat = $bannerMainContainer.attr('data-format');

					const toSlider = bannerFormat == "slider";

					const $bannerItem = $bannerMainContainer.find('.js-banner');

					if ($bannerMainContainer.data('format') == bannerFormat) {
						// Nothing to do
						return;
					}

					// From grid to slider
					if (toSlider) {

						const swiperDesktopColumns = $bannerMainContainer.attr('data-desktop-columns');
						const swiperMobileColumns = ($bannerMainContainer.attr('data-mobile-columns') == 2) ? 2.25 : 1.15;
						const bannerSpaceBetween = bannerMargin == 'false' ? 0 : 20;

						$bannerItem.removeClass('col-grid col-6 col-md-3 col-md-4 col-md-6 col-md-12');

						// Row to swiper wrapper
						$bannerRow.removeClass('row row-grid').addClass('swiper-wrapper');

						// Wrap everything inside a swiper container
						$bannerRow.wrapAll(`<div class="js-swiper-${bannerPluralName} swiper-container"></div>`);

						// Replace each banner into a slide
						$bannerItem.addClass('swiper-slide slide-container p-0');

						// Add previous and next controls
						$sectionCol.after(`
							<div class="js-swiper-controls col text-right d-none d-md-block">
								<div class="js-swiper-${bannerPluralName}-prev swiper-button-prev d-inline-block svg-circle svg-icon-text">
									<svg class="icon-inline icon-lg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path d="M241,451.75l-18.11,18.1L9.07,256,222.92,42.15,241,60.25,45.28,256Z"/></svg>
								</div>
								<div class="js-swiper-${bannerPluralName}-next swiper-button-next d-inline-block svg-circle svg-icon-text ml-2">
									<svg class="icon-inline icon-lg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512"><path d="M210.72,256,15,60.25l18.11-18.1L246.93,256,33.08,469.85,15,451.75Z"/></svg>
								</div>
							</div>
						`);

						// Initialize swiper
						createSwiper(`.js-swiper-${bannerPluralName}`, {
							watchOverflow: true,
							centerInsufficientSlides: true,
							threshold: 5,
							watchSlideProgress: true,
							watchSlidesVisibility: true,
							slideVisibleClass: 'js-swiper-slide-visible',
							spaceBetween: bannerSpaceBetween,
							navigation: {
								nextEl: `.js-swiper-${bannerPluralName}-next`,
								prevEl: `.js-swiper-${bannerPluralName}-prev`
							},
							slidesPerView: swiperMobileColumns,
							breakpoints: {
								768: {
									slidesPerView: swiperDesktopColumns,
								}
							}
						},
						function(swiperInstance) {
							window[bannerSwiper] = swiperInstance;
						});

						// Update banners build
						handlers[`${setting}`] = new instaElements.Lambda(function(slides){
							// Update banner classes
							const bannerClasses = 'swiper-slide slide-container';
							// Avoids columnsClasses on slider
							const columnClasses = '';

							// Update margin classes
							const bannerMargin = $bannerMainContainer.attr('data-margin');
							const textBannerClasses = bannerMargin == 'false' ? 'textbanner-no-border m-0' : '';

							// Update text classes
							const textPosition = $bannerMainContainer.attr('data-text');
							const textClasses = textPosition == 'above' ? 'over-image' : '';

							// Update image classes
							const imageSize = $bannerMainContainer.attr('data-image');
							const imageClasses = imageSize == 'same' ? 'textbanner-image-background' : 'img-fluid d-block w-100';
							const imageContainerClasses = imageSize == 'original' ? 'p-0' : '';

							window[bannerSwiper].removeAllSlides();
							slides.forEach(function(aSlide){
								window[bannerSwiper].appendSlide(buildHomeBannerDom(aSlide, bannerClasses, textBannerClasses, columnClasses, textClasses, imageContainerClasses, imageClasses));
							});
						});

					// From slider to grid
					} else {
						const desktopColumnsClasses = $bannerMainContainer.attr('data-grid-classes');
						const mobileColumns = $bannerMainContainer.attr('data-mobile-columns');
						const mobileColumnsClasses = mobileColumns == '2' ? 'col-6' : '';
						const columnClasses = desktopColumnsClasses + ' ' + mobileColumnsClasses;
						const bannerClasses = 'col-grid ' + columnClasses;

						// Remove duplicate slides and slider controls
						$bannerMainContainer.find('.swiper-slide-duplicate').remove()
						$swiperControls.remove()

						// Swiper wrapper to row
						$bannerRow.removeClass('swiper-wrapper').addClass('row row-grid').removeAttr('style');

						// Undo all slider wrappers and restore original classes
						$bannerRow.unwrap();
						$bannerItem
							.removeClass('js-swiper-slide-visible swiper-slide-active swiper-slide-next swiper-slide-prev swiper-slide slide-container p-0 pr-3 pr-md-0')
							.addClass(bannerClasses)
							.removeAttr('style');

						// Update banners build
						handlers[`${setting}`] = new instaElements.Lambda(function(slides){
							// Update column classes
							const desktopColumnsClasses = $bannerMainContainer.attr('data-grid-classes');
							const mobileColumns = $bannerMainContainer.attr('data-mobile-columns');
							const mobileColumnsClasses = mobileColumns == '2' ? 'col-6' : '';
							const columnClasses = desktopColumnsClasses + ' ' + mobileColumnsClasses;
							// Update banner classes
							const bannerClasses = 'swiper-slide slide-container';

							// Update margin classes
							const bannerMargin = $bannerMainContainer.attr('data-margin');
							const textBannerClasses = bannerMargin == 'false' ? 'textbanner-no-border m-0' : '';

							// Update text classes
							const textPosition = $bannerMainContainer.attr('data-text');
							const textClasses = textPosition == 'above' ? 'over-image' : '';

							// Update image classes
							const imageSize = $bannerMainContainer.attr('data-image');
							const imageClasses = imageSize == 'same' ? 'textbanner-image-background' : 'img-fluid d-block w-100';
							const imageContainerClasses = imageSize == 'original' ? 'p-0' : '';

							$bannerMainContainer.find('.js-banner').remove();
							slides.forEach(function(aSlide){
								$bannerMainContainer.find('.js-banner-row').append(buildHomeBannerDom(aSlide, bannerClasses, textBannerClasses, columnClasses, textClasses, imageContainerClasses, imageClasses));
							});
						});
					}

					// Persist new format in data attribute
					$bannerMainContainer.data('format', bannerFormat);
				});
			});

			// ----------------------------------- Welcome Message -----------------------------------

			// Update welcome message title
			handlers.welcome_message = new instaElements.Text({
				element: '.js-welcome-message-title',
				show: function(){
					$(this).show();
				},
				hide: function(){
					$(this).hide();
				},
			});

			// Update welcome message subtitle
			handlers.welcome_text = new instaElements.Text({
				element: '.js-welcome-message-text',
				show: function(){
					$(this).show();
				},
				hide: function(){
					$(this).hide();
				},
			});

			// ----------------------------------- Highlighted Products -----------------------------------

			// Same logic applies to all 3 types of highlighted products

			['featured', 'sale', 'new'].forEach(setting => {
				const $section = $(`.js-section-products-${setting}`);
				const $productContainer = $(`.js-products-${setting}-container`);
				const $productGridContainer = $(`.js-products-${setting}-grid-container`);
				const $productGrid = $(`.js-products-${setting}-grid`);
				const $productItem = $productGrid.find('.js-item-product');
				const $productItemInfoContainer = $productGrid.find(".js-item-info-container");
				const $productFeaturedImageContainer = $(".js-products-featured-image-container");
				const $productFeaturedImage = $(".js-products-featured-image");

				const productSwiper = 
					setting == 'featured' ? 'productsFeaturedSwiper' : 
					setting == 'new' ? 'productsNewSwiper' : 
					setting == 'sale' ? 'productsSaleSwiper' :
					null;

				// Updates title text
				handlers[`${setting}_products_title`] = new instaElements.Text({
					element: `.js-products-${setting}-title`,
					show: function() {
						$(this).show();
						if((setting == 'featured') || (setting == 'sale')){
							$(`.js-products-${setting}-controls`).removeClass("col").addClass("col-auto");
						}else{
							const productFormat = $productGrid.attr('data-format');
							$(".js-products-new-title-and-controls").show();
							if((productFormat == 'slider') && $productItem.length > 3){
								//Update swiper when layout changes
								window[productSwiper].update();
							}
						}
						$productGrid.attr("data-title", "true");
					},
					hide: function() {
						$(this).hide();
						if((setting == 'featured') || (setting == 'sale')){
							$(`.js-products-${setting}-controls`).addClass("col").removeClass("col-auto");
						}else{
							const productFormat = $productGrid.attr('data-format');
							const sectionLink = $productGrid.attr("data-link");
							if(((productFormat == 'slider') && $productItem.length > 3) || (sectionLink == 'true')){
								$(".js-products-new-title-and-controls").show();
							}else{
								$(".js-products-new-title-and-controls").hide();
								if(productFormat == 'slider'){
									//Update swiper when layout changes
									window[productSwiper].update();
								}
							}
						}
						$productGrid.attr("data-title", "false");
					},
				})

				// Updates see all products link

				handlers[`${setting}_products_link`] = new instaElements.Lambda(function(allProductsLink){
					const $link = $(`.js-products-${setting}-link-container`);
					if(allProductsLink){
						$link.show();
					}else{
						$link.hide();
					}
				})

				// Initialize swiper function
				function initSwiperElements() {

					let desktopProductQuantity = $productGrid.attr('data-desktop-columns');
					let mobileProductSliderQuantity = $productGrid.attr('data-mobile-columns-slider');
					const sectionTitle = $productGrid.attr("data-title");
					const sectionLink = $productGrid.attr("data-link");

					$productGridContainer.addClass("pr-0 pr-md-3");
					$productGrid.addClass('swiper-wrapper').removeClass("row row-grid");

					// Wrap everything inside a swiper container
					$productGrid.wrapAll(`<div class="js-swiper-${setting} swiper-container"></div>`)

					// Wrap each product into a slide
					$productItem.removeClass("col-6 col-12 col-md-2 col-md-2-4 col-md-3 col-md-4").addClass("p-0").wrap(`<div class="swiper-slide"></div>`);
					$productItemInfoContainer.addClass("m-0");

					// Add previous and next controls

					var sliderControlsHtml = `
						<div class="js-products-${setting}-controls text-right d-none d-md-block">
							<div class="js-swiper-${setting}-prev swiper-button-prev d-inline-block svg-circle svg-icon-text">
								<svg class="icon-inline icon-lg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512">
								<path d="M241,451.75l-18.11,18.1L9.07,256,222.92,42.15,241,60.25,45.28,256Z"></path>
								</svg>
							</div>
							<div class="js-swiper-${setting}-next swiper-button-next d-inline-block svg-circle svg-icon-text ml-2">
								<svg class="icon-inline icon-lg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512">
								<path d="M210.72,256,15,60.25l18.11-18.1L246.93,256,33.08,469.85,15,451.75Z"></path>
								</svg>
							</div>
						</div>
					`;

					if(setting == 'new'){
						$(".js-products-new-title-and-controls").append(sliderControlsHtml);
						$(`.js-products-${setting}-controls`).removeClass("col text-right");

					}else{
						$(`.js-products-${setting}-controls-container`).append(sliderControlsHtml);
					}
					
					if((setting != 'new') && (sectionTitle == 'true')){
						$(`.js-products-${setting}-controls`).removeClass("col").addClass("col-auto");
					}

					// Define new desktop columns for featued products with image scenario
					const productHomeFeaturedImage = $productGrid.attr('data-featured-image');
					if((setting == 'featured') && (productHomeFeaturedImage == 'true')){
						desktopProductQuantity = '2';
						$productGridContainer.removeClass("pr-0 pr-md-3");
					}

					// Define mobile columns for new products different layout
					if(setting == 'new'){
						desktopProductQuantity = '3'
						mobileProductSliderQuantity = '1.15';
						if(($productItem.length < 3) && (sectionTitle == 'false') && (sectionLink == 'false')){
							$(".js-products-new-title-and-controls").hide();
						}else{
							$(".js-products-new-title-and-controls").show();
						}
					}

					// Initialize swiper
					createSwiper(`.js-swiper-${setting}`, {
						lazy: true,
						watchOverflow: true,
						centerInsufficientSlides: true,
						threshold: 5,
						watchSlideProgress: true,
						watchSlidesVisibility: true,
						slideVisibleClass: 'js-swiper-slide-visible',
						spaceBetween: 20,
						loop: $productItem.length > 3,
						navigation: {
							nextEl: `.js-swiper-${setting}-next`,
							prevEl: `.js-swiper-${setting}-prev`
						},
						slidesPerView: mobileProductSliderQuantity,
						breakpoints: {
							768: {
								slidesPerView: desktopProductQuantity,
							}
						},
					},
					function(swiperInstance) {
						window[productSwiper] = swiperInstance;
					});
				}

				// Reset swiper function
				function resetSwiperElements() {
					const desktopProductQuantity = $productGrid.attr('data-desktop-columns');
					const mobileProductQuantity = $productGrid.attr('data-mobile-columns');
					const sectionTitle = $productGrid.attr("data-title");

					// Remove duplicate slides and slider controls
					$productGridContainer.removeClass("pr-0 pr-md-3");
					$productContainer.find(`.js-products-${setting}-controls`).remove();
					$productGrid.find('.swiper-slide-duplicate').remove();
					$productGrid.addClass('row row-grid');

					// Undo all slider wrappers and restore original classes
					
					$productGrid.unwrap();
					$productItem.unwrap();
					$productItem.removeClass('js-item-slide js-swiper-slide-visible swiper-slide-active swiper-slide p-0').removeAttr('style');
					$productItemInfoContainer.removeClass("m-0");

					if(setting == 'new'){
						if (desktopProductQuantity == 4) {
							$productItem.addClass('col-md-3');
						} else {
							$productItem.addClass('col-md-4');
						} 

						$productItem.addClass('col-12');
					}else{
						if (desktopProductQuantity == 6) {
							$productItem.addClass('col-md-2');
						} else if (desktopProductQuantity == 5) {
							$productItem.addClass('col-md-2-4');
						} else if (desktopProductQuantity == 4) {

							$productItem.addClass('col-md-3');
						}

						if (mobileProductQuantity == 2) {
							$productItem.addClass('col-6');
						} else if (mobileProductQuantity == 1) {
							$productItem.addClass('col-12');
						}
					}

					const sectionLink = $productGrid.attr("data-link");

					if((setting == 'new') && (sectionTitle == 'false') && (sectionLink == 'false')){
						$(".js-products-new-title-and-controls").hide();
					}
					
				}

				// Toggle grid and slider view
				handlers[`${setting}_products_format`] = new instaElements.Lambda(function(format){
					const toSlider = format == "slider";

					if ($productGrid.attr('data-format') == format) {
						// Nothing to do
						return;
					}

					let productHomeFeaturedImage;
					// From grid to slider
					if (toSlider) {
						$productGrid.attr('data-format', 'slider');

						//Set layout based for featured section case
						productHomeFeaturedImage = $productGrid.attr('data-featured-image');
						if(setting == 'featured'){
							$productGridContainer.removeClass("p-3");
							if(productHomeFeaturedImage == 'true'){
								$productFeaturedImageContainer.addClass("col-md-8");
								$productFeaturedImage.addClass("featured-product-image-with-slider");
								$productGridContainer.addClass("col-md-4 featured-product-container featured-product-image-with-slider");
							}
						}

						// Convert grid to slider if it's not yet
						if ($productContainer.find('.swiper-slide').length < 1) {
							initSwiperElements();
						}

					// From slider to grid
					} else {
						$productGrid.attr('data-format', 'grid');
						
						// Reset swiper settings
						resetSwiperElements();

						// Restore grid settings
						$productGrid.removeClass('swiper-wrapper').removeAttr('style');

						//Set layout based for featured section case
						productHomeFeaturedImage = $productGrid.attr('data-featured-image');
						if(setting == 'featured'){
							$productFeaturedImageContainer.removeClass("col-md-8");
							$productFeaturedImage.removeClass("featured-product-image-with-slider");
							$productGridContainer.removeClass("col-md-4 featured-product-image-with-slider");
							if(productHomeFeaturedImage == 'true'){
								$productGridContainer.addClass("p-3");
							}
						}
					}

					// Persist new format in data attribute
					$productGrid.attr('data-format', format);
				});

				if(setting == 'featured'){

					//Featured section color
					handlers[`${setting}_product_colors`] = new instaElements.Lambda(function(sectionColor){
						if (sectionColor) {
							$section.addClass("section-featured-home-colors");
						} else {
							$section.removeClass("section-featured-home-colors");
						}
					});

					//Featured section image
					handlers[`${setting}_products_image.jpg`] = new instaElements.Image({
						element: `.js-products-featured-image img`,
						show: function() {
							const productFormat = $productGrid.attr('data-format');
							$productGrid.attr("data-featured-image" , "true");
							$(this).show();
							$productFeaturedImageContainer.show();
							$(".js-featured-products-row").addClass("no-gutters");
							if(productFormat == 'slider'){
								$productFeaturedImageContainer.addClass("col-md-8");
								$productFeaturedImage.addClass("featured-product-image-with-slider");
								$productGridContainer.addClass("col-md-4 featured-product-container featured-product-image-with-slider").removeClass("pr-0 pr-md-3");
								//Update swiper when layout changes
								if (window.innerWidth > 768) {
									window[productSwiper].params.slidesPerView = '2';
								}
								window[productSwiper].update();
							}else{
								$productGridContainer.addClass("featured-product-container p-3");
							}
							
						},
						hide: function() {
							const productFormat = $productGrid.attr('data-format');
							$(this).hide();
							$productGrid.attr("data-featured-image" , "false");
							$productFeaturedImageContainer.hide().removeClass("col-md-8");
							$productFeaturedImage.removeClass("featured-product-image-with-slider");
							$productGridContainer.removeClass("featured-product-container featured-product-image-with-slider col-md-4 p-3");
							$(".js-featured-products-row").removeClass("no-gutters");
							if(productFormat == 'slider'){
								$productGridContainer.addClass("pr-0 pr-md-3");
								//Update swiper when layout changes
								if (window.innerWidth > 768) {
									const desktopProductQuantity = $productHomeGrid.attr('data-desktop-columns');
									window[productSwiper].params.slidesPerView = desktopProductQuantity;
								}
								window[productSwiper].update();
							}
						},
					});
				}
			});

			// Update home quantities based on general list and each home produts format settings
			
			const $productHomeGrid = $('.js-products-home-grid');
			const $productHomeItem = $productHomeGrid.find('.js-item-product');

			// Updates quantity products desktop
			handlers.grid_columns_desktop = new instaElements.Lambda(function(desktopProductQuantity){
				if (window.innerWidth > 768) {
					const productHomeFeaturedImage = $productHomeGrid.attr('data-featured-image');
					$productHomeGrid.attr('data-desktop-columns', desktopProductQuantity);
					$productHomeGrid.each(function() {
						const thisProductFormat = $(this).attr('data-format');
						const thisSectionId = $(this).attr('data-section-id');
						const productSwiper = 
							thisSectionId == 'featured' ? 'productsFeaturedSwiper' : 
							thisSectionId == 'new' ? 'productsNewSwiper' : 
							thisSectionId == 'sale' ? 'productsSaleSwiper' :
							null;

						const $thisProductHomeItem = $(this).find('.js-item-product');
						$thisProductHomeItem.removeClass('col-md-2 col-md-2-4 col-md-3 col-md-4');

						let desktopQuantity = desktopProductQuantity;

						if (thisProductFormat == 'grid') {
							if (thisSectionId == 'new'){
								desktopQuantity = desktopProductQuantity == '4' ? '4' : '3';
							}
							if (desktopQuantity == 6) {
								$thisProductHomeItem.addClass('col-md-2');
							} else if (desktopQuantity == 5) {
								$thisProductHomeItem.addClass('col-md-2-4');
							} else if (desktopQuantity == 4) {
								$thisProductHomeItem.addClass('col-md-3');
							} else if (desktopQuantity == 3) {
								$thisProductHomeItem.addClass('col-md-4');
							}
						}else{
							if((thisSectionId == 'featured') && (productHomeFeaturedImage == 'true')){
								window[productSwiper].params.slidesPerView = '2';
							}else if (thisSectionId == 'new'){
								window[productSwiper].params.slidesPerView = '3';
							}else{
								window[productSwiper].params.slidesPerView = desktopQuantity;
							}
							window[productSwiper].update();
						}
					});
				}
			});

			// Updates quantity products desktop
			handlers.grid_columns_mobile = new instaElements.Lambda(function(mobileProductQuantity){
				if (window.innerWidth < 768) {
					const mobileProductSliderQuantity = mobileProductQuantity == '2' ? '2.25' : '1.15';
					$productHomeGrid.attr('data-mobile-slider-columns', mobileProductSliderQuantity).attr('data-mobile-columns', mobileProductQuantity);

					$productHomeGrid.each(function() {
						const thisProductFormat = $(this).attr('data-format');
						const thisSectionId = $(this).attr('data-section-id');
						const productSwiper = 
							thisSectionId == 'featured' ? 'productsFeaturedSwiper' : 
							thisSectionId == 'new' ? 'productsNewSwiper' : 
							thisSectionId == 'sale' ? 'productsSaleSwiper' :
							null;

						const $thisProductHomeItem = $(this).find('.js-item-product');
						$thisProductHomeItem.removeClass('col-6 col-12');
						if (thisProductFormat == 'grid') {
							if ((thisSectionId == 'new') || (mobileProductQuantity == 1)) {
								$thisProductHomeItem.addClass('col-12');
							} else if (mobileProductQuantity == 2) {
								$thisProductHomeItem.addClass('col-6');
							}
						}else{
							if (thisSectionId == 'new'){
								window[productSwiper].params.slidesPerView = '1.15';
							}else{
								window[productSwiper].params.slidesPerView = mobileProductSliderQuantity;
							}
							window[productSwiper].update();
						}
					});
				}
			});

			return handlers;
		}
	};
})(jQueryNuvem);