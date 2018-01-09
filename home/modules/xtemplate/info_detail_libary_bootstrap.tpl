<style>
    a:hover, a:link{
        text-decoration: none;
    }    
    #sharefacebook_icon a img{
        opacity: 0.8;
    }    
    #sharefacebook_icon a:hover img{                
        opacity: 1;
    }    
    #sharefacebook_icon a:hover {
        text-decoration: none;
    }    
    #sharefacebook_icon a:active {
        text-decoration: none;
    }
    #sharefacebook_icon a:link {
        text-decoration: none;
    }    
    #ShareButton{        
        padding-bottom: 10px;     
    }    
    #stretch{        
        padding-bottom: 10px;
    }    
    #line{        
        height:1px;
        margin-left: 100px;
        margin-right: 100px;
        color:#CCF;
        box-shadow: 0 0 2px #B0ACFB;
        margin-bottom: 10px;
        -moz-box-shadow: 0 0 2px #B0ACFB;
        -webkit-box-shadow: 0 0 2px#B0ACFB;
    }
    #twitter-widget-0{
        width:80px !important;
    }    
    #___plusone_0{
        width:62px !important;
    }    
</style>

<script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'vi'}
</script>

<script>
    !function(d,s,id)
    {
        var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';
        if(!d.getElementById(id))
        {
            js=d.createElement(s);
            js.id=id;
            js.src=p+'://platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js,fjs);
        }
    }(document, 'script', 'twitter-wjs');
</script>
    
<script src="//platform.linkedin.com/in.js" type="text/javascript">
    lang: en_US
</script>

<div class="container-fluid full-banner hidden-xs hidden-sm"
     style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
    TIN TỨC SỰ KIỆN
</div>
<div class="container-fluid full-banner-mobile hidden-md hidden-lg"
     style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
    TIN TỨC SỰ KIỆN
</div>   
<div class="container">
    <div class ="row"> 
        <div class = "hidden-xs hidden-sm hidden-md col-lg-3" 
             style="padding-left: 50px; 
                    padding-bottom: 40px">
            <div class="category_title">
                {category_title}
            </div>
            <div>
                {category}
            </div>
            <div style="margin-bottom: 40px; margin-left: -10px">
                {left_facebook_page_plugin}
            </div>
        </div>
        <div class="col-sx-12 col-lg-9">
            <div class="breakcrumb">
                {breadcrumbs_path}
            </div>                         	        
            <div class="news_main_libary">
                <div id = "ShareButton">
                    <h2 class="tieude_help"> 
                        {news_name}
                    </h2>														
                    <table>
                        <tr>
                            <td>
                                <div style="margin-bottom:10px;                                                
                                            color:black;
                                            font-size:14px;
                                            font-family: SourceSansPro-Regular">                            
                                    <span style="color:#999999; font-family:RobotoSlabLight">{date_added}</span>
                                </div>
                            </td>    
                        </tr>
                        <tr>
                            <td colspan="3">
                                <h1 style="color:blue;                                    
                                           font-size:17px;                               
                                           font-family:SourceSansPro-Regular;">
                                    <span style="color:black;">Chuyên Mục:&nbsp;</span> 
                                    <span style="text-decoration: none; 
                                                 line-height: 20px;
                                                 color: #999999">{chuyen_muc}</span>
                                </h1>
                            </td>                                                    
                        </tr>    
                    </table>
                    <table>
                        <tr>                                
                            <td style="color:black;                                                                                       
                                       font-size:17px;                                         
                                       line-height:30px;
                                       font-family:SourceSansPro-Regular;">
                                Từ khóa bài viết: &nbsp;
                            </td>
                            <td style = "font-size:14px;
                                        color:#999999;
                                        line-height:25px;                                        
                                        text-transform: capitalize">
                                {author}
                            </td>
                        </tr>    
                    </table>
                    <table style="margin-top:10px; float:left;"
                           class="col-lg-7">
                        <tr>
                            <td style="width: 95px"> 
                                <span class="fb-like"                                     
                                      data-href="{linkSf}{news_key}"
                                      data-layout="button_count" 
                                      data-action="like" 
                                      data-show-faces="false" 
                                      data-share="false">
                                </span>   
                            </td>
                            <td style="width: 65px">
                                <span class="g-plusone" data-size="medium"></span>
                            </td>
                            <td> 
                                <span>
                                    <a href="{linkSf}{news_key}" class="twitter-share-button">Tweet</a>               
                                </span>
                            </td>                        
                        </tr>
                        
                    </table> 
                    <div style="float:right;                                 
                                margin-right: 0px;
                                text-align: right;
                                padding-right: 25px;
                                padding-bottom: 10px"
                         class="hidden-xs hidden-sm col-lg-4">
                        <span id = "sharefacebook_icon" 
                              style = "margin-right:5px">
                            <a  target="_blank" 
                                href="http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]={linkSf}{news_key}&amp;p[images][0]= {linkSf}layout/images/logo/banner01.jpg&amp;p[title]={news_name}+&amp;p[summary]={news_shortcontent}">
                                <img src="{linkS}layout/images/facebook-icon.png" 
                                     title="Chia sẻ Facebook"
                                     width="40px"/>
                            </a>
                        </span>

                        <span id = "sharefacebook_icon" 
                              style = "margin-right:5px">
                            <a  href="https://plus.google.com/share?url={linkSf}{news_key}"
                                onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');;return false;">
                                <img src="{linkS}layout/images/google-plus-icon.png"                                
                                     title="Chia sẻ Google+"
                                     width="40px"/>
                            </a>
                        </span>

                        <span id = "sharefacebook_icon"
                              style = "margin-right:5px">
                            <a href="https://twitter.com/intent/tweet?text={news_name_twitter}&url={linkSf}{news_key}&related=episod">
                                <img src="{linkS}layout/images/twitter-icon.png"
                                     title="Chia sẻ Tweet"
                                     width="40px"/>
                            </a>
                        </span>		                                                                    

                        <span id = "sharefacebook_icon">
                            <a href="http://www.linkedin.com/shareArticle?mini=true&url={linkSf}{news_key}&title={news_name}&summary={news_shortcontent}&source=http://hcmctya.com.vn" 
                               rel="nofollow" 
                               onclick="NewWindow(this.href,'template_window','550','400','yes','center');return false" 
                               onfocus="this.blur()"
                               target="_blank"> 
                                <img src="{linkS}layout/images/linkedIn-icon.png" 
                                     title="Chia sẻ LinkedIn"
                                     width="40px"/>
                            </a>
                        </span>   
                    </div>
                </div>
                                     
                <div class ="row" style="float:left; width: 100%">
                    <hr style="margin-top: 0.5em;
                               margin-bottom: 0.5em;
                               margin-left: auto;
                               margin-right: auto;                                                           
                               color: #999999;
                               margin-left: 15px;
                               margin-right: 15px">
                    <div class="noidung_help" style="margin-left: 15px">                        
                            {news_content}
                    </div>    
                </div>
                <div class="fb-comments"                       
                    data-href="{linkSf}{news_key}"
                    data-numposts="5"
                    data-width ="810"
                    style="margin-left: -10px; 
                           margin-top: 10px;
                           font-family: SourceSansPro-Regular !important">
                </div>
            </div><!-- end product_main -->
            <br/>
            <br/>
        </div>
    </div>    
</div><!-- end blog -->