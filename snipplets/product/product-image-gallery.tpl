<div class="box-image-gallery">
    <img data-sizes="auto" src="{{ 'images/empty-placeholder.png' | static_url }}" data-srcset='{{  image | product_image_url('large') }} 480w, {{  image | product_image_url('huge') }} 640w' class="img-absolute img-absolute-centered lazyautosizes lazyload" {% if image.alt %}alt="{{image.alt}}"{% endif %} />
    <p class="alt-image-gallery">{{image.alt}}</p>
</div>