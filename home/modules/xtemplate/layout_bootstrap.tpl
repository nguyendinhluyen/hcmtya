<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=9">        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>{title}</title>
        <meta name="description" content="{description}">
        <meta name="keywords" content="{keywords}">
        <meta name="author" content="Sở du lịch thành phố Hồ Chí Minh">        
        <link rel="shortcut icon" href="{linkS}layout/images/favicon.png"/>
        
        <!-- Begin control message facebook
        <meta property="fb:admins" content="1119844474"/>
        <meta property="fb:admins" content="100000096874902"/>
        <meta property="fb:app_id" content="1491869401059003"/>
        End control message facebook-->        
        
        <!--Begin Banner-->        
        <script type="text/javascript" src="{linkS}layout/js/sliderman.js"></script>
        
        <!--End Banner-->
        <!--Begin Logo Slick-->
        <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/slick/slick/slick.css"/>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/jquery/jquery-1.11.2.min.js"></script>        
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/jquery/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/slick/slick/slick.min.js"></script>
        <!--End Logo Slick-->   
        <!--Bootstrap-->
        <link href="{linkS}layout/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="{linkS}layout/bootstrap/js/bootstrap.min.js"></script>
        <!--End Bootstrap-->
        <!--Begin Zoom Image-->
        <link rel="stylesheet" type="text/css" href="{linkS}layout/css/cloud-zoom.css"/>
        <script type="text/javascript" src="{linkS}layout/js/cloud-zoom.1.0.2.js"></script>
        <!--End Zoom Image-->
        <!--Begin Mask Phone-->
        <script type="text/javascript" src="{linkS}layout/js/jquery.maskedinput.js"></script>                 
        <!--End Mask Phone-->
        
        <script type="text/javascript">		
            jQuery(function($)
            {														
                $('#phone_2_field').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#phone').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#text_mobile_receiver').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#text_mobile_buy').mask('(999) 999 - 9999?9',{placeholder:" "});
            });       									 
        </script>
        
        <!-- Facebook-->
        <div id="fb-root"></div>
            <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "http://connect.facebook.net/vi_VN/sdk.js#xfbml=1&appId=1491869401059003&version=v2.0";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!--End Facebook Code-->

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script type="text/javascript" src="{linkS}layout/bootstrap/css/css3-mediaqueries.js"></script>    
            <script type='text/javascript' src="{linkS}layout/bootstrap/css/html5.js"></script>             
            <script type='text/javascript' src="{linkS}layout/bootstrap/css/respond.js"></script>     
        <![endif]-->
    </head>
    <style>        
        input[type=search], div.button {
            -moz-box-sizing: border-box;
            height: 35px;            
            box-sizing: border-box;  
            font-family: inherit;
            font-size: inherit;
        }
        input[type=search] {
            margin: 0;
            padding: 0 10px;
            background-color: #f8f8f8;
            border: 0;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        a:hover{
            cursor:pointer;
        }
                
        /* Begin TOP button */
        .cd-top {
            display: inline-block;
            height: 64px;
            width: 64px;
            position: fixed;
            bottom: 220px;
            right: 10px;            
            /* image replacement properties */
            overflow: hidden;
            text-indent: 100%;
            white-space: nowrap;
            background: url({linkS}layout/bootstrap/images/len-dau-trang.png) no-repeat center 20%;
            visibility: hidden;
            opacity: 0;
            -webkit-transition: opacity .3s 0s, visibility 0s .3s;
            -moz-transition: opacity .3s 0s, visibility 0s .3s;
            transition: opacity .3s 0s, visibility 0s .3s;
        }
        .cd-top.cd-is-visible, .cd-top.cd-fade-out, .no-touch .cd-top:hover {
            -webkit-transition: opacity .3s 0s, visibility 0s 0s;
            -moz-transition: opacity .3s 0s, visibility 0s 0s;
            transition: opacity .3s 0s, visibility 0s 0s;
        }
        .cd-top.cd-is-visible {
            /* the button becomes visible */
            visibility: visible;
            opacity: 1;
        }
        .cd-top.cd-fade-out {
            /* if the user keeps scrolling down, the button is out of focus and becomes less visible */
            opacity: 0.5;
        }
        .no-touch .cd-top:hover cd-is-visible:hover{
            opacity: 1;
        }
        @media only screen and (min-width: 768px) {
            .cd-top {                
                right: 5px;            
                bottom: 220px;
            }
        }
        @media only screen and (min-width: 1024px) {
            .cd-top {
                height: 60px;
                width: 55px;
                bottom: 220px;
            }
        }
        /* End TOP button */
    </style>
    <script>
        function share(){
            alert("Tính năng đang phát triển.");
        }
        function myKeyDown(){
            document.getElementById('search_box').setCustomValidity('');
        }    
        
        function myTrim(x) {
            return x.replace(/^\s+|\s+$/gm,'');
        }
        
        function checkForm(){         
            document.getElementById("search_box").required = true;
            if (myTrim(document.getElementById('search_box').value) === ""){
                document.getElementById('search_box').setCustomValidity('Vui lòng nhập thông tin tìm kiếm.');
            }
            else {
                document.getElementById('search_box').setCustomValidity('');
            }           
        }
        
        // Begin JS TOP button
        jQuery(document).ready(function($) {
            // Browser window scroll (in pixels) after which the "back to top" link is shown
            var offset = 300,
            // Browser window scroll (in pixels) after which the "back to top" link opacity is reduced
            offset_opacity = 1200,
            // Duration of the top scrolling animation (in ms)
            scroll_top_duration = 700,
            // Grab the "back to top" link
            $back_to_top = $('.cd-top');

            // Hide or show the "back to top" link
            $(window).scroll(function() {
                ($(this).scrollTop() > offset) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
                if( $(this).scrollTop() > offset_opacity ) { 
                    $back_to_top.addClass('cd-fade-out');
                }
            });

            // Smooth scroll to top
            $back_to_top.on('click', function(event){
                event.preventDefault();
                $('body,html').animate({
                        scrollTop: 0 ,
                    }, scroll_top_duration
                );
            });
        });
        // End JS TOP button
    </script>
    <body>
        <header>
            <!--Account-->
            <div class ="container">
                <div class ="row"
                     style="margin-left: auto; 
                            margin-right: auto; 
                            display: block;
                            margin-top: 10px;
                            margin-bottom: 10px">
                <div class ="hidden-xs hidden-sm hidden-md col-lg-offset-10  col-lg-2">
                    <div id ="account" 
                         style="margin-top: 20px; padding-bottom: 10px">
                            {acount}
                    </div>                                                                                                                             
                </div>
                </div>
            </div> 
            <!--End account-->
            
            <!-- Begin div header-->
            <div class ="container">
                <div class ="row" 
                     style="margin-left: auto; 
                            margin-right: auto; 
                            display: block;">
                    <!--Logo-->
                    <div class ="hidden-xs hidden-sm hidden-md col-lg-2"
                         style="padding-left: 35px; 
                                margin-top: -35px; 
                                z-index: 999;
                                margin-bottom:10px">
                        <table>
                            <tr>
                                <td>
                                    <div>
                                        <a class="img-responsive" 
                                           href="{linkS}"
                                           style = "outline: none; 
                                                    width: 30px">
                                            <img src="{linkS}layout/bootstrap/images/logo.png" width="160px">
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </table>                                                            
                    </div>
                    <!--menu-->
                    <div class ="col-xs-12 col-lg-10">
                        <div class="hidden-xs hidden-sm hidden-md">
                            <div class="row" 
                                 style="margin-left: auto; 
                                        margin-right: auto; 
                                        display: block;
                                        float:left;
                                        padding-left: 120px;
                                        padding-top: 10px;">
                                <span class="col-md-12 col-lg-12">
                                    <span id="menu">                             
                                        <ul class="nav">
                                            <li><a class="{homemenu}" href="{linkS}" 
                                                   style="padding-top: 10px; outline: none">Trang chủ</a></li>
                                            <li><a class="{introduce}" href="{linkS}gioi-thieu"
                                                   style="padding-top: 10px; outline: none; margin-left:5px">Kế hoạch</a></li>

                                            <li><a class="{roundone}" href="{linkS}vong-so-tuyen"
                                                   style="padding-top: 10px; outline: none">Vòng sơ tuyển</a></li>

                                            <li><a class="{roundfinal}" href="{linkS}vong-chung-ket"
                                                   style="padding-top: 10px; outline: none">Vòng chung kết</a></li>

                                            <li><a class="{blog}" href="{linkS}thu-vien"
                                                   style="padding-top: 10px; outline: none">Tin tức sự kiện</a></li>                        

                                            <li><a class="{result}" href="{linkS}ket-qua"
                                                   style="padding-top: 10px; outline: none">Kết quả</a></li>

                                            <li><a class="{contact}" href="{linkS}lien-he"
                                                   style="padding-top: 10px; outline: none">Liên hệ</a></li>
                                        </ul>
                                    </span>
                                </span>
                            </div>           
                        </div>
                    </div> <!-- end menu -->
                </div>
            </div> 
            <!-- End div header-->
            
            <!--Mobile display -->
            <!-- Begin div menu-->
            <div class ="container-fluid" 
                 style="padding-bottom:10px">
                <div class="hidden-lg">
                    <div class ="container">
                        <div class="row">                        
                            <table>
                                <tr>
                                    <td class="hidden-xs col-sm-5 col-md-5" 
                                        style="padding-bottom: 10px">                                        
                                        <a href="{linkS}" style = "outline:none">
                                            <img src="{linkS}layout/bootstrap/images/logo.png" 
                                                 width="120px"/>
                                        </a>
                                    </td>
                                    <td class="col-xs-5 hidden-sm hidden-md" 
                                        style="padding-bottom: 10px">                                        
                                        <a href="{linkS}" style = "outline:none">
                                            <img src="{linkS}layout/bootstrap/images/logo.png" 
                                                 width="90px"/>
                                        </a>
                                    </td>
                                    <td class="col-xs-7 col-sm-7 col-md-7"> 
                                    </td>
                                    <td>
                                        <!-- Drop Down Menu -->
                                        <span class="col-xs-4 col-sm-4 col-md-4" 
                                              style = "z-index:999">
                                          <button type="button" 
                                                  class="btn btn-info dropdown-toggle" 
                                                  data-toggle="dropdown" 
                                                  aria-expanded="false"
                                                  style ="font-family:SourceSansPro-Bold;
                                                        background: url('{linkS}layout/bootstrap/images/menu_mobile.png') no-repeat scroll 0 0 transparent;
                                                        cursor: pointer;
                                                        width: 43px;
                                                        height: 40px;
                                                        margin-right: 7px">
                                          </button>
                                            <ul class="dropdown-menu" 
                                                role="menu"
                                                style="min-width: 135px !important;
                                                       margin-left: -92px !important;
                                                       margin-top: 10px !important;
                                                       font-size: 17px !important">
                                                <li><a class="homemenu" 
                                                       href="{linkS}" 
                                                       style="outline: none">Trang chủ</a></li>  
                                                <li><a class="introduce" 
                                                       href="{linkS}gioi-thieu" 
                                                       style="outline: none">Kế hoạch</a></li>
                                                <li><a class="roundone" 
                                                       href="{linkS}vong-so-tuyen"
                                                       style="outline: none">Vòng sơ tuyển</a></li>                                                
                                                <li><a class="rounfinal" 
                                                       href="{linkS}vong-chung-ket"
                                                       style="outline: none">Vòng chung kết</a></li>                                                
                                                <li><a class="blog" 
                                                       href="{linkS}thu-vien"
                                                       style="outline: none">Tin tức sự kiện</a></li>                 
                                                <li><a class="result" 
                                                       href="{linkS}ket-qua"
                                                       style="outline: none">Kết quả</a></li>                                                
                                                <li><a class="contact" 
                                                       href="{linkS}lien-he"
                                                       style="outline: none">Liên hệ</a></li>
                                            </ul>
                                        </span>
                                    </td>
                                </tr>
                            </table>                        
                        </div>
                    </div>
                </div>
            </div><!-- end div menu-->
        </header>
                                          
        <!-- content-->
        {content}
        <!-- footer -->
        
        <footer>
            <!--<div class="container-fluid"
                 style="background-color:#e1fbf8;
                        height:auto;
                        padding:0px">
                <div class ="container" 
                     style ="padding-top: 40px; padding-left: 50px; padding-right: 50px;">
                    <div class ="row">
                        <div class ="hidden-xs hidden-sm col-md-6 col-lg-3">
                            <div style="color:#777c7b; 
                                        font-weight: 500; 
                                        font-size: 14px; 
                                        margin-top: 20px">
                                {left_facebook_box}
                            </div>
                        </div>
                        <div class ="col-xs-12 col-sm-12 col-md-6 col-lg-9" 
                             style="padding-left: 30px; line-height: 25px">
                            <div style ="font-family:RobotoSlabRegular;
                                        color:#5c5c5c; 
                                        font-weight:bold;
                                        font-size:14px;
                                        margin-top: 10px;
                                        padding-right: 20px">
                                SỞ DU LỊCH THÀNH PHỐ HỒ CHÍ MINH
                            </div>
                            <div style ="font-family:RobotoSlabRegular; 
                                          color:#5c5c5c; 
                                          font-weight:500;
                                          font-size:14px;
                                          margin-top: 10px">
                                Điện thoại: 
                            </div>
                            <div style ="font-family:RobotoSlabRegular; 
                                          color:#5c5c5c; 
                                          font-weight:500;
                                          font-size:14px;
                                          margin-top: 10px">
                                Fax: 
                            </div>
                            <div style ="font-family:RobotoSlabRegular; 
                                          color:#5c5c5c; 
                                          font-weight:500;
                                          font-size:14px;
                                          margin-top: 10px">
                                Email: 
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->                             
                            
            <div class="container-fluid"
                     style="background-color:#605e5e;
                            bottom: 0;
                            width: 100%;">
                    <div class="container"
                         style="margin-top:10px; 
                                margin-bottom:10px;
                                bottom:0">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" 
                                 style="text-align: center;">
                                <span style = "color: #fff; 
                                               font-size: 14px; 
                                               font-family:SourceSansPro-Regular">
                                    Copyright 2016 HCMC Tourism Youth Tambassador
                                </span>
                            </div>
                        </div>                     
                    </div>         
            </div>
        </footer>
        <a href="#0" class="cd-top">Top</a>
    </body>    
</html>