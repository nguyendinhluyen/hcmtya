<style>
    a:hover, a:link{
        text-decoration: none;
    }
</style>
<body>
    <div class="container" style="padding-right: 50px;">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" 
                 style="padding-left: 50px">
                <div id="breakcrumb"
                     style="font-family: RobotoSlabRegular;
                            font-size:14px;
                            margin-top: 30px;
                            margin-bottom: 25px">
                    {breadcrumbs_path}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3" 
                 style="padding-left: 50px;
                        padding-bottom: 10px">                
                <img class="img-circle"
                    src="{linkS}upload/avatar/{avatar}"
                    style="width: 80%; clear: both"
                    title="{name}">
            </div>            
            <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                <div style="clear: both; 
                            font-family:PoetsenOne; 
                            font-size: 25px; 
                            line-height: 30px;
                            color: #8f8f8f">
                    <div style="float: left">
                        {name}
                    </div>                    
                    <div style="float: right;">                        
                        <a href="{facebook}" target="blank">
                            <img src="{linkS}layout/bootstrap/images/facebook_grey.png"                                    
                                 title="Facebook {name}"
                                 height="35px">
                        </a>
                        <a href="{google}" target="blank">
                            <img src="{linkS}layout/bootstrap/images/google_grey.png"                                    
                                 title="Google+ {name}"
                                 height="35px">
                        </a>
                        <a href="{twitter}" target="blank">
                            <img src="{linkS}layout/bootstrap/images/twitter_grey.png"                                    
                                 title="Twitter {name}"
                                 height="35px">
                        </a>
                        <a href="{linkedin}" target="blank">
                            <img src="{linkS}layout/bootstrap/images/linkedin_grey.png"                                    
                                 title="Linkedin {name}"
                                 height="35px">
                        </a>
                    </div>
                </div>
                <div style="clear: both; 
                            font-family: RobotoSlabLight; 
                            font-size: 15px; 
                            line-height: 40px; 
                            color:#8f8f8f;
                            margin-bottom: 10px">
                    <img src="{linkS}layout/bootstrap/images/email.png">
                        {email}
                </div>
                <div style="clear: both;
                            line-height: 25px; 
                            font-size: 14px; 
                            font-family: RobotoSlabLight;                            
                            text-align: justify">
                    {short_content}
                </div>
            </div>
        </div>
        <hr style="margin-top: 30px;                
                margin-left: auto;
                margin-right: auto;                                                           
                color: #b0aaaa;
                margin-left: 100px;
                margin-right: 100px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" 
                 style="padding-left: 50px">


            </div>
        </div>
    </div>
    <div class="container" 
         style="padding-right: 50px;
                padding-left: 50px">
        <div class="news_main" style ="margin-top: 30px">
            <!--BEGINLIST_PROMOTION-->
            <!--BEGIN_PROMOTION-->			                
            <div class="contentpaneopen">
                <h2 class="contentheading" style="padding-bottom:10px">
                    <a  href = "{linkS}thu-vien/{news_key}/" 
                        style= "color:#000;
                                font-size:23px;
                                font-family:PoetsenOne;
                                outline: none">{news_name}</a>
                </h2>					
                <div class="article-toolswrap">
                    <div class="article-tools clearfix">
                        <div class="article-meta">
                            <span class="createby"
                                  style="color:#5b5b5b;
                                        font-size:13px;
                                        font-family:RobotoSlabLight;">
                                {person_up} <span style ="color: #999999">Ngày {date}, Tháng {month}, Năm {year}</span>
                            </span>
                        </div>
                    </div>
                </div>					
                <div class="article-content">                         
                    <table>
                        <tr>
                            <td style="padding-right:15px">
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
                            <td style="width:100%;">
                                <h3 style="text-align:justify;
                                            font-family:RobotoSlabLight;
                                            font-size:14px;
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
                                   style="color: #6699ff;
                                        font-size:14px;
                                        font-family:RobotoSlabRegular;
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
                        font-family:RobotoSlabRegular;
                        display:block">
            {page}
        </div>            
        <br/>
    </div>
</body>