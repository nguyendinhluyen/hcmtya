<!--Use for combobox-->
<head>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.base.css" type="text/css"/>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.bootstrap.css" type="text/css"/>
    <script type="text/javascript" src="{linkS}layout/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcombobox.js"></script>
</head>
<!--End use for combobox-->

<style type="text/css">
    .contentheading a:hover 
    {
        text-decoration:underline;
    }
    .linkDetail a:hover 
    {
        text-decoration:underline;
    }
    .jqx-combobox-input jqx-combobox-input-bootstrap 
    jqx-widget-content jqx-widget-content-bootstrap 
    jqx-rc-all jqx-rc-all-bootstrap
    {
        font-family: RobotoSlabRegular;
    }
</style>

<script type="text/javascript">
    
    $val = 0;
    $(document).ready(function (){
        $link = location.href;
        var str = $link;
        if (str.search("thu-vien/choose-all.html") > 0) {
            $val = 1;
        } else if (str.search("thu-vien/choose-dog.html") > 0) {
            $val = 2;
        } else if (str.search("thu-vien/choose-cat.html") > 0) {
            $val = 3;
        }
        
       	var source = [
            "Lọc bài viết...",
            "Tất cả",
            "Chó",
            "Mèo"
        ];
       	// Create a jqxComboBox
      	$("#jqxComboBox").jqxComboBox({ source: source, 
                                        selectedIndex: $val, 
                                        width: '110px',
                                        height: '25px', 
                                        theme: 'bootstrap' });                                     
        $("#jqxComboBox").jqxComboBox({autoDropDownHeight: true});
        $('#jqxComboBox').on('select', function (event) {
            var args = event.args;
            if (args) {                
                var item = args.item;
                var value = item.value;
                if(value === 'Chó') {
                    window.location='{linkS}thu-vien/choose-dog.html';
                }
                else if(value === 'Mèo') {
                    window.location='{linkS}thu-vien/choose-cat.html';
                }
                else if (value === 'Tất cả') {
                    window.location='{linkS}thu-vien/choose-all.html';
                }
            }
        }); 
    });
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
    <div class = "row">
        <div class = "hidden-xs hidden-sm hidden-md col-lg-3" 
             style="padding-left: 50px; 
                    padding-bottom: 40px">
            <div class="category_title">
                Tin tức sự kiện
            </div>
            <div>
                {category}
            </div>
            <div style="margin-left: -10px;
                        margin-bottom: 40px;
                        width: 100%">
                {left_facebook_page_plugin}
            </div>
        </div>
        <div class="col-sx-9 col-lg-9">
            <div class="breakcrumb">
                {breadcrumbs_path} 
                <!--<span style="float:right">
                    <div id='jqxComboBox'></div>
                </span>-->
            </div>                 
                        
            <div class="news_main" style ="margin-top: 30px">
                <!--BEGINLIST_PROMOTION-->
                <!--BEGIN_PROMOTION-->			                
                <div class="contentpaneopen">
                    <h2 class="contentheading" style="padding-bottom:10px">
                        <a  href = "{linkS}thu-vien/{news_key}/" 
                            style= "color:#262262;
                                    font-size:27px;
                                    font-family:SourceSansPro-Bold;
                                    outline: none">{news_name}</a>
                    </h2>					
                    <div class="article-toolswrap">
                        <div class="article-tools clearfix">
                            <div class="article-meta">
                                <span class="createby"
                                      style="color:#5b5b5b;
                                            font-size:17px;
                                            font-family:SourceSansPro-Regular;">
                                    {person_up} 
                                    <span style ="color: #999999">Ngày {date}, Tháng {month}, Năm {year}</span>
                                </span>
                            </div>
                        </div>
                    </div>					
                    <div class="article-content">                         
                        <table>
                            <tr>
                                <td style="padding-right:15px" class="hidden-xs hidden-sm">
                                    <h4>
                                        <a href="{linkS}thu-vien/{news_key}/" 
                                           class="previews">
                                            <img src="{linkS}upload/news/{news_image}" 
                                                width="200" 
                                                height="200"
                                                style ="-moz-border-radius:20px; 
                                                        -webkit-border-radius:20px;
                                                        border-radius: 20px;
                                                        margin-top: 10px"/>
                                        </a>
                                    </h4>                        
                                </td>
                                <td style="width:100%;" 
                                    class="hidden-xs hidden-sm">
                                    <h3 style="text-align:justify;
                                                font-family:SourceSansPro-Regular;
                                                font-size:17px;
                                                line-height: 23px;
                                                margin-top:10px;
                                                height: 170px;">
                                        <div>
                                            <span>
                                                {news_short}
                                            </span>
                                        </div>
                                    </h3>                                                      
                                    <div class="fb-like" 
                                        data-href="{linkS}thu-vien/{news_key}/" 
                                        data-layout="button_count"
                                        data-action="like"
                                        data-show-faces="true" 
                                        data-share="true"> 
                                    </div>                                    
                                </td> 
                                
                                <!-- Mobile-->
                                <td style="padding-right:15px" class="hidden-md hidden-lg">
                                    <h4>
                                        <a href="{linkS}thu-vien/{news_key}/" 
                                           class="previews">
                                            <img src="{linkS}upload/news/{news_image}" 
                                                width="120" 
                                                height="120"
                                                style ="-moz-border-radius:20px; 
                                                        -webkit-border-radius:20px;
                                                        border-radius: 20px;
                                                        margin-top: 10px"/>
                                        </a>
                                    </h4>                        
                                </td>
                                <td style="width:100%;" class="hidden-md hidden-lg">
                                    <h3 style="text-align:justify;
                                                font-family:SourceSansPro-Regular;
                                                font-size:17px;
                                                line-height: 23px;
                                                margin-top:10px;
                                                height: 100px;">
                                        <div>
                                            <span>
                                                {news_short}
                                            </span>
                                        </div>
                                    </h3>                                                      
                                    <div class="fb-like" 
                                        data-href="{linkS}thu-vien/{news_key}/" 
                                        data-layout="button_count"
                                        data-action="like"
                                        data-show-faces="true" 
                                        data-share="true"> 
                                    </div>                                    
                                </td> 
                                <!--End mobile-->
                                <td>                                        
                                </td>
                            </tr>                                            
                            <tr>
                                <td>
                                </td>                         
                                <td class = "linkDetail" 
                                    style="text-align:right">
                                    <a href="{linkS}thu-vien/{news_key}/" 
                                       class="readon" 
                                       style="color: #337ab7;
                                            font-size:17px;
                                            font-family:SourceSansPro-Regular;
                                            outline: none">
                                        Xem chi tiết
                                    </a>                                     
                                </td>                                                        
                            </tr>
                        </table>                   					
                    </div>
                    <hr style = "margin-bottom: 30px"/>                    
                </div>
                <p> </p>
                <!--END_PROMOTION-->
                <!--ENDLIST_PROMOTION-->
            </div><!-- end product_main -->
            <div class="pagination" 
                 align="center" 
                 style="margin-left: auto;
                        margin-right: auto;
                        font-size:14px;
                        font-family:SourceSansPro-Regular;
                        display:block;
                        clear:both">
                {page}  
            </div>            
            <br/>
        </div>
        
    </div>
</div><!-- end product -->