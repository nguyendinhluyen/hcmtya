<style>
    a.list_product_name:hover {
        text-decoration: none;
    }    
    a.list_product_name:link {
        text-decoration: none;
    }    
    a.news_name {
        color: #929292;
    }
    a.news_name:hover {
        text-decoration: none;
        color:#ff767c;
    }
    a.news_name:link {
        text-decoration: none;
    }
    a.news_name_destail:hover {
        text-decoration: none;
    }
    .product_detail {
        position:relative;
        overflow:hidden;
    }
    .product_detail .textbox {
        width:195px;
        height:220px;
        position:absolute;
        top:0;
        left:0;
        margin-top:-220px;
        border-radius:15px;
        background-color: #66d0f1;
        border-style:solid;
        border-width: 10px;        
        border-color: #e0f8ff;        
    }       
    .product_detail:hover .textbox {
        margin-top:0;
    }   
    .textbox {
        -webkit-transition: all 0.5s ease;
        transition: all 0.5s ease;
        cursor: pointer;        
    }
</style>
<!-- Begin banner-->
<div class="container-fluid" style="padding:0px;">
    <div class="banner">
        <!-- use jssor.slider.mini.js (40KB) instead for release -->
        <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/slider/js/jssor.js"></script>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/slider/js/jssor.slider.js"></script>
        <script>
            jQuery(document).ready(function ($) {
                var _CaptionTransitions = [];
                _CaptionTransitions["L"] = { $Duration: 900, x: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
                _CaptionTransitions["R"] = { $Duration: 900, x: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
                _CaptionTransitions["T"] = { $Duration: 900, y: 0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
                _CaptionTransitions["B"] = { $Duration: 900, y: -0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
                _CaptionTransitions["ZMF|10"] = { $Duration: 900, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseOutQuad, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 };
                _CaptionTransitions["RTT|10"] = { $Duration: 900, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseOutQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} };
                _CaptionTransitions["RTT|2"] = { $Duration: 900, $Zoom: 3, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 0.5} };
                _CaptionTransitions["RTTL|BR"] = { $Duration: 900, x: -0.6, y: -0.6, $Zoom: 11, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8} };
                _CaptionTransitions["CLIP|LR"] = { $Duration: 900, $Clip: 15, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2 };
                _CaptionTransitions["MCLIP|L"] = { $Duration: 900, $Clip: 1, $Move: true, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic} };
                _CaptionTransitions["MCLIP|R"] = { $Duration: 900, $Clip: 2, $Move: true, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic} };

                var options = {
                    $FillMode: 2,                                       //[Optional] The way to fill image in slide, 0 stretch, 1 contain (keep aspect ratio and put all inside slide), 2 cover (keep aspect ratio and cover whole slide), 4 actual size, 5 contain for large image, actual size for small image, default value is 0
                    $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                    $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                    $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                    $ArrowKeyNavigation: true,   			//[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                    $SlideEasing: $JssorEasing$.$EaseOutQuint,          //[Optional] Specifies easing for right to left animation, default value is $JssorEasing$.$EaseOutQuad
                    $SlideDuration: 800,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                    $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                    //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                    //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                    $SlideSpacing: 0, 					//[Optional] Space between each slide in pixels, default value is 0
                    $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                    $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                    $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                    $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                    $DragOrientation: 1,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                    $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                        $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                        $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                        $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                        $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                    },

                    $BulletNavigatorOptions: {                          //[Optional] Options to specify and enable navigator or not
                        $Class: $JssorBulletNavigator$,                 //[Required] Class to create navigator instance
                        $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                        $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                        $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                        $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                        $SpacingX: 8,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                        $SpacingY: 8,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                        $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                    },

                    $ArrowNavigatorOptions: {                           //[Optional] Options to specify and enable arrow navigator or not
                        $Class: $JssorArrowNavigator$,                  //[Requried] Class to create arrow navigator instance
                        $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                        $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                        $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                    }
                };

                var jssor_slider1 = new $JssorSlider$("slider1_container", options);

                //responsive code begin
                //you can remove responsive code if you don't want the slider scales while window resizes
                function ScaleSlider() {
                    var bodyWidth = document.body.clientWidth;
                    if (bodyWidth)
                        jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 1920));
                    else
                        window.setTimeout(ScaleSlider, 30);
                }
                ScaleSlider();

                $(window).bind("load", ScaleSlider);
                $(window).bind("resize", ScaleSlider);
                $(window).bind("orientationchange", ScaleSlider);
                //responsive code end
            });
        </script>
        <!-- Jssor Slider Begin -->
        <!-- To move inline styles to css file/block, please specify a class name for each element. --> 
        <div id="slider1_container"
             style="position: relative;
                    margin: 0 auto;
                    top: 0px;
                    left: 0px;
                    width: 1300px;
                    height: 400px; 
                    overflow: hidden;">
            <!-- Loading Screen -->
            <div u="loading" style="position: absolute; 
                                    top: 0px; 
                                    left: 0px;">
                <div style="filter: alpha(opacity=70); 
                            opacity: 0.7;
                            position: absolute;
                            display: block;
                            top: 0px;
                            left: 0px;
                            width: 100%;
                            height: 100%;">
                </div>
                <div style="position: absolute;
                            display: block;
                            background: url({linkS}layout/bootstrap/css/slider/img/loading.gif) no-repeat center center;
                            top: 0px;
                            left: 0px;
                            width: 100%;
                            height: 100%;">
                </div>
            </div>
            <!-- Slides Container -->
            <div u="slides" style="cursor: pointer;
                                   position: absolute;
                                   left: 0px;
                                   top: 0px;
                                   width: 1300px;
                                   height: 400px;
                                   overflow: hidden;
                                   display:block">
                {main_banner}
            </div>

            <!--#region Bullet Navigator Skin Begin -->
            <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
            <style>
                /* jssor slider bullet navigator skin 21 css */
                /*
                .jssorb21 div           (normal)
                .jssorb21 div:hover     (normal mouseover)
                .jssorb21 .av           (active)
                .jssorb21 .av:hover     (active mouseover)
                .jssorb21 .dn           (mousedown)
                */
                .jssorb21 {
                    position: absolute;
                }
                .jssorb21 div, .jssorb21 div:hover, .jssorb21 .av {
                    position: absolute;
                    /* size of bullet elment */
                    width: 19px;
                    height: 19px;
                    text-align: center;
                    line-height: 19px;
                    color: white;
                    font-size: 12px;
                    background: url({linkS}layout/bootstrap/css/slider/img/b21.png) no-repeat;
                    overflow: hidden;
                    cursor: pointer;
                }
                .jssorb21 div { background-position: -5px -5px; }
                .jssorb21 div:hover, .jssorb21 .av:hover { background-position: -35px -5px; }
                .jssorb21 .av { background-position: -65px -5px; }
                .jssorb21 .dn, .jssorb21 .dn:hover { background-position: -95px -5px; }
            </style>
            <!-- bullet navigator container -->
            <div u="navigator" class="jssorb21" style="bottom: 26px; right: 6px;">
                <!-- bullet navigator item prototype -->
                <div u="prototype"></div>
            </div>
            <!--#endregion Bullet Navigator Skin End -->

            <!--#region Arrow Navigator Skin Begin -->
            <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
            <style>
                /* jssor slider arrow navigator skin 21 css */
                /*
                .jssora21l                  (normal)
                .jssora21r                  (normal)
                .jssora21l:hover            (normal mouseover)
                .jssora21r:hover            (normal mouseover)
                .jssora21l.jssora21ldn      (mousedown)
                .jssora21r.jssora21rdn      (mousedown)
                */
                .jssora21l, .jssora21r {
                    display: block;
                    position: absolute;
                    /* size of arrow element */
                    width: 55px;
                    height: 55px;
                    cursor: pointer;
                    background: url({linkS}layout/bootstrap/css/slider/img/a21.png) center center no-repeat;
                    overflow: hidden;
                }
                .jssora21l { background-position: -3px -33px; }
                .jssora21r { background-position: -63px -33px; }
                .jssora21l:hover { background-position: -123px -33px; }
                .jssora21r:hover { background-position: -183px -33px; }
                .jssora21l.jssora21ldn { background-position: -243px -33px; }
                .jssora21r.jssora21rdn { background-position: -303px -33px; }
            </style>
            <!-- Arrow Left -->
            <span u="arrowleft" class="jssora21l" style="top: 123px; left: 8px;">
            </span>
            <!-- Arrow Right -->
            <span u="arrowright" class="jssora21r" style="top: 123px; right: 8px;">
            </span>
            <!--#endregion Arrow Navigator Skin End -->
            <a style="display: none" href="http://www.jssor.com">Image Slider</a>
        </div>
        <!-- Jssor Slider End -->
    </div>        
</div>
<!-- End banner-->

<!-- Begin introduce -->
<div class="container-fluid" style="padding:0px">    
    <div class ="container" 
         style="margin-top: 70px; margin-bottom:70px;">
        <div class ="row">
            <div class ="col-xs-12 col-lg-6">
                <div class ="row hidden-xs hidden-sm" 
                     style="font-family: SourceSansPro-Bold; 
                            font-size: 30px;
                            margin-bottom: 20px;
                            margin-left: 35px;
                            color: #262262">
                    GIỚI THIỆU CHUNG VỀ CUỘC THI
                </div>
                <div class ="row hidden-xs hidden-sm"
                     style="font-family: SourceSansPro-Regular; 
                            font-size: 17px;
                            line-height: 25px;
                            width: 95%;
                            margin-left: 35px;
                            text-align: justify;
                            color: #7e7c7c">
                    Nhằm triển khai hiệu quả Tuyên bố chung được Thị trưởng các Thành phố Du lịch Hạ nguồn Mê Công ký kết tại 
                    Hội nghị Thị trưởng lần III vào ngày 7/11/2014 tại Bangkok, Thái Lan. 
                    Đồng thời với mong muốn tạo sân chơi bổ ích, thiết thực cho thanh niên 
                    Thành phố tham gia đóng góp vào sự phát triển chung của ngành du lịch quốc gia và khu vực.
                    Qua đó tăng cường phát huy tinh thần du lịch vì cộng đồng của các công dân trẻ Thành phố, 
                    đồng thời thông qua việc tuyển chọn thúc đẩy phát triển thị trường du lịch trẻ gắn với 
                    các giá trị truyền thống văn hóa của dân tộc trên địa bàn thành phố.
                    Tìm kiếm những tài năng trẻ phục vụ cho sự phát triển của ngành du lịch Thành phố Hồ Chí Minh.
                </div>
                <!-- mobile-->
                <div class ="row hidden-md hidden-lg" 
                     style="font-family: SourceSansPro-Bold; 
                            font-size: 30px;
                            margin-bottom:20px;
                            text-align:center;
                            color: #262262">
                    GIỚI THIỆU CHUNG VỀ CUỘC THI
                </div>           
                <div class ="row hidden-md hidden-lg"
                     style="font-family: SourceSansPro-Regular; 
                            font-size: 17px;
                            line-height: 25px;
                            text-align: justify;
                            margin-right: 15px;
                            margin-left: 15px;
                            color: #7e7c7c">
                    Nhằm triển khai hiệu quả Tuyên bố chung được Thị trưởng các Thành phố Du lịch Hạ nguồn Mê Công ký kết tại 
                    Hội nghị Thị trưởng lần III vào ngày 7/11/2014 tại Bangkok, Thái Lan. 
                    Đồng thời với mong muốn tạo sân chơi bổ ích, thiết thực cho thanh niên 
                    Thành phố tham gia đóng góp vào sự phát triển chung của ngành du lịch quốc gia và khu vực.
                    Qua đó tăng cường phát huy tinh thần du lịch vì cộng đồng của các công dân trẻ Thành phố, 
                    đồng thời thông qua việc tuyển chọn thúc đẩy phát triển thị trường du lịch trẻ gắn với 
                    các giá trị truyền thống văn hóa của dân tộc trên địa bàn thành phố.
                    Tìm kiếm những tài năng trẻ phục vụ cho sự phát triển của ngành du lịch Thành phố Hồ Chí Minh.
                </div>
                <!-- End mobile-->
                
                <div class ="row" 
                     style="font-family: SourceSansPro-Regular; 
                            font-size: 17px;
                            line-height: 25px;">
                    <div style="border-radius: 5px;
                                border: 2px solid #c2c2c2;
                                padding: 10px;
                                width: 150px;
                                height: 50px;
                                text-align: center;
                                cursor: pointer;
                                margin-top: 30px;
                                margin-left: 50px"
                         class="hidden-xs hidden-sm hidden-md">
                        <a href="{linkS}gioi-thieu" style="color: #948f8f;"> Tìm hiểu thêm </a>
                    </div>
                    <!--mobile-->
                    <div style="border-radius: 5px;
                                border: 2px solid #c2c2c2;
                                padding: 10px;
                                width: 150px;
                                height: 50px;
                                text-align: center;
                                cursor: pointer;
                                margin-top: 30px;
                                margin-left: auto;
                                margin-right: auto;
                                display:block"
                         class="hidden-lg">
                        <a href="{linkS}gioi-thieu" style="color: #948f8f;"> Tìm hiểu thêm </a>
                    </div>
                    <!--End mobile-->
                </div>
            </div>
            <div class ="hidden-xs hidden-sm hidden-md col-lg-6" style="float:right">
                <img src="{linkS}layout/bootstrap/images/gioithieuchung.png" 
                     style="float:right; margin-right: 35px;">
            </div>
            
            <!--mobile-->
            <div class ="hidden-lg">
                <img src="{linkS}layout/bootstrap/images/gioithieuchung.png" 
                     style="margin-right: auto; 
                            margin-left:auto; 
                            display: block; 
                            padding-top: 40px;
                            width: 75%">
            </div>
        </div>
    </div>
</div>
<!-- End introduce -->

<!-- Begin activities -->
<div class="container-fluid" 
     style="padding:0px; 
            background-color: #f2f3f7">    
    <div class ="container" style="padding-bottom:10px;">
        <div class ="hidden-xs hidden-sm col-md-12 col-lg-12">
            <div class ="row" 
                style="font-family: SourceSansPro-Bold; 
                       font-size: 30px;
                       margin-bottom: 20px;
                       font-size: 30px;
                       text-align: center;
                       margin-top: 50px;
                       color: #262262">
                CÁC HOẠT ĐỘNG NỔI BẬT
            </div>
            <div class="container"
                 id="news_container"
                 style="margin-bottom: 0px; 
                        margin-left: -30px;
                        margin-bottom: 30px">
                <!--BEGINLIST_NEWS-->
                <!--BEGIN_NEWS-->
                <li>
                    <div class="news_detail" style="margin-bottom: 10px; margin-top: 10px">                                            
                        <div class="news_col" style = "float:left">                    
                            <a href="{linkS}thu-vien/{news_key}/" style = "outline:none">
                                <img src="{linkS}upload/news/{news_image}"
                                     width="130"
                                     height="130"
                                     alt="{news_name}"
                                     style="border-radius: 10px"/>
                            </a>
                        </div><!-- end product_right_col -->

                        <div class="news_title">
                            <div style="font-size: 14px; color: #7e7c7c;">
                                <a class = "news_name" href="{linkS}thu-vien/{news_key}/" 
                                   style="line-height: 25px;                                
                                        font-family: SourceSansPro-Regular;
                                        font-size: 17px;
                                        outline:none;
                                        color:#7e7c7c;">
                                    {news_name}
                                </a>
                            </div>
                        </div>
                        <div class="news_key">
                            <a class = "news_name_destail"
                               href="{linkS}thu-vien/{news_key}/" 
                               style="line-height: 15px;
                                      color: #a1a1a1;
                                      outline:none">
                                <span style="font-family: SourceSansPro-Regular;
                                             color:#faa97d;
                                             text-decoration: underline;
                                             font-size: 17px">
                                    Xem chi tiết
                                </span>
                            </a>                   
                        </div>
                    </div><!-- end news_detail -->
                </li>  	
                <!--END_NEWS-->
                <!--ENDLIST_NEWS-->
            </div>
        </div>
    </div>
    
    <!--Mobile-->
    <div class ="container hidden-md hidden-lg" 
         style="padding-bottom:10px;">                           
        <div class ="row"  
            style="font-family: SourceSansPro-Bold; 
                   font-size: 30px;
                   font-size: 30px;
                   text-align: center;
                   margin-top: 40px;
                   color: #262262">
            CÁC HOẠT ĐỘNG NỔI BẬT
        </div>
        <div class="container"
            id="news_container"
            style="margin-bottom: 0px; 
                   margin-left: -20px;
                   margin-bottom: 30px;">
            <!--BEGINLIST_NEWS-->
            <!--BEGIN_NEWS-->
            <li>
                <div class="news_detail"
                     style="padding-bottom: 10px; margin-top: 10px;">                                            
                    <div class="news_col" style = "float:left">                  
                        <a href="{linkS}thu-vien/{news_key}/" style = "outline:none">
                            <img src="{linkS}upload/news/{news_image}"
                                 width="130"
                                 height="130"
                                 alt="{news_name}"
                                 style="border-radius: 10px"/>
                        </a>
                    </div><!-- end news right col -->

                    <div class="news_title">
                        <div style="font-size: 14px; color: #7e7c7c;">
                            <a class = "news_name" href="{linkS}thu-vien/{news_key}/" 
                               style="line-height: 25px;                                
                                    font-family: SourceSansPro-Regular;
                                    font-size: 17px;
                                    outline:none;
                                    color:#7e7c7c;">
                                {news_name}
                            </a>
                        </div>
                    </div>
                    <div class="news_key">
                        <a class = "news_name_destail"
                           href="{linkS}thu-vien/{news_key}/" 
                           style="line-height: 15px;
                                  color: #a1a1a1;
                                  outline:none">
                            <span style="font-family: SourceSansPro-Regular;
                                         color:#faa97d;
                                         text-decoration: underline;
                                         font-size: 17px">
                                Xem chi tiết
                            </span>
                        </a>                   
                    </div>
                </div><!-- end news_detail -->
            </li>  	
            <!--END_NEWS-->
            <!--ENDLIST_NEWS-->
        </div>
        <!--End mobile-->
    </div>
</div>                           
<!-- End activities -->

<!-- Begin sponsor -->
<div class="container-fluid" style="padding:0px">    
    <div class ="container" style="padding-bottom:70px">
        <div class ="col-xs-12 col-sm-12 col-md-6 col-lg-6" 
             style="margin-top: 70px;">
            <div style="color: #262262; 
                        font-size: 30px;
                        font-family: SourceSansPro-Bold;
                        margin-left: 20px;
                        margin-bottom: 17px">
                DANH SÁCH NHÀ TÀI TRỢ
            </div>
            <div style="margin-left: 20px; 
                        line-height: 30px; 
                        color:#7e7c7c;
                        font-family: SourceSansPro-Regular;
                        font-size: 17px;">
                - Thành đoàn Thành phố Hồ Chí Minh <br/>
                - Sở Văn hóa và Thể thao Thành phố Hồ Chí Minh <br/>
                - Sở Ngoại vụ Thành phố Hồ Chí Minh <br/>
                - Nhà Văn hóa Thanh niên <br/>
                - Trường Đại học Kinh tế Thành phố Hồ Chí Minh <br/>
                - Hội đầu bếp chuyên nghiệp Sài Gòn <br/>
                - Công ty TNHH Verztec Consulting (Vietnam) Co., Ltd <br/>
            </div>
        </div>
        <div class ="col-xs-12 col-sm-12 col-md-6 col-lg-offset-1 col-lg-5" 
             style="margin-top: 70px">
            <div style="color: #262262; 
                        font-size: 30px;
                        font-family: SourceSansPro-Bold;
                        margin-left: 20px;
                        margin-bottom: 17px">
                ĐƠN VỊ PHỐI HỢP THÔNG TIN
            </div>
            <div style="line-height: 30px; 
                        margin-left: 20px; 
                        color:#7e7c7c;
                        font-family: SourceSansPro-Regular;
                        font-size: 17px;">
                - Sở thông tin truyền thông Thành phố Hồ Chí Minh<br/>	
                - Tạp chí Du lịch Thành phố Hồ Chí Minh<br/>
                - Báo Du lịch Việt Nam tại Thành phố Hồ Chí Minh<br/>
                - Các cơ quan báo, đài Thành phố Hồ Chí Minh<br/>
                - Các cơ quan báo chí, truyền thông của Thành Đoàn<br/>
            </div>
        </div>
    </div>
</div>
<!-- End sponsor -->