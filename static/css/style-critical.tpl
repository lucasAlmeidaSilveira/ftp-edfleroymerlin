{% raw %}@charset "UTF-8":

/*============================================================================
critical-css.tpl

    -This file contains all the theme critical styles wich will be loaded inline before the rest of the site
    -Rest of styling can be found in:
    	--static/css/style-async.css.tpl --> For non critical styles witch will be loaded asynchronously
      --static/css/style-colors.critical.tpl --> For critical CSS rendered inline before the rest of the site

==============================================================================*/

/*============================================================================
  Table of Contents

  #External CSS libraries and plugins
    // Bootstrap Grid v4.1.3
    // Swiper 4.4.2
  #Critical path helpers
  #Components
    // Wrappers
    // Grid
    // Placeholders and preloaders
    // Animations
    // Buttons
    // Links
    // Titles and breadcrumbs
    // Icons
    // Texts
    // Sliders
    // Lists
    // Notifications
    // Badge
    // Tooltip
    // Images
    // Forms
    // Video
  #Header and nav
    // Adbar & Topbar
    // Nav
    // Logo
    // Cart widget and search
  #Home page
    // Sections title
    // Video
    // Main categories
    // Welcome message
  #Banners
    // Home banners
    // Informative banners
  #Product grid
    // Category controls
    // Grid item
    // Labels
  #Product detail
  	// Image
  #Cart detail
    // Shipping Calculator
  #Contact page
    // Data contact
  #Media queries
    // Min width 1400px
    // Min width 768px
    //// Components
    //// Header and Nav
    //// Product grid
    //// Helper classes
  
  #Helper classes
    // Margin and padding
    // Text
    // Algin
    // Position
    // Image
    // Visibility
    // Float 
    // Width

==============================================================================*/

/*============================================================================
  #External CSS libraries and plugins
==============================================================================*/
  
{# /* // Bootstrap Grid v4.1.3 */ #}

@-ms-viewport{width:device-width}html{box-sizing:border-box;-ms-overflow-style:scrollbar}*,::after,::before{box-sizing:inherit}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:576px){.container{max-width:540px}}@media (min-width:768px){.container{max-width:720px}}@media (min-width:992px){.container{max-width:960px}}@media (min-width:1200px){.container{max-width:1140px}}.container-fluid{width:90%;margin-right:auto;margin-left:auto}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-15px;margin-left:-15px}.no-gutters{margin-right:0;margin-left:0}.no-gutters>.col,.no-gutters>[class*=col-]{padding-right:0;padding-left:0}.col,.col-1,.col-10,.col-11,.col-12,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-auto,.col-lg,.col-lg-1,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-auto,.col-md,.col-md-1,.col-md-10,.col-md-11,.col-md-12,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-auto,.col-sm,.col-sm-1,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-auto{position:relative;width:100%;min-height:1px;padding-right:15px;padding-left:15px}.col{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-first{-ms-flex-order:-1;order:-1}.order-last{-ms-flex-order:13;order:13}.order-0{-ms-flex-order:0;order:0}.order-1{-ms-flex-order:1;order:1}.order-2{-ms-flex-order:2;order:2}.order-3{-ms-flex-order:3;order:3}.order-4{-ms-flex-order:4;order:4}.order-5{-ms-flex-order:5;order:5}.order-6{-ms-flex-order:6;order:6}.order-7{-ms-flex-order:7;order:7}.order-8{-ms-flex-order:8;order:8}.order-9{-ms-flex-order:9;order:9}.order-10{-ms-flex-order:10;order:10}.order-11{-ms-flex-order:11;order:11}.order-12{-ms-flex-order:12;order:12}.offset-1{margin-left:8.333333%}.offset-2{margin-left:16.666667%}.offset-3{margin-left:25%}.offset-4{margin-left:33.333333%}.offset-5{margin-left:41.666667%}.offset-6{margin-left:50%}.offset-7{margin-left:58.333333%}.offset-8{margin-left:66.666667%}.offset-9{margin-left:75%}.offset-10{margin-left:83.333333%}.offset-11{margin-left:91.666667%}@media (min-width:576px){.col-sm{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-sm-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-sm-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-sm-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-sm-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-sm-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-sm-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-sm-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-sm-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-sm-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-sm-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-sm-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-sm-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-sm-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-sm-first{-ms-flex-order:-1;order:-1}.order-sm-last{-ms-flex-order:13;order:13}.order-sm-0{-ms-flex-order:0;order:0}.order-sm-1{-ms-flex-order:1;order:1}.order-sm-2{-ms-flex-order:2;order:2}.order-sm-3{-ms-flex-order:3;order:3}.order-sm-4{-ms-flex-order:4;order:4}.order-sm-5{-ms-flex-order:5;order:5}.order-sm-6{-ms-flex-order:6;order:6}.order-sm-7{-ms-flex-order:7;order:7}.order-sm-8{-ms-flex-order:8;order:8}.order-sm-9{-ms-flex-order:9;order:9}.order-sm-10{-ms-flex-order:10;order:10}.order-sm-11{-ms-flex-order:11;order:11}.order-sm-12{-ms-flex-order:12;order:12}.offset-sm-0{margin-left:0}.offset-sm-1{margin-left:8.333333%}.offset-sm-2{margin-left:16.666667%}.offset-sm-3{margin-left:25%}.offset-sm-4{margin-left:33.333333%}.offset-sm-5{margin-left:41.666667%}.offset-sm-6{margin-left:50%}.offset-sm-7{margin-left:58.333333%}.offset-sm-8{margin-left:66.666667%}.offset-sm-9{margin-left:75%}.offset-sm-10{margin-left:83.333333%}.offset-sm-11{margin-left:91.666667%}}@media (min-width:768px){.col-md{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-md-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-md-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-md-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-md-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-md-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-md-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-md-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-md-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-md-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-md-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-md-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-md-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-md-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-md-first{-ms-flex-order:-1;order:-1}.order-md-last{-ms-flex-order:13;order:13}.order-md-0{-ms-flex-order:0;order:0}.order-md-1{-ms-flex-order:1;order:1}.order-md-2{-ms-flex-order:2;order:2}.order-md-3{-ms-flex-order:3;order:3}.order-md-4{-ms-flex-order:4;order:4}.order-md-5{-ms-flex-order:5;order:5}.order-md-6{-ms-flex-order:6;order:6}.order-md-7{-ms-flex-order:7;order:7}.order-md-8{-ms-flex-order:8;order:8}.order-md-9{-ms-flex-order:9;order:9}.order-md-10{-ms-flex-order:10;order:10}.order-md-11{-ms-flex-order:11;order:11}.order-md-12{-ms-flex-order:12;order:12}.offset-md-0{margin-left:0}.offset-md-1{margin-left:8.333333%}.offset-md-2{margin-left:16.666667%}.offset-md-3{margin-left:25%}.offset-md-4{margin-left:33.333333%}.offset-md-5{margin-left:41.666667%}.offset-md-6{margin-left:50%}.offset-md-7{margin-left:58.333333%}.offset-md-8{margin-left:66.666667%}.offset-md-9{margin-left:75%}.offset-md-10{margin-left:83.333333%}.offset-md-11{margin-left:91.666667%}}@media (min-width:992px){.col-lg{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-lg-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-lg-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-lg-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-lg-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-lg-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-lg-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-lg-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-lg-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-lg-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-lg-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-lg-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-lg-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-lg-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-lg-first{-ms-flex-order:-1;order:-1}.order-lg-last{-ms-flex-order:13;order:13}.order-lg-0{-ms-flex-order:0;order:0}.order-lg-1{-ms-flex-order:1;order:1}.order-lg-2{-ms-flex-order:2;order:2}.order-lg-3{-ms-flex-order:3;order:3}.order-lg-4{-ms-flex-order:4;order:4}.order-lg-5{-ms-flex-order:5;order:5}.order-lg-6{-ms-flex-order:6;order:6}.order-lg-7{-ms-flex-order:7;order:7}.order-lg-8{-ms-flex-order:8;order:8}.order-lg-9{-ms-flex-order:9;order:9}.order-lg-10{-ms-flex-order:10;order:10}.order-lg-11{-ms-flex-order:11;order:11}.order-lg-12{-ms-flex-order:12;order:12}.offset-lg-0{margin-left:0}.offset-lg-1{margin-left:8.333333%}.offset-lg-2{margin-left:16.666667%}.offset-lg-3{margin-left:25%}.offset-lg-4{margin-left:33.333333%}.offset-lg-5{margin-left:41.666667%}.offset-lg-6{margin-left:50%}.offset-lg-7{margin-left:58.333333%}.offset-lg-8{margin-left:66.666667%}.offset-lg-9{margin-left:75%}.offset-lg-10{margin-left:83.333333%}.offset-lg-11{margin-left:91.666667%}}@media (min-width:1200px){.col-xl{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-xl-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-xl-1{-ms-flex:0 0 8.333333%;flex:0 0 8.333333%;max-width:8.333333%}.col-xl-2{-ms-flex:0 0 16.666667%;flex:0 0 16.666667%;max-width:16.666667%}.col-xl-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-xl-4{-ms-flex:0 0 33.333333%;flex:0 0 33.333333%;max-width:33.333333%}.col-xl-5{-ms-flex:0 0 41.666667%;flex:0 0 41.666667%;max-width:41.666667%}.col-xl-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-xl-7{-ms-flex:0 0 58.333333%;flex:0 0 58.333333%;max-width:58.333333%}.col-xl-8{-ms-flex:0 0 66.666667%;flex:0 0 66.666667%;max-width:66.666667%}.col-xl-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-xl-10{-ms-flex:0 0 83.333333%;flex:0 0 83.333333%;max-width:83.333333%}.col-xl-11{-ms-flex:0 0 91.666667%;flex:0 0 91.666667%;max-width:91.666667%}.col-xl-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-xl-first{-ms-flex-order:-1;order:-1}.order-xl-last{-ms-flex-order:13;order:13}.order-xl-0{-ms-flex-order:0;order:0}.order-xl-1{-ms-flex-order:1;order:1}.order-xl-2{-ms-flex-order:2;order:2}.order-xl-3{-ms-flex-order:3;order:3}.order-xl-4{-ms-flex-order:4;order:4}.order-xl-5{-ms-flex-order:5;order:5}.order-xl-6{-ms-flex-order:6;order:6}.order-xl-7{-ms-flex-order:7;order:7}.order-xl-8{-ms-flex-order:8;order:8}.order-xl-9{-ms-flex-order:9;order:9}.order-xl-10{-ms-flex-order:10;order:10}.order-xl-11{-ms-flex-order:11;order:11}.order-xl-12{-ms-flex-order:12;order:12}.offset-xl-0{margin-left:0}.offset-xl-1{margin-left:8.333333%}.offset-xl-2{margin-left:16.666667%}.offset-xl-3{margin-left:25%}.offset-xl-4{margin-left:33.333333%}.offset-xl-5{margin-left:41.666667%}.offset-xl-6{margin-left:50%}.offset-xl-7{margin-left:58.333333%}.offset-xl-8{margin-left:66.666667%}.offset-xl-9{margin-left:75%}.offset-xl-10{margin-left:83.333333%}.offset-xl-11{margin-left:91.666667%}}.d-none{display:none!important}.d-inline{display:inline!important}.d-inline-block{display:inline-block!important}.d-block{display:block!important}.d-table{display:table!important}.d-table-row{display:table-row!important}.d-table-cell{display:table-cell!important}.d-flex{display:-ms-flexbox!important;display:flex!important}.d-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}@media (min-width:576px){.d-sm-none{display:none!important}.d-sm-inline{display:inline!important}.d-sm-inline-block{display:inline-block!important}.d-sm-block{display:block!important}.d-sm-table{display:table!important}.d-sm-table-row{display:table-row!important}.d-sm-table-cell{display:table-cell!important}.d-sm-flex{display:-ms-flexbox!important;display:flex!important}.d-sm-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:768px){.d-md-none{display:none!important}.d-md-inline{display:inline!important}.d-md-inline-block{display:inline-block!important}.d-md-block{display:block!important}.d-md-table{display:table!important}.d-md-table-row{display:table-row!important}.d-md-table-cell{display:table-cell!important}.d-md-flex{display:-ms-flexbox!important;display:flex!important}.d-md-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:992px){.d-lg-none{display:none!important}.d-lg-inline{display:inline!important}.d-lg-inline-block{display:inline-block!important}.d-lg-block{display:block!important}.d-lg-table{display:table!important}.d-lg-table-row{display:table-row!important}.d-lg-table-cell{display:table-cell!important}.d-lg-flex{display:-ms-flexbox!important;display:flex!important}.d-lg-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:1200px){.d-xl-none{display:none!important}.d-xl-inline{display:inline!important}.d-xl-inline-block{display:inline-block!important}.d-xl-block{display:block!important}.d-xl-table{display:table!important}.d-xl-table-row{display:table-row!important}.d-xl-table-cell{display:table-cell!important}.d-xl-flex{display:-ms-flexbox!important;display:flex!important}.d-xl-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media print{.d-print-none{display:none!important}.d-print-inline{display:inline!important}.d-print-inline-block{display:inline-block!important}.d-print-block{display:block!important}.d-print-table{display:table!important}.d-print-table-row{display:table-row!important}.d-print-table-cell{display:table-cell!important}.d-print-flex{display:-ms-flexbox!important;display:flex!important}.d-print-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}.flex-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-center{-ms-flex-align:center!important;align-items:center!important}.align-items-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}@media (min-width:576px){.flex-sm-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-sm-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-sm-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-sm-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-sm-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-sm-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-sm-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-sm-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-sm-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-sm-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-sm-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-sm-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-sm-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-sm-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-sm-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-sm-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-sm-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-sm-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-sm-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-sm-center{-ms-flex-align:center!important;align-items:center!important}.align-items-sm-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-sm-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-sm-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-sm-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-sm-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-sm-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-sm-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-sm-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-sm-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-sm-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-sm-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-sm-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-sm-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-sm-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:768px){.flex-md-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-md-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-md-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-md-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-md-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-md-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-md-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-md-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-md-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-md-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-md-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-md-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-md-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-md-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-md-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-md-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-md-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-md-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-md-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-md-center{-ms-flex-align:center!important;align-items:center!important}.align-items-md-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-md-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-md-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-md-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-md-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-md-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-md-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-md-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-md-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-md-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-md-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-md-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-md-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-md-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:992px){.flex-lg-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-lg-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-lg-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-lg-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-lg-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-lg-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-lg-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-lg-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-lg-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-lg-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-lg-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-lg-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-lg-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-lg-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-lg-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-lg-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-lg-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-lg-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-lg-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-lg-center{-ms-flex-align:center!important;align-items:center!important}.align-items-lg-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-lg-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-lg-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-lg-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-lg-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-lg-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-lg-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-lg-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-lg-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-lg-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-lg-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-lg-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-lg-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-lg-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:1200px){.flex-xl-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-xl-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-xl-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-xl-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-xl-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-xl-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-xl-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-xl-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-xl-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-xl-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-xl-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-xl-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-xl-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-xl-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-xl-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-xl-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-xl-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-xl-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-xl-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-xl-center{-ms-flex-align:center!important;align-items:center!important}.align-items-xl-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-xl-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-xl-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-xl-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-xl-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-xl-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-xl-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-xl-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-xl-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-xl-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-xl-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-xl-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-xl-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-xl-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}

{# /* // Swiper 4.4.2 */ #}
.swiper-container{width:100%;margin:0 auto;position:relative;overflow:hidden;list-style:none;padding:0;z-index:1}.swiper-container-no-flexbox .swiper-slide{float:left}.swiper-container-vertical>.swiper-wrapper{-webkit-box-orient:vertical;-webkit-box-direction:normal;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column}.swiper-wrapper{position:relative;width:100%;height:100%;z-index:1;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-transition-property:-webkit-transform;transition-property:-webkit-transform;-o-transition-property:transform;transition-property:transform;transition-property:transform,-webkit-transform}.swiper-container-android .swiper-slide,.swiper-wrapper{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}.swiper-container-multirow>.swiper-wrapper{-webkit-flex-wrap:wrap;-ms-flex-wrap:wrap;flex-wrap:wrap}.swiper-container-free-mode>.swiper-wrapper{-webkit-transition-timing-function:ease-out;-o-transition-timing-function:ease-out;transition-timing-function:ease-out;margin:0 auto}.swiper-slide{-webkit-flex-shrink:0;-ms-flex-negative:0;flex-shrink:0;width:100%;height:100%;position:relative;-webkit-transition-property:-webkit-transform;transition-property:-webkit-transform;-o-transition-property:transform;transition-property:transform;transition-property:transform,-webkit-transform}.swiper-slide-invisible-blank{visibility:hidden}.swiper-container-autoheight,.swiper-container-autoheight .swiper-slide{height:auto}.swiper-container-autoheight .swiper-wrapper{-webkit-box-align:start;-webkit-align-items:flex-start;-ms-flex-align:start;align-items:flex-start;-webkit-transition-property:height,-webkit-transform;transition-property:height,-webkit-transform;-o-transition-property:transform,height;transition-property:transform,height;transition-property:transform,height,-webkit-transform}.swiper-container-3d{-webkit-perspective:1200px;perspective:1200px}.swiper-container-3d .swiper-cube-shadow,.swiper-container-3d .swiper-slide,.swiper-container-3d .swiper-slide-shadow-bottom,.swiper-container-3d .swiper-slide-shadow-left,.swiper-container-3d .swiper-slide-shadow-right,.swiper-container-3d .swiper-slide-shadow-top,.swiper-container-3d .swiper-wrapper{-webkit-transform-style:preserve-3d;transform-style:preserve-3d}.swiper-container-3d .swiper-slide-shadow-bottom,.swiper-container-3d .swiper-slide-shadow-left,.swiper-container-3d .swiper-slide-shadow-right,.swiper-container-3d .swiper-slide-shadow-top{position:absolute;left:0;top:0;width:100%;height:100%;pointer-events:none;z-index:10}.swiper-container-3d .swiper-slide-shadow-left{background-image:-webkit-gradient(linear,right top,left top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(right,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(right,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to left,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-3d .swiper-slide-shadow-right{background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(left,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(left,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to right,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-3d .swiper-slide-shadow-top{background-image:-webkit-gradient(linear,left bottom,left top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(bottom,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(bottom,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to top,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-3d .swiper-slide-shadow-bottom{background-image:-webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,.5)),to(rgba(0,0,0,0)));background-image:-webkit-linear-gradient(top,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:-o-linear-gradient(top,rgba(0,0,0,.5),rgba(0,0,0,0));background-image:linear-gradient(to bottom,rgba(0,0,0,.5),rgba(0,0,0,0))}.swiper-container-wp8-horizontal,.swiper-container-wp8-horizontal>.swiper-wrapper{-ms-touch-action:pan-y;touch-action:pan-y}.swiper-container-wp8-vertical,.swiper-container-wp8-vertical>.swiper-wrapper{-ms-touch-action:pan-x;touch-action:pan-x}.swiper-button-next,.swiper-button-prev{position:absolute;top:50%;z-index:10;width:30px;height:40px;margin-top:-25px;line-height:30px;color:#fff;text-align:center;cursor:pointer}.swiper-button-next.swiper-button-disabled,.swiper-button-prev.swiper-button-disabled{opacity:0;cursor:auto}.swiper-button-prev,.swiper-container-rtl .swiper-button-next{left:0;right:auto}.swiper-button-next,.swiper-container-rtl .swiper-button-prev{right:0;left:auto}.swiper-button-lock{display:none}.swiper-pagination{position:absolute;text-align:center;-webkit-transition:.3s opacity;-o-transition:.3s opacity;transition:.3s opacity;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0);z-index:10}.swiper-pagination.swiper-pagination-hidden{opacity:0}.swiper-pagination-custom,.swiper-pagination-fraction{bottom:20px;left:0;width:100%}.swiper-pagination-bullets-dynamic{overflow:hidden;font-size:0}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{-webkit-transform:scale(.33);-ms-transform:scale(.33);transform:scale(.33);position:relative}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active{-webkit-transform:scale(1);-ms-transform:scale(1);transform:scale(1)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-main{-webkit-transform:scale(1);-ms-transform:scale(1);transform:scale(1)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev{-webkit-transform:scale(.66);-ms-transform:scale(.66);transform:scale(.66)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-prev-prev{-webkit-transform:scale(.33);-ms-transform:scale(.33);transform:scale(.33)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next{-webkit-transform:scale(.66);-ms-transform:scale(.66);transform:scale(.66)}.swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active-next-next{-webkit-transform:scale(.33);-ms-transform:scale(.33);transform:scale(.33)}.swiper-pagination-bullet{width:6px;height:6px;display:inline-block;border-radius:100%;background:#000;opacity:.2}button.swiper-pagination-bullet{border:none;margin:0;padding:0;-webkit-box-shadow:none;box-shadow:none;-webkit-appearance:none;-moz-appearance:none;appearance:none}.swiper-pagination-clickable .swiper-pagination-bullet{cursor:pointer}.swiper-pagination-bullet-active{opacity:1;background:#007aff}.swiper-container-vertical>.swiper-pagination-bullets{right:10px;top:50%;-webkit-transform:translate3d(0,-50%,0);transform:translate3d(0,-50%,0)}.swiper-container-vertical>.swiper-pagination-bullets .swiper-pagination-bullet{margin:6px 0;display:block}.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic{top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%);width:8px}.swiper-container-vertical>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{display:inline-block;-webkit-transition:.2s top,.2s -webkit-transform;transition:.2s top,.2s -webkit-transform;-o-transition:.2s transform,.2s top;transition:.2s transform,.2s top;transition:.2s transform,.2s top,.2s -webkit-transform}.swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet{margin:0 4px}.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic{left:50%;-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);transform:translateX(-50%);white-space:nowrap}.swiper-container-horizontal>.swiper-pagination-bullets.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{-webkit-transition:.2s left,.2s -webkit-transform;transition:.2s left,.2s -webkit-transform;-o-transition:.2s transform,.2s left;transition:.2s transform,.2s left;transition:.2s transform,.2s left,.2s -webkit-transform}.swiper-container-horizontal.swiper-container-rtl>.swiper-pagination-bullets-dynamic .swiper-pagination-bullet{-webkit-transition:.2s right,.2s -webkit-transform;transition:.2s right,.2s -webkit-transform;-o-transition:.2s transform,.2s right;transition:.2s transform,.2s right;transition:.2s transform,.2s right,.2s -webkit-transform}.swiper-pagination-progressbar{background:rgba(0,0,0,.25);position:absolute}.swiper-pagination-progressbar .swiper-pagination-progressbar-fill{background:#007aff;position:absolute;left:0;top:0;width:100%;height:100%;-webkit-transform:scale(0);-ms-transform:scale(0);transform:scale(0);-webkit-transform-origin:left top;-ms-transform-origin:left top;transform-origin:left top}.swiper-container-rtl .swiper-pagination-progressbar .swiper-pagination-progressbar-fill{-webkit-transform-origin:right top;-ms-transform-origin:right top;transform-origin:right top}.swiper-container-horizontal>.swiper-pagination-progressbar,.swiper-container-vertical>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite{width:100%;height:4px;left:0;top:0}.swiper-container-horizontal>.swiper-pagination-progressbar.swiper-pagination-progressbar-opposite,.swiper-container-vertical>.swiper-pagination-progressbar{width:4px;height:100%;left:0;top:0}.swiper-pagination-white .swiper-pagination-bullet-active{background:#fff}.swiper-pagination-progressbar.swiper-pagination-white{background:rgba(255,255,255,.25)}.swiper-pagination-progressbar.swiper-pagination-white .swiper-pagination-progressbar-fill{background:#fff}.swiper-pagination-black .swiper-pagination-bullet-active{background:#000}.swiper-pagination-progressbar.swiper-pagination-black{background:rgba(0,0,0,.25)}.swiper-pagination-progressbar.swiper-pagination-black .swiper-pagination-progressbar-fill{background:#000}.swiper-pagination-lock{display:none}.swiper-lazy-preloader{width:42px;height:42px;position:absolute;left:50%;top:50%;margin-left:-21px;margin-top:-21px;z-index:10;-webkit-transform-origin:50%;-ms-transform-origin:50%;transform-origin:50%;-webkit-animation:swiper-preloader-spin 1s steps(12,end) infinite;animation:swiper-preloader-spin 1s steps(12,end) infinite}.swiper-lazy-preloader:after{display:block;content:'';width:100%;height:100%;background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%236c6c6c'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E");background-position:50%;background-size:100%;background-repeat:no-repeat}.swiper-lazy-preloader-white:after{background-image:url("data:image/svg+xml;charset=utf-8,%3Csvg%20viewBox%3D'0%200%20120%20120'%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20xmlns%3Axlink%3D'http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink'%3E%3Cdefs%3E%3Cline%20id%3D'l'%20x1%3D'60'%20x2%3D'60'%20y1%3D'7'%20y2%3D'27'%20stroke%3D'%23fff'%20stroke-width%3D'11'%20stroke-linecap%3D'round'%2F%3E%3C%2Fdefs%3E%3Cg%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(30%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(60%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(90%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(120%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.27'%20transform%3D'rotate(150%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.37'%20transform%3D'rotate(180%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.46'%20transform%3D'rotate(210%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.56'%20transform%3D'rotate(240%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.66'%20transform%3D'rotate(270%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.75'%20transform%3D'rotate(300%2060%2C60)'%2F%3E%3Cuse%20xlink%3Ahref%3D'%23l'%20opacity%3D'.85'%20transform%3D'rotate(330%2060%2C60)'%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E")}@-webkit-keyframes swiper-preloader-spin{100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes swiper-preloader-spin{100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.swiper-container-fade.swiper-container-free-mode .swiper-slide{-webkit-transition-timing-function:ease-out;-o-transition-timing-function:ease-out;transition-timing-function:ease-out}.swiper-container-fade .swiper-slide{pointer-events:none;-webkit-transition-property:opacity;-o-transition-property:opacity;transition-property:opacity}.swiper-container-fade .swiper-slide .swiper-slide{pointer-events:none}.swiper-container-fade .swiper-slide-active,.swiper-container-fade .swiper-slide-active .swiper-slide-active{pointer-events:auto}

/*============================================================================
  #Critical path helpers
==============================================================================*/

/* Hidden general content until rest of styling loads */
.visible-when-content-ready{
	visibility: hidden!important;
}
.display-when-content-ready{
	display: none!important;
}

/*============================================================================
  #Components
==============================================================================*/

{# /* // Wrappers */ #}

body{
  margin: 0;
  font-size: 14px;
}

{# /* // Grid */ #}

.row-grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  margin-right: -10px;
  margin-left: -10px;
}

.col-grid {
  padding-right: 10px;
  padding-left: 10px;
}

{# /* // Placeholders and preloaders */ #}

.placeholder-line-medium{
  height: 25px;
  // border-radius: 6px;
}
.placeholder-icon{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
} 
.placeholder-full-height{
  position: relative;
  height: 100%;
}
.home-placeholder-icons{
  position: absolute;
  top: calc(50% - 75px);
}
.product-placeholder-container{
  position: relative;
  max-height: 900px;
  margin-bottom: 20px;
  overflow: hidden;
}
.placeholder-shine{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.5;
  -moz-animation: placeholder-shine 1.5s infinite;
  -webkit-animation: placeholder-shine 1.5s infinite;
  animation: placeholder-shine 1.5s infinite;
}
@keyframes placeholder-shine {
  0%{
    opacity: 0.1;
  }
  50% {
    opacity: 0.5;
  }
  100% {
    opacity: 0.1;
  }
}
.placeholder-fade{
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.1;
  -moz-animation: placeholder-fade 1.5s infinite;
  -webkit-animation: placeholder-fade 1.5s infinite;
  animation: placeholder-fade 1.5s infinite;
}
@keyframes placeholder-fade {
  0%{
    opacity: 0.2;
  }
  50% {
    opacity: 0.5;
  }
  100% {
    opacity: 0.2;
  }
}
.blur-up {
  position: absolute;
  top: 0;
  -webkit-filter: blur(4px);
  filter: blur(4px);
  -moz-filter: blur(4px);
  -ms-filter: blur(4px);
  -o-filter: blur(4px);
  transition: opacity .2s, -webkit-filter .2s;
}
.blur-up-huge {
  -webkit-filter: blur(6px);
  filter: blur(6px);
  -moz-filter: blur(6px);
  -ms-filter: blur(6px);
  -o-filter: blur(6px);
  transition: filter .2s, -webkit-filter .2s;
}
.blur-up.lazyloaded,
.blur-up-huge.lazyloaded,
.blur-up.swiper-lazy-loaded,
.blur-up-huge.swiper-lazy-loaded {
  -webkit-filter: none;
  filter: none;
  -moz-filter: none;
  -ms-filter: none;
  -o-filter: none;
}
.preloader-bg-img,
.product-slider-image.blur-up{
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  -webkit-filter: blur(4px);
  filter: blur(4px);
  -moz-filter: blur(4px);
  -ms-filter: blur(4px);
  -o-filter: blur(4px);
  transition: filter .2s, -webkit-filter .2s, opacity .2s;
  /* Avoid strange image behaviour on filters in IOS */
  -webkit-perspective: 1000;
  -webkit-backface-visibility: hidden;
}
.product-slider-image.blur-up{
  left: 50%;
  width: auto;
}
.swiper-lazy-loaded + .preloader-bg-img,
.lazyloaded + .blur-up{
  opacity: 0;
  -webkit-filter: none;
  filter: none;
  -moz-filter: none;
  -ms-filter: none;
  -o-filter: none;
}

.lazyloaded + .blur-up {
  opacity: 0;
  pointer-events: none;
}
.lazyloaded + .placeholder-shine,
.lazyloaded + .placeholder-fade,
.swiper-lazy-loaded + .placeholder-shine,
.swiper-lazy-loaded + .placeholder-fade{
  display: none;
}
.fade-in {
  opacity: 0;
  transition: opacity .2s;
}
.fade-in.lazyloaded,
.fade-in.swiper-lazy-loaded {
  opacity: 1;
}

.spinner {
  position: relative;
  display: grid;
  place-items: center;
}

.spinner::before,
.spinner::after {
  content: '';
  box-sizing: border-box;
  position: absolute;
}

.spinner::before {
  width: 100%;
  height: 2px;
  // border-radius: 10px;
  animation: spinner-line 0.8s cubic-bezier(0, 0, 0.03, 0.9) infinite;
}

.spinner-small::before {
  height: 2px;
}

@keyframes spinner-line {
  0%, 44%, 88.1%, 100% {
    transform-origin: left;
  }
  
  0%, 100%, 88% {
    transform: scaleX(0);
  }
  
  44.1%, 88% {
    transform-origin: right;
  }
  
  33%, 44% {
    transform: scaleX(1);
  }
}

{# /* // Animations*/ #}

.transition-up,
.fade-in-vertical {
  opacity: 0;
}

[data-transition="fade-in-up"] { 
  transition: all 1s ease;
  opacity: 0;
  transform: translateY(30px);
}
[data-transition="fade-in-up"].is-inViewport,
.swiper-slide-duplicate [data-transition="fade-in-up"] { 
  transition: all 1s ease;
  opacity: 1;
  transform: translateY(0px);
}

{# /* // Buttons */ #}

.btn-whatsapp {
  position: fixed;
  bottom: 15px;
  right: 15px;
  z-index: 100;
  color: white;
  background-color:#4DC247;
  box-shadow: 0 0 6px rgba(0,0,0,0.3);
  border-radius: 50%;
}

.btn-consultor {
  width: 100%;
  text-align: center;
  padding: 14px 16px;
  background: #4DC247;
  color: #FCFAFB;
  font-size: 14px;
}

.btn-whatsapp svg{
  width: 45px;
  height: 45px;
  padding: 10px;
  fill: white;
  vertical-align:middle;
}

.btn-cupom {
  position: fixed;
  bottom: 70px;
  right: 15px;
  z-index: 100;
  color: white;
  background-color:#6244bb;
  box-shadow: 0 0 6px rgba(0,0,0,0.3);
  border-radius: 50%;
  cursor: pointer;
}

.btn-cupom svg{
  width: 45px;
  height: 45px;
  padding: 10px;
  fill: white;
  vertical-align:middle;
}


{# /* // Links */ #}

a {
  text-decoration: none;
}


{# /* // Icons */ #}

.icon-inline {
  display: inline-block;
  font-size: inherit;
  height: 1em;
  overflow: visible;
  vertical-align: -.125em;
}

.icon-xs {
  font-size: .75em;
}
.icon-md  {
  font-size: .875em; 
}
.icon-lg {
  font-size: 1.33333em;
  line-height: .75em;
  vertical-align: -.0667em; 
}
.icon-2x {
  font-size: 2em;  
}
.icon-2x-half {
  font-size: 2.5em; 
}
.icon-3x {
  font-size: 3em; 
}
.icon-4x {
  font-size: 4em;  
}
.icon-5x {
  font-size: 5em;  
}
.icon-6x {
  font-size: 6em;  
}
.icon-7x {
  font-size: 7em; 
}
.icon-8x {
  font-size: 8em;  
}
.icon-9x {
  font-size: 9em;  
}

.icon-inline.icon-lg{
  vertical-align: -.225em
}
.icon-inline.icon-w {
  text-align: center;
  width: 1.25em
}
.icon-inline.icon-w-1{
  width:.0625em
}
.icon-inline.icon-w-2{
  width:.125em
}
.icon-inline.icon-w-3{
  width:.1875em
}
.icon-inline.icon-w-4{
  width:.25em
}
.icon-inline.icon-w-5{
  width:.3125em
}
.icon-inline.icon-w-6{
  width:.375em
}
.icon-inline.icon-w-7{
  width:.4375em
}
.icon-inline.icon-w-8{
  width:.5em
}
.icon-inline.icon-w-9{
  width:.5625em
}
.icon-inline.icon-w-10{
  width:.625em
}
.icon-inline.icon-w-11{
  width:.6875em
}
.icon-inline.icon-w-12{
  width:.75em
}
.icon-inline.icon-w-13{
  width:.8125em
}
.icon-inline.icon-w-14{
  width:.875em
}
.icon-inline.icon-w-15{
  width:.9375em
}
.icon-inline.icon-w-16{
  width:1em
}
.icon-inline.icon-w-17{
  width:1.0625em
}
.icon-inline.icon-w-18{
  width:1.125em
}
.icon-inline.icon-w-19{
  width:1.1875em
}
.icon-inline.icon-w-20{
  width:1.25em
}
.icon-spin{
  -webkit-animation:icon-spin .5s infinite linear;
  animation:icon-spin .5s infinite linear
}
@-webkit-keyframes icon-spin {
  0% {
    -webkit-transform: rotate(0);
    transform: rotate(0)
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg)
  }
}

@keyframes icon-spin {
  0% {
    -webkit-transform: rotate(0);
    transform: rotate(0)
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg)
  }
}

.social-icon {
  padding: 0 10px;
  margin-right: 15px;
}

{# /* // Titles and breadcrumbs */ #}

.h1-huge {
  font-size: 40px;
}

h1,
.h1 {
  font-size: 28px;
  font-weight: 400;
}

h2,
.h2 {
  font-size: 24px;
  font-weight: 400;
}

h3,
.h3 {
  font-size: 20px;
  font-weight: 400;
}

h4,
.h4 {
  font-size: 18px;
  font-weight: 400;
}

h5,
.h5 {
  font-size: 16px;
  font-weight: 400;
}

h6,
.h6 {
  font-size: 14px;
  font-weight: 400;
}

.breadcrumbs {
  display: inline-block;
  margin-bottom: 10px;
  font-size: 10px;
  font-weight: 400;
}
.breadcrumbs .separator {
  margin: 3px;
  line-height: 14px;
  opacity: 0.6;
}
.breadcrumbs .crumb{
  opacity: 0.6;
}
.breadcrumbs .crumb.active {
  opacity: 1;
}

{# /* // Texts */ #}

.font-big{
  font-size: 16px;
}

.font-body{
  font-size: 14px!important;
}

.font-small{
  font-size: 12px!important;
}

small[data-component="name.short-variant-name"] {
  font-size: 14px;
  background: #FFC82C;
  font-weight: 700;
  display: block;
  text-align: center;
  padding: 4px;
}

.font-smallest{
  font-size: 10px!important;
}

p{
  margin-top: 0;
  line-height: 20px;
}

.user-content ul {
  padding-left: 20px;
}

.user-content ul li {
  margin-bottom: 10px;
  line-height: 22px;
}

.user-content table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 10px;
  line-height: 22px;
}

.subtitle {
  font-size: 10px;
  text-transform: uppercase;
  letter-spacing: 1px;
}

{# /* // Sliders */ #}

.nube-slider-home {
  height: 100%;
}
.swiper-wrapper.disabled {
  transform: translate3d(0px, 0, 0) !important;
}
.slide-container{
  overflow: hidden;
}
.slider-slide {
  height: 100%;
  background-position: center;
  background-size: cover; 
  overflow: hidden;
}
.slider-image {
  position: relative;
  z-index: 1;
  display: block;
  width: 100%;
  height: 100%;
  object-fit: fill;
}
.swiper-slide-active .slider-image-animation {
  -webkit-animation: zoomin 20s ease forwards;
  -moz-animation: zoomin 20s ease forwards;
  animation: zoomin 20s ease forwards; 
}

@-webkit-keyframes zoomin {
  0% {
    -webkit-transform: scale(1);
    transform: scale(1);
  }
  100% {
    -webkit-transform: scale(1.2);
    transform: scale(1.2);
  }
}

@keyframes zoomin {
  0% {
    -webkit-transform: scale(1);
    transform: scale(1);
  }
  100% {
    -webkit-transform: scale(1.2);
    transform: scale(1.2);
  }
}

.swiper-button-next,
.swiper-button-prev {
  position: relative;
  top: initial;
  margin: 0;
  line-height: 28px;
}
.swiper-button-absolute {
  position: absolute;
  top: 50%;
  margin-top: -14px;
}

.swiper-button-absolute.swiper-button-next {
  right: 0;
}
.swiper-button-absolute.swiper-button-prev {
  left: 0;
}

.swiper-pagination {
  left: 50%;
  transform: translateX(-50%);
}

.swiper-pagination-bullet {
  margin: 0 4px;
  // border-radius: 6px;
}

.swiper-pagination-bullet-active {
  width: 12px;
}

.swiper-text {
  position: absolute;
  z-index: 9;
  width: 100%;
}

.swiper-text-center {
  position: absolute;
  width: 92%;
  top: 50%;
  bottom: auto;
  left: 50%;
  padding: 0 25px;
  text-align: center;
  transform: translate(-50%,-50%);
}

.swiper-arrows {
  position: absolute;
  right: 15px;
  bottom: 60px;
}

.swiper-overlay {
  position: absolute;
  z-index: 1;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 50%;
}

.swiper-button-next.swiper-button-disabled, 
.swiper-button-prev.swiper-button-disabled {
  opacity: 0.2;
}

{# /* // Lists */ #}

.list {
  padding: 0;
  list-style-type: none;
}
.list .list-item{
  position: relative;
  margin-bottom: 10px;
  cursor: default;
}

.list-unstyled{
  padding: 0;
  margin: 0;
  list-style-type: none;
}

.list-inline li{
  display: inline-flex;
}

{# /* // Notifications */ #}

.notification{
  padding: 10px 15px;
  text-align: center;
}
.notification-floating {
  position: absolute;
  left: 0;
  z-index: 2000;
  width: 100%;
}
.notification-fixed {
  position: fixed;
  right: 0;
  left: initial;
  width: calc(100% - 20px);
  margin-top: -10px;
}
.notification-floating .notification{
  margin: 15px;
  // border-radius: 6px;
}
.notification-close {
  padding: 0 5px;
}
.notification-centered {  
  display: inline-block;
  width: 100%;
  margin: 0 20px 20px 0;
  text-align: center;
}
.notification-left {
  display: inline-block;
  margin: 5px 0 20px 0;
  text-align: left;
  font-size: 12px;
}

.notification-fixed-bottom {
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 999;
  width: 100%;
}

.notification-above {
  z-index: 40000;
}

{# /* // Badge */ #}

.badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 0 5px;
  font-size: 11px;
  font-weight: bold;
  line-height: 14px;
  // border-radius: 10px;
}

{# /* // Tooltip */ #}

.tooltip {
  position: absolute;
  left: -170%;
  z-index: 9999;
  width: 340px;
  padding: 15px 5px;
  text-align: center;
  // border-radius: 10px;
}

.tooltip-top {
  bottom: calc(100% + 20px);
}

.tooltip-bottom {
  top: 95%;
}

.tooltip-arrow {
  position: absolute;
  right: 30%;
  width: 0;
  height: 0;
  pointer-events: none;
}

.tooltip-bottom .tooltip-arrow {
  top: -8px;
  right: 15%;
}

.tooltip-top .tooltip-arrow {
  bottom: -8px;
  transform: rotate(180deg);
}

{# /* // Images */ #}

/* Used for images that have a placeholder before it loads. The image container should have a padding-bottom inline with the result of (image height/ image width) * 100 */
.img-absolute {
  position: absolute;
  left: 0;
  width: 100%;
  height: auto;
  vertical-align: middle;
  text-indent: -9999px;
  z-index: 1;
}

.img-absolute-centered{
  left: 50%;
  transform: translateX(-50%)!important;
  -webkit-transform: translateX(-50%)!important;
  -ms-transform: translateX(-50%)!important;
}

.card-img{
  margin: 0 5px 5px 0;
  border: 1px solid #1f1f1f12;
}
.card-img-small{
  height: 25px;
}
.card-img-medium{
  height: 35px;
}
.card-img-big{
  height: 50px;
}
.card-img-square-container {
  position: relative;
  width: 100%;
  padding-top: 100%;
}
.card-img-square {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.card-img-pill {
  position: absolute;
  right: 5px;
  bottom: 5px;
  z-index: 999;
  padding: 4px 9px;
  font-size: 10px;
  // border-radius: 15px;
}

{# /* // Forms */ #}

.form-group {
  position: relative;
  width: 100%;
}
.form-group .form-select-icon{
  position: absolute;
  right: 12px;
  bottom: 10px;
  font-size: 18px;
  pointer-events: none;
}
.form-group-small .form-select-icon{
  bottom: 10px;
  right: 10px;
  font-size: 12px;
}
.form-row {
  width: auto;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -5px;
  margin-left: -5px;
  clear: both;
}

.form-row > .col,
.form-row > [class*=col-]{
  padding-right: 5px;
  padding-left: 5px;
}

.form-label {
  font-size: 12px;
}

.form-label-divider {
  padding: 10px 0;
  margin-bottom: 10px;
}

.form-toggle-eye {
  position: absolute;
  top: 26px;
  right: 2px;
  display: inline-block;
  padding: 10px;
  background: none;
  border: 0;
}

.checkbox-container .checkbox {
  position: relative;
  display: block;
  margin-bottom: 15px;
  padding-left: 25px;
  font-weight: normal;
  text-decoration: none;
  transition: all 0.4s ease;
  cursor: pointer;
}

.checkbox-container .checkbox-icon {
  position: absolute;
  top: 1px;
  left: 0;
  display: block;
  width: 16px;
  height: 16px;
  // border-radius: 100%;
}

.checkbox-container .checkbox-icon:after {
  position: absolute;
  top: 2px;
  left: 5px;
  display: none;
  width: 4px;
  height: 9px;
  content: '';
  transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
}

.checkbox-container .checkbox-text.with-color {
  padding-right: 5px;
}

.checkbox-container .checkbox-color {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin-top: 4px;
  vertical-align: top;
  // border-radius: 50%;
}

.checkbox-container input{
  display: none;
}

.checkbox-container input:checked ~ .checkbox {
  opacity: 1;
}

.checkbox-container input:checked ~ .checkbox .checkbox-icon:after {
  display: block;
}

{# /* // Video */ #}

.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive.embed-responsive-1by1 {
  padding-bottom: 140%;
}
.embed-responsive .embed-responsive-item,
.embed-responsive embed,
.embed-responsive iframe,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: 0;
}
.video-player {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  width: 100%;
  height: 100%;
  cursor: pointer;
}
.video-player-icon {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 40px;
  height: 40px;
  margin: -20px 0 0 -20px;
  padding-left: 3px;
  font-size: 20px;
  line-height: 36px;
  text-align: center;
  // border-radius: 100%;
  pointer-events: none;
}
.video-player-icon-small {
  width: 24px;
  height: 24px;
  margin: -12px 0 0 -12px;
  padding-left: 2px;
  font-size: 13px;
  line-height: 21px;
}
.video-image {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 100%;
  height: auto;
  transform: translate(-50%, -50%);
  -webkit-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}

/*============================================================================
  #Header and nav
==============================================================================*/

.head-main {
  top: 0;
  width: 100%;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  z-index: 1040;  
}

.head-main .btn-utility {
  padding: 0;
  box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, .25);
}

.head-main .search-input {
  font-size: 12px;
  box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, .25);
}

.btn-utility .cart-icon {
  vertical-align: text-top;
}

.col-utility {
  padding-left: 5px;
}

{# /* // Adbar & Topbar */ #}

.section-adbar,
.section-topbar {
  z-index: 0;
  width: 100%;
  min-height: 30px;
  padding: 5px 15px;
}

.section-adbar {
  line-height: 20px;
}

.section-topbar .utilities-icon {
  font-size: 16px;
}

.section-topbar .list {
  margin: 0;
}

@keyframes marquee {
  0% {
    transform: translateX(0);
    -webkit-transform: translateX(0);
  }
  100% {
    transform: translateX(-100%);
    -webkit-transform: translateX(-100%);
  }
}

.secondary-menu-item {
  display: inline-block;
  margin-right: 30px;
  font-size: 12px;
}

{# /* // Nav */ #}

.menu-and-banners-row {
  visibility: hidden;
}

.nav-desktop {
  position: relative;
  width: 100%;
}
.nav-desktop-list {
  margin: 0;
  padding: 10px 0;
  list-style: none;
  white-space: nowrap!important;
}
.nav-desktop-list::-webkit-scrollbar {
  height: 0;
}
.nav-desktop-with-scroll {
  margin: 0 30px 0 40px;
  padding: 10px 0;
  overflow: scroll;
}

.nav-desktop-list-arrow {
  position: absolute;
  top: 0;
  width: 40px;
  height: 48px;
  cursor: pointer;
}

.nav-desktop-list-arrow-left {
  left: 0;
}

.nav-desktop-list-arrow-right {
  right: 0;
}

.nav-desktop-list-arrow.disable {
  opacity: 0.2;
  cursor: initial; 
}

.nav-desktop-list-arrow .svg-circle {
  width: 25px;
  height: 25px;
  margin-top: calc(50% - 8px);
  padding: 5px;
}

{% endraw %}
  {% if settings.logo_position_desktop != 'center' %}
    .nav-desktop-list li:first-of-type {
      padding-left: 0;
    }
  {% endif %}
{% raw %}

.nav-item {
  display: inline-block;
  position: initial;
  padding: 0 10px;
  white-space: normal;
}
.nav-list-link {
  padding: 0 5px 0 0;
  line-height: 30px;
}

.desktop-dropdown {
  position: absolute;
  top: 100%;
  left: -15px;
  width: 100%;
  overflow-y: auto;
}

.nav-categories {
  overflow-x: scroll;
}
.nav-list-mobile-categories {
  margin: 4px 0;
  padding: 0 15px;
  white-space: nowrap!important;
}

.utilities-icon {
  font-size: 20px;
}

.nav-dropdown-content {
  visibility: hidden;
  opacity: 0;
  transition: visibility 0s linear .3s, opacity .3s linear;
}

.utilities-container .nav-dropdown-content {
  pointer-events: none;
}

.login-header {
  display: flex;
  gap: 8px;
  align-items: center;
  justify-content: flex-end;
}

.login-header .icon-login {
  background: #6244BB;
  width: 40px;
  display: flex;
  height: 40px;
  align-items: center;
  justify-content: center;
  fill: #FCFAFB;
  stroke: #FCFAFB;
}

	@media (max-width: 768px) { 
    .login-header .icon-login {
      background: #6244BB;
      fill: #fcfafb;
      stroke: #fcfafb;
    }

    .order-2, .order-first {
      width: 100px;
    }

    .login-header {
      gap: 4px;
    }
	}

.head-banners {
  padding: 10px 0;
}

.head-banners .btn-link {
  font-size: 13px;
}

.head-banner-item-image {
  width: 20px;
}

{# /* // Logo */ #}

.logo-text-container {
  display: inline-block;
  max-width: 450px;
  margin: 15px 0;
}

.logo-img,
.logo-text{
  width: auto;
  height: auto;
  margin: 12px 0;
  vertical-align: middle;
  max-height: 45px;
  {% endraw %}  
    {% if (settings.logo_position_mobile == 'center' and not settings.search_big_mobile) %}
      {# Padding added to keep logo centered when nav has 1 icon on left and 2 icons on right #}
      max-width: 100%;
      padding-left: 40px;
    {% else %}
      max-width: 90%;
    {% endif %}
  {% raw %}
}

{# /* // Cart widget and search */ #}

.search-input-submit {
  position: absolute;
  top: 3px;
  right: 6px;
  padding: 7px 10px;
  background: none;
  border: 0;
}

.subutility-list {
  display: none;
}
   

/*============================================================================
  #Home Page
==============================================================================*/

{# /* // Sections title */ #}

.section-title {
  padding: 40px 0;
}

{# /* // Video */ #}

.home-video-text {
  position: absolute;
  bottom: 40px;
  z-index: 999;
  width: 90%;
}
.home-video-overlay:after {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 100%;
  content: '';
}
.home-video-image {
  position: absolute;
  top: 0;
  z-index: 1;
  width: 100%;
  height: 100%;
  object-fit: cover;
}
.home-video .placeholder-shine {
  z-index: 9;
}
.home-video video {
  position: relative;
  object-fit: cover;
  object-position: 50% 20%;
  font-family: "object-fit: cover";
}
.home-video iframe {
  position: absolute;
  top: 0;
  left: -100%;
  width: 300%;
  max-width: none;
}
.home-video-hide-controls {
  position: absolute;
  top: 0;
  z-index: 99;
  width: 100%;
  height: 100%;
}

{# /* // Main categories */ #}

.section-categories-home {
  padding: 25px 0;
}

.home-category {
  display: inline-block;
  width: 110px;
  // border-radius: 6px;
  overflow: hidden;
}

.home-category-image {
  position: relative;
  width: 100%;
  height: 110px;
  margin: 0 auto;
  text-align: center;
  overflow: hidden;
}

.home-category-image img {
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 9;
  width: 100%;
  height: 100%;
  transform: translate(-50%, -50%);
  object-fit: cover;
}

.home-category-name {
  padding: 7px 0;
  font-size: 12px;
  text-overflow: ellipsis;
  overflow: hidden;
  -webkit-line-clamp: 2;
  display: none;
  -webkit-box-orient: vertical;
}

.home-banner-category-name {
  padding: 7px 0;
  font-size: 14px;
  text-overflow: ellipsis;
  overflow: hidden;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}

{# /* // Featured products */ #}

.featured-product-image {
  height: 100%;
  // border-radius: 6px 6px 0 0;
  overflow: hidden;
}

.featured-product-image img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.featured-product-container {
  height: 100%;
  {% endraw %}
  {% if settings.featured_products_format != 'grid' and "featured_products_image.jpg" | has_custom_image %}
    padding: 20px 0 20px 20px;
  {% else %}
    padding: 20px;
  {% endif %}
  {% raw %}
  // border-radius: 0 0 6px 6px;
}

.featured-product-container .swiper-container {
  width: calc(100% + 15px);
  margin-right: -15px;
}

{# /* // Welcome message */ #}

.section-welcome-home {
  padding: 70px 0;
}

/*============================================================================
  #Banners
==============================================================================*/

{# /* // Home banners */ #}

.section-banners-home {
  padding: 50px 0;
}

.textbanner {
  position: relative;
  overflow: hidden;
}
.textbanner.textbanner-no-border {
  border: 0;
  border-radius: 0;
}
.textbanner-link {
  display: block;
  width: 100%;
  height: 100%;
}
.textbanner-image {
  position: relative;
  padding-top: 50%;
  overflow: hidden;
}
.textbanner-text {
  position: relative;
  padding: 20px 15px;
}
.textbanner-text.over-image {
  position: absolute;
  bottom: 0;
  z-index: 9;
  width: 100%;
  border: 0;
}
.textbanner-paragraph {
  display: -webkit-box;
  margin: 10px 0;
  font-size: 12px;
  overflow: hidden;
  text-overflow: ellipsis;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
}

.textbanner .textbanner-image.overlay.textbanner-image-empty {
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 1440 770'><rect width='1440' height='770' fill='%23fcfcfc'/><path d='M852.28,303.08a17.11,17.11,0,0,0-11.62-6.15l-80.84-7.56-10.51-46a17.22,17.22,0,0,0-20.6-12.91l-152.45,34.5a17.19,17.19,0,0,0-13,20.51L599.57,444.3a17.22,17.22,0,0,0,20.6,12.91L652.06,450l-1,10.19a17.23,17.23,0,0,0,15.52,18.68l155.54,14.56c.55.05,1.09.07,1.62.07A17.19,17.19,0,0,0,840.89,478l2.76-29.35a1,1,0,0,0,.17-1.77l12.35-131.22A17,17,0,0,0,852.28,303.08ZM567.2,273.61a15.08,15.08,0,0,1,9.5-6.73l152.45-34.5a15.22,15.22,0,0,1,18.21,11.4l10.37,45.39-72.61-6.79a17.21,17.21,0,0,0-18.74,15.47l-1.59,16.89-28.65-18.83a1,1,0,0,0-1.39.29,1,1,0,0,0,.29,1.38L664.58,317,657,397.89l-62.69,14.27L565.24,285A15,15,0,0,1,567.2,273.61ZM737.9,424.37a1,1,0,0,0,1.41.19l71.12-54.77L845.6,402.6a1,1,0,0,0,.36.21l-4.12,43.71L656.2,427.36l4.49-47.66a.94.94,0,0,0,.86-.1l67.93-45.68,51.61,55.93-43,33.12A1,1,0,0,0,737.9,424.37ZM619.73,455.26a15.23,15.23,0,0,1-18.21-11.41l-6.79-29.74,62-14.13-2.61,27.76a1.12,1.12,0,0,0-.14.4,1,1,0,0,0,.06.43l-1.82,19.33Zm219.17,22.5a15.21,15.21,0,0,1-16.55,13.67L666.81,476.88a15.22,15.22,0,0,1-13.72-16.5l2.92-31,185.64,19.16Zm15.28-162.34-8,85-35-32.67a1,1,0,0,0-1.3-.06l-27.2,20.95-52.31-56.7a1,1,0,0,0-1.3-.15l-68.19,45.86,7.5-79.6a15.2,15.2,0,0,1,16.55-13.67l155.54,14.55a15.22,15.22,0,0,1,13.71,16.5ZM788.4,325.69A12.21,12.21,0,0,0,786.12,350c.39,0,.77.05,1.15.05A12.22,12.22,0,0,0,799.41,339h0a12.19,12.19,0,0,0-11-13.29Zm9,13.1a10.2,10.2,0,1,1-10.17-11.15c.32,0,.64,0,1,0a10.2,10.2,0,0,1,9.21,11.11Zm-168.36,3.62a1,1,0,0,0,.55.17,1,1,0,0,0,.56-1.83L607.75,325.8a1,1,0,0,0-1.11,1.67Zm-78.72-42.54L38.33,49.46l.44-.9L550.78,299ZM39.58,724l-.44-.9,549.09-271.3.45.9Zm1364.65,1.75-.45-.22L870,463.38l.44-.89.45.22,533.77,262.13ZM870.51,307.35l-.44-.9L1402.64,44.84l.44.89Z' fill='%23ccc'/></svg>");
  background-position: center;
}

.textbanner-image-background {
  position: absolute;
  top: 0;
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

{# /* // Informative banners */ #}

.section-informative-banners {
  position: relative;
  padding: 90px 0 110px 0;
}

.service-pagination {
  bottom: 40px;
  width: 100%;
}

.service-pagination .swiper-pagination-bullet {
  margin: 0 4px;
}

/*============================================================================
  #Product grid
==============================================================================*/

{# /* // Category banner */ #}  

.category-banner {
  position: relative;
  height: 185px;
  overflow: hidden;
}
.category-banner-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.category-banner-info {
  padding: 15px;
}

{# /* // Category controls */ #}

.category-controls-container {
  padding: 0;
}

.category-controls-sticky-detector {
  height: 1px;
}

.category-controls {
  position: sticky;
  top: 0;
  z-index: 100;
  padding: 10px 15px;
  transition: all 0.3s ease;
}

.category-controls .page-header {
  margin-bottom: 0;
}

{# /* // Grid item */ #}

.item,
.card {
  margin-bottom: 20px;
  // border-radius: 6px;
  overflow: hidden;
  border: 0 !important;
  background: #ffffff !important;
}
.item-horizontal {
  height: 160px;
}
.item-description {
  padding: 15px 10px;
  text-align: center;
}
.item-image {
  position: relative;
  max-height: 1200px;
  overflow: hidden;
}
.item-image img{
  height: 100%;
  max-height: 1200px;
  object-fit: contain;
}
.item-horizontal .item-image {
  height: 160px;
}
.item-horizontal .item-image img{
  width: 100%;
  height: 160px;
  object-fit: cover;
}
.item-horizontal .item-description {
  padding: 10px 30px 10px 15px;
}
/* 
.item-horizontal .item-name {
  -webkit-line-clamp: 0;
} 
*/
.item-image-primary {
  z-index: 2;
  opacity: 1;
}
.item-image .item-image-secondary {
  opacity: 0;
}
.item-with-two-images:hover .item-image-primary {
  opacity: 0;
  transition-delay: .05s
}
.item-with-two-images:hover .item-image-secondary{
  opacity: 1;
}
.item-thumbnail {
  display: block;
  width: 100%;
}
.item-name {
  font-size: 14px;
  font-weight: 400;
  line-height: 130%;
  text-overflow: ellipsis;
  overflow: hidden;
  -webkit-line-clamp: 1;
  display: -webkit-box;
  -webkit-box-orient: vertical;
}
.item-price-container { 
  font-size: 12px;
  display: flex;
  flex-direction: column-reverse;
}
.item-price {
  font-size: 18px;
  font-weight: 600;
}
.price-compare {
  margin-left: 5px;
  text-decoration: line-through;
  text-decoration-color: red;
  opacity: .8;
}
.item-installments {
  font-size: 10px;
}

.tag-promo {
  font-size: 12px;
  text-align: center;
  padding: 4px 8px;
  background: #1f1f1f;
  color: #fcfafb;
  box-shadow: 0px 1px 2px rgba(0,0,0,.1);
}

{# /* // Labels */ #}

.label-discount{
  display: flex;  
  align-items: flex-end;
  justify-content: flex-start;
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  top: 0;
  pointer-events: none;
  z-index: 999;
}

.discount-percentage {
  display: flex;
  align-items: center;
	justify-content: center;
  margin: 15px;
  padding: 2px 8px;
  // border-radius: 6px;
	background-color: #d63939 !important;
  color: #fcfafb;
  font-size: 12px;
  font-weight: 600;
  pointer-events: all;
  z-index: 2;
  box-shadow: 0px 1px 2px rgba(0,0,0,.25);
}

.labels {
  pointer-events: none;
}

.labels-absolute {
  position: absolute;
  top: 10px;
  right: 10px;
  z-index: 9;
  text-align: left;
  pointer-events: none;
}

.label {
  width: fit-content;
  margin-bottom: 10px;
  padding: 4px 6px; 
  // border-radius: 6px;
  font-size: 10px;
  text-transform: uppercase;
}

.label-small {
  padding: 3px 6px; 
  // border-radius: 12px;
  font-size: 11px;
}

.labels-product-slider {
  bottom: 10px;
  left: 10px;
}

/*============================================================================
  #Product detail
==============================================================================*/

.box-info-artesanal {
  background: #FFE089;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 8px 16px;
  margin-bottom: 1rem;

  .icon-inline{
    font-size: 16px;
  }
}

{# /* // Image */ #}

.product-slider-image,
.quickshop-image {
  width: auto;
  height: 100%;
  max-width: 100%;
  // border-radius: 6px;
  object-fit: contain;
}

.swiper-product-thumb {
  overflow: hidden;
}

.swiper-product-thumb .swiper-slide {
  height: 100px;
  overflow: hidden;
}

.product-sku {
  font-size: 1rem;
  color: #1f1f1f;
}

.product-thumb {
  width: 100px;
}
.product-thumb img{
  display: block;
  width: 100%;
  height: 100px;
  // border-radius: 6px;
  object-fit: cover;
}

.product-description {
  max-height: 150px;
  overflow: hidden;
}

.product-description-full {
  max-height: fit-content;
}

.product-video-container {
  display: block;
  width: 100%;
  height: 100%;
  // border-radius: 6px;
  overflow: hidden;
}
.product-video {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
}
.product-video .embed-responsive {
  width: 100%;
  height: 100%;
}
.product-video .video-image{
  width: auto;
  height: 100%;
}
/*============================================================================
  #Cart detail
==============================================================================*/

{# /* // Shipping Calculator */ #}

.free-shipping-title {
  position: relative;
  width: 100%;
  height: 40px;
}
.shipping-calculator-head.with-zip {
  height: 55px;
}
.shipping-calculator-head.with-zip.with-free-shipping {
  height: 95px;
}
.shipping-calculator-head.with-form {
  height: 90px;
}
.shipping-calculator-head.with-form + .shipping-spinner-container {
  margin-top: -20px;
}
.shipping-calculator-head.with-error {
  height: 150px;
}

/*============================================================================
  #Contact page
==============================================================================*/

{# /* // Data contact */ #}

.contact-info {
  margin-top: 10px;
  padding-left: 0;
}

.contact-icon {
  display: block;
  margin: 0 auto 10px auto;
}

.contact-item {
  list-style: none;
}

.contact-link {
  list-style: none;
}

/*============================================================================
  #Media queries
==============================================================================*/

{# /* // Min width 1400px */ #}

@media (min-width: 1400px) {
  .container {
    max-width: 1300px;
  }
}

{# /* // Min width 768px */ #}

@media (min-width: 768px) { 

  {# /* //// Components */ #}

  .col-md-2-4 {
    -ms-flex: 0 0 20%;
    flex: 0 0 20%;
    max-width: 20%;
  }

  {# /* Titles and breadcrumbs */ #}

  .h1-huge {
    font-size: 54px;
  }

  .h1-md {
    font-size: 28px;
    font-weight: 400;
  }

  .font-md-body {
    font-size: 14px!important;
  }

  {# /* Forms */ #}

  .checkbox-container .checkbox {
    margin-bottom: 20px;
  }

  {# /* Slider */ #}

  .swiper-text {
    max-width: 800px;
  }

  .home-video-text {
    bottom: 60px;
  }

  {% endraw %}
  {% if settings.featured_products_format != 'grid' and "featured_products_image.jpg" | has_custom_image %}
    {# /* // Featured products */ #}

    .featured-product-image {
      // border-radius: 6px 0 0 6px;
    }

    .featured-product-container {
      padding: 20px;
      // border-radius: 0 6px 6px 0;
    }

    .featured-product-container .swiper-container {
      width: 100%;
      margin: 0;
    }
  {% endif %}
  {% raw %}

  {# /* Notifications */ #}

  .notification-floating{
    margin-top: -10px;
  }

  .notification-fixed {
    right: 10px;
    width: 25%;
  }

  .notification-fixed-bottom {
    bottom: 0;
  }

  {# /* //// Header and nav */ #}

  .section-adbar,
  .notification-order {
    order: 1;
  }

  .logo-img,
  .logo-text{
    width: auto;
    height: auto;
    max-height: 80px;
    max-width: 80%;
    margin: 16px 0;
    padding-left: 0;
  }

  .btn-whatsapp {
    bottom: 15px;
  }

  {% endraw %}

    {# Logo offset to keep centered #}

    {% if settings.logo_position_desktop == 'center' %}
      .col-utility-cart {
        width: fit-content;
      }
      .logo-md-offset {
        margin-left: -50px;
      }
    {% endif %}

  {% raw %}

  .utilities-text {
    margin-left: 5px;
    font-size: 12px;
  }

  .col-utility {
    z-index: 1;
  }

  .embed-responsive.embed-responsive-1by1 {
    padding-bottom: 56.25%;
  }

  .search-controls-wrapper {
    position: relative;
    width: 250px;
  }

  .search-container {
    width: 250px;
  }

  .head-main .search-input {
    padding-top: 12px;
    padding-bottom: 12px;
    font-size: 14px;
    box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, .25);
  }

  .search-input-submit {
    top: 3px;
    padding: 8px 10px;
    font-size: 15px;
  }

  .search-container-floating {
    position: absolute;
    top: 0;
    {% endraw %}
      {% if settings.logo_position_desktop == 'center' %}
        left: 0;
      {% else %}
        right: 0;
      {% endif %}
    {% raw %}
    width: 52px;
    opacity: 0;
    transition: all 0.3s ease;
    pointer-events: none;
  }

  .search-container-floating.expanded {
    width: 250px;
    opacity: 1;
    pointer-events: auto;
  }

  .home-category {
    width: 140px;
  }

  .home-category-image {
    height: 140px;
	filter: drop-shadow(0px 1px 2px rgba(0,0,0,.25));
  }

  .textbanner-image .textbanner-text {
    padding: 30px 15px;
  }

  .badge {
    position: relative;
    top: initial;
    right: initial;
    width: auto;
    margin: 0 -2px;
    padding: 0;
    font-size: 12px;
    font-weight: normal;
  }

  .head-main .btn-utility {
    display: inline-block;
    padding: 10px 15px;
    font-size: 12px;
    box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, .25);
  }

  .btn-utility .cart-icon {
    vertical-align: bottom;
  }

  {# /* //// Product grid */ #}

  .category-controls-container {
    padding: 0 15px;
  }

  .category-controls {
    {% endraw %}
      {% if settings.filters_desktop_modal %}
        padding: 15px;
      {% else %}
        padding: 15px 0 10px 0;
      {% endif %}
    {% raw %}
  }
  .category-controls-row {
    align-items: flex-end;
  }
  .filter-chips-container {
    align-items: flex-end;
  }

  .labels-product-slider{
    top: 30px;
    right: 10px;  
    left: initial;
  }

  .labels-product-slider .label {
    margin: 0 0 10px 0;
  }

  .category-banner {
    height: 250px;
  }

  .category-banner-info {
    padding: 40px;
  }

  {# /* //// Product detail */ #}

  .product-thumb {
    width: 100%;
    height: auto;
  }

  .product-thumb img {
    height: 100%;
  }

  .product-video-container {
    padding: 0;
  }

  .swiper-product-thumb {
    height: 510px;
    overflow: hidden;
  }

  .swiper-product-thumb .swiper-slide {
    height: auto;
  }

}
/*============================================================================
  #Helper classes
==============================================================================*/

/*CSS properties helpers minified, to unminify it you have to copy the code and paste it here http://unminify.com/, after that paste the unminified code here */

{# /* // Margin and padding */ #}
.m-0{margin:0!important}.mt-0,.my-0{margin-top:0!important}.mr-0,.mx-0{margin-right:0!important}.mb-0,.my-0{margin-bottom:0!important}.ml-0,.mx-0{margin-left:0!important}.m-1{margin:.25rem!important}.mt-1,.my-1{margin-top:.25rem!important}.mr-1,.mx-1{margin-right:.25rem!important}.mb-1,.my-1{margin-bottom:.25rem!important}.ml-1,.mx-1{margin-left:.25rem!important}.m-2{margin:.5rem!important}.mt-2,.my-2{margin-top:.5rem!important}.mr-2,.mx-2{margin-right:.5rem!important}.mb-2,.my-2{margin-bottom:.5rem!important}.ml-2,.mx-2{margin-left:.5rem!important}.m-3{margin:1rem!important}.mt-3,.my-3{margin-top:1rem!important}.mr-3,.mx-3{margin-right:1rem!important}.mb-3,.my-3{margin-bottom:1rem!important}.ml-3,.mx-3{margin-left:1rem!important}.m-4{margin:1.5rem!important}.mt-4,.my-4{margin-top:1.5rem!important}.mr-4,.mx-4{margin-right:1.5rem!important}.mb-4,.my-4{margin-bottom:1.5rem!important}.ml-4,.mx-4{margin-left:1.5rem!important}.mt-3n{margin-top:-1rem!important}.mt-4n{margin-top:-1.5rem!important}.m-5{margin:3rem!important}.mt-5,.my-5{margin-top:3rem!important}.mr-5,.mx-5{margin-right:3rem!important}.mb-5,.my-5{margin-bottom:3rem!important}.ml-5,.mx-5{margin-left:3rem!important}.p-0{padding:0!important}.pt-0,.py-0{padding-top:0!important}.pr-0,.px-0{padding-right:0!important}.pb-0,.py-0{padding-bottom:0!important}.pl-0,.px-0{padding-left:0!important}.p-1{padding:.25rem!important}.pt-1,.py-1{padding-top:.25rem!important}.pr-1,.px-1{padding-right:.25rem!important}.pb-1,.py-1{padding-bottom:.25rem!important}.pl-1,.px-1{padding-left:.25rem!important}.p-2{padding:.5rem!important}.pt-2,.py-2{padding-top:.5rem!important}.pr-2,.px-2{padding-right:.5rem!important}.pb-2,.py-2{padding-bottom:.5rem!important}.pl-2,.px-2{padding-left:.5rem!important}.p-3{padding:1rem!important}.pt-3,.py-3{padding-top:1rem!important}.pr-3,.px-3{padding-right:1rem!important}.pb-3,.py-3{padding-bottom:1rem!important}.pl-3,.px-3{padding-left:1rem!important}.p-4{padding:1.5rem!important}.pt-4,.py-4{padding-top:1.5rem!important}.pr-4,.px-4{padding-right:1.5rem!important}.pb-4,.py-4{padding-bottom:1.5rem!important}.pl-4,.px-4{padding-left:1.5rem!important}.p-5{padding:3rem!important}.pt-5,.py-5{padding-top:3rem!important}.pr-5,.px-5{padding-right:3rem!important}.pb-5,.py-5{padding-bottom:3rem!important}.pl-5,.px-5{padding-left:3rem!important}.m-auto{margin:auto!important}.mt-auto,.my-auto{margin-top:auto!important}.mr-auto,.mx-auto{margin-right:auto!important}.mb-auto,.my-auto{margin-bottom:auto!important}.ml-auto,.mx-auto{margin-left:auto!important}@media (min-width:576px){.m-sm-0{margin:0!important}.mt-sm-0,.my-sm-0{margin-top:0!important}.mr-sm-0,.mx-sm-0{margin-right:0!important}.mb-sm-0,.my-sm-0{margin-bottom:0!important}.ml-sm-0,.mx-sm-0{margin-left:0!important}.m-sm-1{margin:.25rem!important}.mt-sm-1,.my-sm-1{margin-top:.25rem!important}.mr-sm-1,.mx-sm-1{margin-right:.25rem!important}.mb-sm-1,.my-sm-1{margin-bottom:.25rem!important}.ml-sm-1,.mx-sm-1{margin-left:.25rem!important}.m-sm-2{margin:.5rem!important}.mt-sm-2,.my-sm-2{margin-top:.5rem!important}.mr-sm-2,.mx-sm-2{margin-right:.5rem!important}.mb-sm-2,.my-sm-2{margin-bottom:.5rem!important}.ml-sm-2,.mx-sm-2{margin-left:.5rem!important}.m-sm-3{margin:1rem!important}.mt-sm-3,.my-sm-3{margin-top:1rem!important}.mr-sm-3,.mx-sm-3{margin-right:1rem!important}.mb-sm-3,.my-sm-3{margin-bottom:1rem!important}.ml-sm-3,.mx-sm-3{margin-left:1rem!important}.m-sm-4{margin:1.5rem!important}.mt-sm-4,.my-sm-4{margin-top:1.5rem!important}.mr-sm-4,.mx-sm-4{margin-right:1.5rem!important}.mb-sm-4,.my-sm-4{margin-bottom:1.5rem!important}.ml-sm-4,.mx-sm-4{margin-left:1.5rem!important}.m-sm-5{margin:3rem!important}.mt-sm-5,.my-sm-5{margin-top:3rem!important}.mr-sm-5,.mx-sm-5{margin-right:3rem!important}.mb-sm-5,.my-sm-5{margin-bottom:3rem!important}.ml-sm-5,.mx-sm-5{margin-left:3rem!important}.p-sm-0{padding:0!important}.pt-sm-0,.py-sm-0{padding-top:0!important}.pr-sm-0,.px-sm-0{padding-right:0!important}.pb-sm-0,.py-sm-0{padding-bottom:0!important}.pl-sm-0,.px-sm-0{padding-left:0!important}.p-sm-1{padding:.25rem!important}.pt-sm-1,.py-sm-1{padding-top:.25rem!important}.pr-sm-1,.px-sm-1{padding-right:.25rem!important}.pb-sm-1,.py-sm-1{padding-bottom:.25rem!important}.pl-sm-1,.px-sm-1{padding-left:.25rem!important}.p-sm-2{padding:.5rem!important}.pt-sm-2,.py-sm-2{padding-top:.5rem!important}.pr-sm-2,.px-sm-2{padding-right:.5rem!important}.pb-sm-2,.py-sm-2{padding-bottom:.5rem!important}.pl-sm-2,.px-sm-2{padding-left:.5rem!important}.p-sm-3{padding:1rem!important}.pt-sm-3,.py-sm-3{padding-top:1rem!important}.pr-sm-3,.px-sm-3{padding-right:1rem!important}.pb-sm-3,.py-sm-3{padding-bottom:1rem!important}.pl-sm-3,.px-sm-3{padding-left:1rem!important}.p-sm-4{padding:1.5rem!important}.pt-sm-4,.py-sm-4{padding-top:1.5rem!important}.pr-sm-4,.px-sm-4{padding-right:1.5rem!important}.pb-sm-4,.py-sm-4{padding-bottom:1.5rem!important}.pl-sm-4,.px-sm-4{padding-left:1.5rem!important}.p-sm-5{padding:3rem!important}.pt-sm-5,.py-sm-5{padding-top:3rem!important}.pr-sm-5,.px-sm-5{padding-right:3rem!important}.pb-sm-5,.py-sm-5{padding-bottom:3rem!important}.pl-sm-5,.px-sm-5{padding-left:3rem!important}.m-sm-auto{margin:auto!important}.mt-sm-auto,.my-sm-auto{margin-top:auto!important}.mr-sm-auto,.mx-sm-auto{margin-right:auto!important}.mb-sm-auto,.my-sm-auto{margin-bottom:auto!important}.ml-sm-auto,.mx-sm-auto{margin-left:auto!important}}@media (min-width:768px){.m-md-0{margin:0!important}.mt-md-0,.my-md-0{margin-top:0!important}.mr-md-0,.mx-md-0{margin-right:0!important}.mb-md-0,.my-md-0{margin-bottom:0!important}.ml-md-0,.mx-md-0{margin-left:0!important}.m-md-1{margin:.25rem!important}.mt-md-1,.my-md-1{margin-top:.25rem!important}.mr-md-1,.mx-md-1{margin-right:.25rem!important}.mb-md-1,.my-md-1{margin-bottom:.25rem!important}.ml-md-1,.mx-md-1{margin-left:.25rem!important}.m-md-2{margin:.5rem!important}.mt-md-2,.my-md-2{margin-top:.5rem!important}.mr-md-2,.mx-md-2{margin-right:.5rem!important}.mb-md-2,.my-md-2{margin-bottom:.5rem!important}.ml-md-2,.mx-md-2{margin-left:.5rem!important}.m-md-3{margin:1rem!important}.mt-md-3,.my-md-3{margin-top:1rem!important}.mr-md-3,.mx-md-3{margin-right:1rem!important}.mb-md-3,.my-md-3{margin-bottom:1rem!important}.ml-md-3,.mx-md-3{margin-left:1rem!important}.m-md-4{margin:1.5rem!important}.mt-md-4,.my-md-4{margin-top:1.5rem!important}.mr-md-4,.mx-md-4{margin-right:1.5rem!important}.mb-md-4,.my-md-4{margin-bottom:1.5rem!important}.ml-md-4,.mx-md-4{margin-left:1.5rem!important}.m-md-5{margin:3rem!important}.mt-md-5,.my-md-5{margin-top:3rem!important}.mr-md-5,.mx-md-5{margin-right:3rem!important}.mb-md-5,.my-md-5{margin-bottom:3rem!important}.ml-md-5,.mx-md-5{margin-left:3rem!important}.p-md-0{padding:0!important}.pt-md-0,.py-md-0{padding-top:0!important}.pr-md-0,.px-md-0{padding-right:0!important}.pb-md-0,.py-md-0{padding-bottom:0!important}.pl-md-0,.px-md-0{padding-left:0!important}.p-md-1{padding:.25rem!important}.pt-md-1,.py-md-1{padding-top:.25rem!important}.pr-md-1,.px-md-1{padding-right:.25rem!important}.pb-md-1,.py-md-1{padding-bottom:.25rem!important}.pl-md-1,.px-md-1{padding-left:.25rem!important}.p-md-2{padding:.5rem!important}.pt-md-2,.py-md-2{padding-top:.5rem!important}.pr-md-2,.px-md-2{padding-right:.5rem!important}.pb-md-2,.py-md-2{padding-bottom:.5rem!important}.pl-md-2,.px-md-2{padding-left:.5rem!important}.p-md-3{padding:1rem!important}.pt-md-3,.py-md-3{padding-top:1rem!important}.pr-md-3,.px-md-3{padding-right:1rem!important}.pb-md-3,.py-md-3{padding-bottom:1rem!important}.pl-md-3,.px-md-3{padding-left:1rem!important}.p-md-4{padding:1.5rem!important}.pt-md-4,.py-md-4{padding-top:1.5rem!important}.pr-md-4,.px-md-4{padding-right:1.5rem!important}.pb-md-4,.py-md-4{padding-bottom:1.5rem!important}.pl-md-4,.px-md-4{padding-left:1.5rem!important}.p-md-5{padding:3rem!important}.pt-md-5,.py-md-5{padding-top:3rem!important}.pr-md-5,.px-md-5{padding-right:3rem!important}.pb-md-5,.py-md-5{padding-bottom:3rem!important}.pl-md-5,.px-md-5{padding-left:3rem!important}.m-md-auto{margin:auto!important}.mt-md-auto,.my-md-auto{margin-top:auto!important}.mr-md-auto,.mx-md-auto{margin-right:auto!important}.mb-md-auto,.my-md-auto{margin-bottom:auto!important}.ml-md-auto,.mx-md-auto{margin-left:auto!important}}@media (min-width:992px){.m-lg-0{margin:0!important}.mt-lg-0,.my-lg-0{margin-top:0!important}.mr-lg-0,.mx-lg-0{margin-right:0!important}.mb-lg-0,.my-lg-0{margin-bottom:0!important}.ml-lg-0,.mx-lg-0{margin-left:0!important}.m-lg-1{margin:.25rem!important}.mt-lg-1,.my-lg-1{margin-top:.25rem!important}.mr-lg-1,.mx-lg-1{margin-right:.25rem!important}.mb-lg-1,.my-lg-1{margin-bottom:.25rem!important}.ml-lg-1,.mx-lg-1{margin-left:.25rem!important}.m-lg-2{margin:.5rem!important}.mt-lg-2,.my-lg-2{margin-top:.5rem!important}.mr-lg-2,.mx-lg-2{margin-right:.5rem!important}.mb-lg-2,.my-lg-2{margin-bottom:.5rem!important}.ml-lg-2,.mx-lg-2{margin-left:.5rem!important}.m-lg-3{margin:1rem!important}.mt-lg-3,.my-lg-3{margin-top:1rem!important}.mr-lg-3,.mx-lg-3{margin-right:1rem!important}.mb-lg-3,.my-lg-3{margin-bottom:1rem!important}.ml-lg-3,.mx-lg-3{margin-left:1rem!important}.m-lg-4{margin:1.5rem!important}.mt-lg-4,.my-lg-4{margin-top:1.5rem!important}.mr-lg-4,.mx-lg-4{margin-right:1.5rem!important}.mb-lg-4,.my-lg-4{margin-bottom:1.5rem!important}.ml-lg-4,.mx-lg-4{margin-left:1.5rem!important}.m-lg-5{margin:3rem!important}.mt-lg-5,.my-lg-5{margin-top:3rem!important}.mr-lg-5,.mx-lg-5{margin-right:3rem!important}.mb-lg-5,.my-lg-5{margin-bottom:3rem!important}.ml-lg-5,.mx-lg-5{margin-left:3rem!important}.p-lg-0{padding:0!important}.pt-lg-0,.py-lg-0{padding-top:0!important}.pr-lg-0,.px-lg-0{padding-right:0!important}.pb-lg-0,.py-lg-0{padding-bottom:0!important}.pl-lg-0,.px-lg-0{padding-left:0!important}.p-lg-1{padding:.25rem!important}.pt-lg-1,.py-lg-1{padding-top:.25rem!important}.pr-lg-1,.px-lg-1{padding-right:.25rem!important}.pb-lg-1,.py-lg-1{padding-bottom:.25rem!important}.pl-lg-1,.px-lg-1{padding-left:.25rem!important}.p-lg-2{padding:.5rem!important}.pt-lg-2,.py-lg-2{padding-top:.5rem!important}.pr-lg-2,.px-lg-2{padding-right:.5rem!important}.pb-lg-2,.py-lg-2{padding-bottom:.5rem!important}.pl-lg-2,.px-lg-2{padding-left:.5rem!important}.p-lg-3{padding:1rem!important}.pt-lg-3,.py-lg-3{padding-top:1rem!important}.pr-lg-3,.px-lg-3{padding-right:1rem!important}.pb-lg-3,.py-lg-3{padding-bottom:1rem!important}.pl-lg-3,.px-lg-3{padding-left:1rem!important}.p-lg-4{padding:1.5rem!important}.pt-lg-4,.py-lg-4{padding-top:1.5rem!important}.pr-lg-4,.px-lg-4{padding-right:1.5rem!important}.pb-lg-4,.py-lg-4{padding-bottom:1.5rem!important}.pl-lg-4,.px-lg-4{padding-left:1.5rem!important}.p-lg-5{padding:3rem!important}.pt-lg-5,.py-lg-5{padding-top:3rem!important}.pr-lg-5,.px-lg-5{padding-right:3rem!important}.pb-lg-5,.py-lg-5{padding-bottom:3rem!important}.pl-lg-5,.px-lg-5{padding-left:3rem!important}.m-lg-auto{margin:auto!important}.mt-lg-auto,.my-lg-auto{margin-top:auto!important}.mr-lg-auto,.mx-lg-auto{margin-right:auto!important}.mb-lg-auto,.my-lg-auto{margin-bottom:auto!important}.ml-lg-auto,.mx-lg-auto{margin-left:auto!important}}@media (min-width:1200px){.m-xl-0{margin:0!important}.mt-xl-0,.my-xl-0{margin-top:0!important}.mr-xl-0,.mx-xl-0{margin-right:0!important}.mb-xl-0,.my-xl-0{margin-bottom:0!important}.ml-xl-0,.mx-xl-0{margin-left:0!important}.m-xl-1{margin:.25rem!important}.mt-xl-1,.my-xl-1{margin-top:.25rem!important}.mr-xl-1,.mx-xl-1{margin-right:.25rem!important}.mb-xl-1,.my-xl-1{margin-bottom:.25rem!important}.ml-xl-1,.mx-xl-1{margin-left:.25rem!important}.m-xl-2{margin:.5rem!important}.mt-xl-2,.my-xl-2{margin-top:.5rem!important}.mr-xl-2,.mx-xl-2{margin-right:.5rem!important}.mb-xl-2,.my-xl-2{margin-bottom:.5rem!important}.ml-xl-2,.mx-xl-2{margin-left:.5rem!important}.m-xl-3{margin:1rem!important}.mt-xl-3,.my-xl-3{margin-top:1rem!important}.mr-xl-3,.mx-xl-3{margin-right:1rem!important}.mb-xl-3,.my-xl-3{margin-bottom:1rem!important}.ml-xl-3,.mx-xl-3{margin-left:1rem!important}.m-xl-4{margin:1.5rem!important}.mt-xl-4,.my-xl-4{margin-top:1.5rem!important}.mr-xl-4,.mx-xl-4{margin-right:1.5rem!important}.mb-xl-4,.my-xl-4{margin-bottom:1.5rem!important}.ml-xl-4,.mx-xl-4{margin-left:1.5rem!important}.m-xl-5{margin:3rem!important}.mt-xl-5,.my-xl-5{margin-top:3rem!important}.mr-xl-5,.mx-xl-5{margin-right:3rem!important}.mb-xl-5,.my-xl-5{margin-bottom:3rem!important}.ml-xl-5,.mx-xl-5{margin-left:3rem!important}.p-xl-0{padding:0!important}.pt-xl-0,.py-xl-0{padding-top:0!important}.pr-xl-0,.px-xl-0{padding-right:0!important}.pb-xl-0,.py-xl-0{padding-bottom:0!important}.pl-xl-0,.px-xl-0{padding-left:0!important}.p-xl-1{padding:.25rem!important}.pt-xl-1,.py-xl-1{padding-top:.25rem!important}.pr-xl-1,.px-xl-1{padding-right:.25rem!important}.pb-xl-1,.py-xl-1{padding-bottom:.25rem!important}.pl-xl-1,.px-xl-1{padding-left:.25rem!important}.p-xl-2{padding:.5rem!important}.pt-xl-2,.py-xl-2{padding-top:.5rem!important}.pr-xl-2,.px-xl-2{padding-right:.5rem!important}.pb-xl-2,.py-xl-2{padding-bottom:.5rem!important}.pl-xl-2,.px-xl-2{padding-left:.5rem!important}.p-xl-3{padding:1rem!important}.pt-xl-3,.py-xl-3{padding-top:1rem!important}.pr-xl-3,.px-xl-3{padding-right:1rem!important}.pb-xl-3,.py-xl-3{padding-bottom:1rem!important}.pl-xl-3,.px-xl-3{padding-left:1rem!important}.p-xl-4{padding:1.5rem!important}.pt-xl-4,.py-xl-4{padding-top:1.5rem!important}.pr-xl-4,.px-xl-4{padding-right:1.5rem!important}.pb-xl-4,.py-xl-4{padding-bottom:1.5rem!important}.pl-xl-4,.px-xl-4{padding-left:1.5rem!important}.p-xl-5{padding:3rem!important}.pt-xl-5,.py-xl-5{padding-top:3rem!important}.pr-xl-5,.px-xl-5{padding-right:3rem!important}.pb-xl-5,.py-xl-5{padding-bottom:3rem!important}.pl-xl-5,.px-xl-5{padding-left:3rem!important}.m-xl-auto{margin:auto!important}.mt-xl-auto,.my-xl-auto{margin-top:auto!important}.mr-xl-auto,.mx-xl-auto{margin-right:auto!important}.mb-xl-auto,.my-xl-auto{margin-bottom:auto!important}.ml-xl-auto,.mx-xl-auto{margin-left:auto!important}}

{# /* // Text */ #}
.text-left{text-align:left!important}.text-right{text-align:right!important}.text-center{text-align:center!important}@media (min-width:576px){.text-sm-left{text-align:left!important}.text-sm-right{text-align:right!important}.text-sm-center{text-align:center!important}}@media (min-width:768px){.text-md-left{text-align:left!important}.text-md-right{text-align:right!important}.text-md-center{text-align:center!important}}@media (min-width:992px){.text-lg-left{text-align:left!important}.text-lg-right{text-align:right!important}.text-lg-center{text-align:center!important}}@media (min-width:1200px){.text-xl-left{text-align:left!important}.text-xl-right{text-align:right!important}.text-xl-center{text-align:center!important}}.text-lowercase{text-transform:lowercase!important}.text-uppercase{text-transform:uppercase!important}.text-capitalize{text-transform:capitalize!important}.font-weight-light{font-weight:300!important}.font-weight-normal{font-weight:400!important}.font-weight-bold{font-weight:700!important}.font-italic{font-style:italic!important}

{# /* // Align */ #}
.align-baseline{vertical-align:baseline!important}.align-top{vertical-align:top!important}.align-middle{vertical-align:middle!important}.align-bottom{vertical-align:bottom!important}.align-sub{vertical-align:sub!important}.align-text-bottom{vertical-align:text-bottom!important}.align-text-top{vertical-align:text-top!important}

{# /* // Position */ #}
.position-sticky{position: sticky!important; position: -webkit-sticky;}.position-relative{position:relative!important}.position-absolute{position:absolute!important;}.position-fixed{position:fixed!important}

{# /* // Image */ #}
.img-fluid {max-width:100%;height:auto}

{# /* // Visibility */ #}
.hidden{display:none}.opacity-50{opacity: .5}.opacity-40{opacity:.4}.opacity-60{opacity:.6}.opacity-80{opacity:.8}.opacity-90{opacity:.9}.overflow-none{overflow:hidden}

{# /* // Float */ #}
.float-left{float:left!important}.float-right{float:right!important}.float-none{float:none!important}

{# /* // Width */ #}
.w-100{width:100%!important}.w-auto{width:auto!important}

@media (min-width: 768px) { 

  {# /* // Position */ #}

  .position-relative-md{position:relative!important;}.position-sticky-md{position:sticky!important;position:-webkit-sticky!important;}.position-fixed-md{position:fixed!important;position:-webkit-fixed!important;}.position-absolute-md{position:absolute!important;}

  {# /* // Float */ #}
  
  .float-md-none{float:none!important;}

  {# /* // Icons */ #}

  .icon-desktop-lg {font-size: 1.33333em;line-height: .75em;vertical-align: -.0667em;}

  {# /* // Width */ #}
  .w-md-100{width:100%!important}.w-md-auto{width:auto!important}
}

{% endraw %}
