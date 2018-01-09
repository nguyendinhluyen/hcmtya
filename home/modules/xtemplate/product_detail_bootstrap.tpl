<head>
    <!--Begin jqxRating-->   
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.base.css" type="text/css"/>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.arctic.css" type="text/css"/>
    <script type="text/javascript" src="{linkS}layout/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxrating.js"></script>
    <!--End jqxRating-->              
    
    <!--Chua biet vi tri su dung -->
    <script type="text/javascript" src="{linkS}layout/js/jquery-ui-1.8.16.custom.min.js"></script>
    
    <!--Begin Logo Slick-->
    <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/slick/slick/slick.css"/>        
    <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/bootstrap/css/slick/slick/slick.min.js"></script>
    <!--End Logo Slick-->       
</head>

<script type="text/javascript">
    $(document).ready(function () 
    {
        // Create jqxRating
        $("#jqxRating").jqxRating({ width: 100, height: 35, theme: 'classic'});			
        $('#jqxRating').jqxRating({singleVote:true});											
        $("#jqxRating").on('change', function (event)
        {																					
            var user_name = document.getElementById("user_name").innerHTML;								
            if(user_name === " ")
            {																										  						
                alert( "Bạn phải đăng nhập để đánh giá sản phẩm!");					
            }				
            else if(user_name !== " ")
            {
                rate_count = 0;
                rate_sum = 0;
                rate_avg = 0;
                $("#rate").find('span').remove();
                $("#rate").append('<span>' + event.value + '</span');
                var ketqua = event.value;
                rate_sum = parseInt(document.getElementById("rate_sum").innerHTML);
                rate_sum += parseInt(ketqua);
                rate_count = parseInt(document.getElementById("rate_count").innerHTML);
                rate_count++;
                rate_avg = Math.ceil(rate_sum / rate_count);																
                var rating = document.getElementById("count_rates");
                listrate = "";
                for( i = 0 ; i < rate_avg; i++)
                {
                    listrate += '<img src = {linkS}layout/images/star.png>';
                }		
                rating.innerHTML = listrate;
                document.getElementById("rate_count").innerHTML	= rate_count;
                alert("Bạn đánh giá sản phẩm " + ketqua + " sao!");					
                addVoteForProduct();										
            }				
        });
   });
</script>

<style>
    a:hover, a:link{
        text-decoration: none;
    }
    .showrate{
        height: 20px;
        float: left;
    }
    .list_images{
        margin-top:10px;
        margin-left: auto;
        margin-right: auto;
        text-align: center;
        width:220px !important;
    }
    .cloud-zoom-gallery{
        width: 60px;
        height: 70px;
        padding : 3px;
    }
    .share{
        float: left;
        width: 19px;
    }
</style>


<style>
    a.list_product_name:hover{
        text-decoration: none;
    }
    a.list_product_name:link{
        text-decoration: none;
    }
    a.news_name{
        color: #929292;
    }
    a.news_name:hover{
        text-decoration: none;
        color:#ff767c;
    }
    a.news_name:link{
        text-decoration: none;
    }
    a.news_name_destail:hover{
        text-decoration: none;
    }
    .product_detail
    {
        position:relative;
        overflow:hidden;
    }
    .product_detail .textbox
    {
        width:195px;
        height:215px;
        position:absolute;
        top:0;
        left:0;
        margin-top:-215px;
        border-radius:15px;
        background-color: #66d0f1;
        border-style:solid;
        border-width: 10px;
        border-color: #e0f8ff;
    }
    .product_detail:hover .textbox
    {
        margin-top:0;
    }
    .textbox
    {
        -webkit-transition: all 0.5s ease;
        transition: all 0.5s ease;
        cursor: pointer;
    }
</style>

<script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>

<div class = "container">
    <div class="row">                
        <div class = "col-xs-12 col-sm-12 col-md-9 col-lg-9"
             style="padding-left: 50px;">
            <div id = "user_name" style="display:none"> {user_name}</div>
            <div id = "rate_sum" style="display:none"> {rate_sum}</div>                                  
            <div id="breakcrumb" style="font-family:RobotoSlabRegular; 
                                        font-size:14px; 
                                        margin-top: 5%; 
                                        line-height: 30px">
                {breadcrumbs_path}
            </div>
            <div class="col1_content">                                
                <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div id="detail1">                        
                        <div>                                        
                            <h3 style="font-weight:500; text-align:center; 
                                padding-bottom: 10px">
                                <span style="color: #428bca; 
                                            font-size: 18px; 
                                            line-height: 30px;
                                            text-transform: uppercase;
                                            font-family: RobotoSlabRegular;">
                                    {product_name}
                                </span>
                            </h3>                                                        
                        </div> 
                        <!--<div class="list_images">
                            <a href="{linkS}upload/product/thumb/{product_image}"
                               style ="outline:none"
                               class ="cloud-zoom" 
                               id="zoom1" 
                               rel="tint: '#666',
                                    tintOpacity:0.5,
                                    smoothMove:5,
                                    zoomWidth:355, 
                                    zoomHeight:325, 
                                    adjustY:-4, 
                                    adjustX:10"/>                                
                                <img src="{linkS}upload/product/thumb/image.php?file={product_image}&sizex=220px" 
                                     class="img_big" 
                                     alt="{product_name}"
                                     style="width: 220px; margin-top: 13%; height: 220px"/>
                                
                            </a>
                            {list_img_product}
                        </div>-->
                    </div><!-- end detail1 -->
                </div>                                        
                <div class = "col-sm-12 col-sx-12 col-md-12 col-lg-12" style="padding:0px">
                    <form name='cart' action="{linkS}gio-hang/{product_key}/add" method="post">                        
                        <div style="font-family:RobotoSlabRegular;">                            
                            <div class="col-sm-12 col-sx-12 col-md-6 col-lg-6" style="float:left; padding: 0px">
                                <img src="{linkS}upload/product/thumb/{product_image}"                           
                                     alt="{product_name}"
                                     style="width: 300px;
                                            height: 300px;">
                            </div>
                            <div class="col-sm-12 col-sx-12 col-md-6 col-lg-6" style="float:left">
                                <table style = "float:left;                                       
                                                line-height: 30px;
                                                margin-bottom: 5px;">
                                    {khuyenmai}                                                                                                           
                                </table>
                                <hr  style = "margin-top: 10px;
                                    margin-bottom: 15px;
                                    border-width:1px;                                                
                                    border-color:#cccccc; width:100%; float:left">    
                                <table style=" clear:both">
                                    <tr>                                        
                                        <td 
                                            <span style="font-size: 14px; line-height: 25px">
                                                Số lượng
                                            </span> 
                                        </td>
                                    </tr>
                                    <tr>                                                                            
                                        <td style="padding-top: 5px;
                                                   padding-bottom: 10px;">                                            
                                            <span>
                                                <select name='quantity' 
                                                        id='quantity'                                                        
                                                        style = "-webkit-border-radius: 10px;
                                                                -moz-border-radius: 10px;                                                                
                                                                height: 35px;
                                                                width: 80px;
                                                                outline: none;
                                                                padding: 5px;
                                                                font-family: RobotoSlabRegular;
                                                                font-size: 14px;
                                                                border: 1px solid #ddd;
                                                                font-weight: lighter;
                                                                margin-right: 45px"
                                                        class="form-control">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                </select>   
                                            </span>
                                        </td>
                                        <td>
                                            <input type="submit" 
                                                   class="addcart" {hidden} 
                                                   name="addcart"                                                   
                                                   style="outline:none;
                                                          height:40px"
                                                   value=""/>
                                        </td>
                                    </tr>
                                </table>
                                <table style=" clear:both; margin-top: 10px">
                                <!-- Ngan Luong, Bao Kiem -->
                                    <tr>                                         
                                        <td>                                            
                                            <!--<a class="nganluong" 
                                               style="margin-right:15px; outline:none" 
                                               target="_blank"
                                               href="https://www.nganluong.vn/button_payment.php?receiver=support@nanapet.com&amp;product_name={product_name}&amp;price={product_price_nodot}&amp;return_url=http://nanapet.com">
                                                <img src="https://www.nganluong.vn/data/images/merchant/button/btn-paynow-125.png" 
                                                     width="107px" 
                                                     height= "70px" 
                                                     border="0" 
                                                     title="Thanh toán trực tuyến AN TOÀN và ĐƯỢC BẢO VỆ, 
                                                        sử dụng thẻ ngân hàng trong và ngoài nước hoặc nhiều hình 
                                                        thức tiện lợi khác.Được bảo hộ & cấp phép bởi 
                                                        NGÂN HÀNG NHÀ NƯỚC, ví điện tử duy 
                                                        nhất được cộng đồng ƯA THÍCH NHẤT 2 
                                                        năm liên tiếp, Bộ Thông tin Truyền thông trao giải thưởng Sao Khuê.">
                                            </a>-->
                                            <a href="{linkS}tro-giup/cach-thuc-thanh-toan.html">
                                                <span style="outline:none;
                                                            float:right;
                                                            background-color: #00acd7;
                                                            border: none;
                                                            color: #fff;
                                                            font-family:PoetsenOne;
                                                            -webkit-border-radius: 20px;
                                                            -moz-border-radius: 20px;
                                                            border-radius: 20px;
                                                            padding: 10px 20px 10px 20px;
                                                            cursor: pointer;
                                                            font-size: 14px"
                                                            title="Thanh toán tiền mặt (COD), Thanh toán chuyển khoản 
                                                            và Thanh toán qua nhà xe.">
                                                    PT Thanh toán</span>
                                            </a>                                                
                                        </td>
                                        <td>
                                            <!--<a class="baokim" style="margin-right:15px; outline:none" 
                                                href="https://www.baokim.vn/payment/customize_payment/product?business=support@nanapet.com&product_name={product_name}&product_price={product_price_nodot}&product_quantity={product_quantity}&total_amount={total_amount}" 
                                                target="_blank"/>
                                                <img src="https://www.baokim.vn/application/uploads/buttons/btn_safety_payment_3.png" 
                                                     width="107px" 
                                                     height= "70px" 
                                                     alt="Thanh toán an toàn với Bảo Kim !" 
                                                     width="100px" 
                                                     width="100px" 
                                                     border="1" 
                                                     title="Thanh toán trực tuyến an toàn dùng tài khoản Ngân hàng 
                                                            (VietcomBank, TechcomBank, Đông Á, VietinBank, Quân Đội, VIB, SHB,... 
                                                            và thẻ Quốc tế (Visa, Master Card...) qua Cổng thanh toán trực tuyến BảoKim.vn"/>
                                            </a>-->
                                            <a href="{linkS}tro-giup/dich-vu-van-chuyen.html">
                                                <span style="outline:none;
                                                            float:right;
                                                            background-color: #00acd7;
                                                            border: none;
                                                            color: #fff;
                                                            font-family:PoetsenOne;
                                                            -webkit-border-radius: 20px;
                                                            -moz-border-radius: 20px;
                                                            border-radius: 20px;
                                                            padding: 10px 20px 10px 20px;
                                                            cursor: pointer;
                                                            margin-left: 10px;
                                                            font-size: 14px"
                                                        title="Dịch vụ vận chuyển tận nhà tiện lợi.">
                                                    PT Vận chuyển</span>
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                                <table style="margin-top: 20px">
                                    <tr>
                                        <td>
                                            <div class="fb-like" 
                                                 data-href="https://www.facebook.com/NanaPetOnline" 
                                                 data-layout="standard" 
                                                 data-action="like" 
                                                 data-show-faces="true" 
                                                 data-width="380"
                                                 data-share="true"></div>
                                        </td>
                                    </tr>
                                        
                                </table>
                            </div>
                        </div><!-- end detail2 -->
                    </form>                                                 
                </div>
                <div class ="row">                        
                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">                                                
                        <!--Thong tin san pham -->
                        <hr  style = "margin-top: 30px;
                                    margin-bottom: 15px;
                                    border-width:1px;                                                
                                    border-color:#cccccc; width:100%; float:left"/>    
                        <table style = "line-height: 30px; 
                                        width: 100%; 
                                        float: left;
                                        font-family: RobotoSlabRegular;
                                        line-height: 30px;
                                        font-size: 14px;
                                        padding-top: 10px">
                            <tr>
                               <td colspan="2">                                            
                                   <span style = "font-size: 14px;                                                   
                                                  color: #101010;">CHI TIẾT SẢN PHẤM</span>                                        
                               </td>    
                            </tr>
                            <tr style="font-size: 14px;">                                        
                                <!-- Nha san xuat -->                                        
                                <td style="width: 30%">
                                    <span style ="font-size: 14px;">Thương hiệu </span>
                                </td>
                                <td>
                                    <span>
                                        <a href="{linknsx}" 
                                           target="_blank" 
                                           style ="font-size: 14px; outline:none; color:black">{nsx}</a>
                                    </span>
                                </td>                            
                            </tr>                                                    
                            <tr>
                                <!-- Xuat xu -->
                                <td>
                                    <span style = "font-size: 14px">Xuất xứ </span>
                                </td>
                                <td>
                                    <span style = "font-size: 14px">{xuatxu}</span>
                                </td>
                            </tr>
                            {product_color}
                            {product_type}
                            <tr>
                                <td>
                                    <span style="font-size: 14px">Tình trạng</span>
                                </td>
                                <td>
                                    <span style="color: #00acd7;font-size: 14px">
                                        <div>{status}</div>
                                    </span>
                                </td>
                            </tr>    
                            <tr>
                                <td style="float: left">
                                    <span style="text-align:left">
                                        Số lần đánh giá
                                    </span>                                
                                </td>
                                <td>
                                    <div id = "rate_count" 
                                         style="font-size: 14px;                                                                 
                                                font-weight:bold;"> 
                                        {rate_count}
                                    </div>			   				
                                </td>
                            </tr>
                             <tr>                                        
                                <td style="float: left">
                                    <span style="text-align:left">
                                        Đánh giá trung bình
                                    </span>
                                </td>                                        
                                <td>
                                    <span id="count_rates" style="font-size: 14px;"> 
                                        {count_rates} 
                                    </span>
                                </td>                            
                            </tr>
                            <tr>
                                <td>                                           
                                    <a href="#addToMyFavorite" 
                                       onClick="addToMyFavorite();" 
                                       style ="font-size: 14px; outline:none">
                                        {them_vao_ua_thich}
                                    </a>
                                </td>                            
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <br/>
                                </td>
                            <tr>
                        </table>    
                        <div>
                            <div class="hidden-xs hidden-sm">
                                <br/>
                                <a  href="#section1" style="font-size:14px; 
                                                            color:#A00; 
                                                            font-weight:bold; 
                                                            margin-right:10px; 
                                                            padding-top:10px; 
                                                            padding-bottom:10px; 
                                                            padding-left: 10px; 
                                                            padding-right:10px;
                                                            background:#FFF2F2; 
                                                            -moz-border-radius: 7px 7px 0px 0px; 
                                                            border-radius: 7px 7px 0px 0px;
                                                            font-family: RobotoSlabLight;
                                                            outline:none">
                                    Thông tin sản phẩm 
                                </a>

                                <a href="#section2" style="font-size:14px; 
                                                           color:#A00; 
                                                           font-weight:bold; 
                                                           margin-right:10px; 
                                                           padding-top:10px; 
                                                           padding-bottom:10px; 
                                                           padding-left: 10px; 
                                                           padding-right:10px;
                                                           background:#FFF2F2; 
                                                           -moz-border-radius: 7px 7px 0px 0px; 
                                                           border-radius: 7px 7px 0px 0px;
                                                           font-family: RobotoSlabLight;
                                                           outline:none">
                                    Ý kiến khách hàng 
                                </a>     
                                <a href="#section3" style="font-size:14px; 
                                                           color:#A00; 
                                                           font-weight:bold; 
                                                           margin-right:10px; 
                                                           padding-top:10px; 
                                                           padding-bottom:10px; 
                                                           padding-left: 10px; 
                                                           padding-right:10px;
                                                           background:#FFF2F2; 
                                                           -moz-border-radius: 7px 7px 0px 0px; 
                                                           border-radius: 7px 7px 0px 0px;
                                                           font-family: RobotoSlabLight;
                                                           outline:none">
                                    Đánh giá sản phẩm
                                </a>                         
                            </div>                                       
                                                        
                            <div class="visible-xs-block visible-sm-block">
                                <br/>
                                <a  href="#section1" style="font-size:14px; 
                                                            color:#A00; 
                                                            font-weight:bold; 
                                                            margin-right:10px; 
                                                            padding-top:10px; 
                                                            padding-bottom:10px; 
                                                            padding-left: 10px; 
                                                            padding-right:10px;
                                                            background:#FFF2F2; 
                                                            -moz-border-radius: 7px 7px 0px 0px; 
                                                            border-radius: 7px 7px 0px 0px;
                                                            font-family: RobotoSlabLight;
                                                            outline:none">
                                    Thông tin sản phẩm 
                                </a>                               
                            </div>                                                                   
                                                        
                            <div id = "line_customer" style=" box-shadow: 1px 1px 1px #DDF; 
                                                              width: 100%; 
                                                              height: 1px; 
                                                              margin-bottom:20px; 
                                                              margin-top:7px;">                                    
                            </div>	                                              
                            
                            <div id="tab_container" style="margin-right:5px">
                                <div>                     
                                    <a name ="section1"></a>
                                    <div id = "info_product">
                                        <div align="justify" 
                                            style=" margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail};
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px;">
                                            Giới thiệu
                                        </div>

                                        <div style="margin-bottom:10px; 
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail}
                                        </div>

                                        <div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                     font-size:14px;
                                                     display:{display_product_detail_tacdung};                                                     
                                                     font-family:RobotoSlabRegular;
                                                     margin-left:2px">
                                            Tác Dụng
                                        </div>                                    

                                        <div style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_tacdung}
                                        </div>

                                        <div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_phuhopcho};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Phù Hợp Cho
                                        </div>    

                                        <div style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_phuhopcho}
                                        </div>   

                                        <div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_nguyenlieu_thanhphan};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Nguyên Liệu / Thành Phần
                                        </div>   

                                        <div style="margin-bottom:10px; 
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_nguyenlieu_thanhphan}
                                        </div>   

                                        <div align="justify" 
                                             style=" margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_phantichdambao};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Phân Tích Đảm Bảo
                                        </div>  

                                        <div style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_phantichdambao}
                                        </div>   

                                        <div align="justify" 
                                             style="margin-bottom:10px;                                                     
                                                    font-size:14px;
                                                    display:{display_product_detail_huongdansudung};
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Hướng Dẫn Sử Dụng
                                        </div>  

                                        <div style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_huongdansudung}
                                        </div>

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_huongdanbaoquan};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Hướng Dẫn Bảo Quản
                                        </div>    
                                        <div style="margin-bottom:10px;
                                                    margin-left:2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_huongdanbaoquan}
                                        </div>

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_luuy};                                                     
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Lưu Ý
                                        </div> 

                                        <div style="margin-bottom:10px; 
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_luuy}
                                        </div>   

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_khuyenkhich};
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Khuyến Khích
                                        </div>

                                        <div style="margin-bottom:10px; 
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_khuyenkhich}
                                        </div>   

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_donggoi_thetich};
                                                    font-family: RobotoSlabRegular;
                                                    margin-left: 2px">
                                            Đóng Gói / Thể Tích
                                        </div>

                                        <div style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_donggoi_thetich}
                                        </div>   

                                        <div align="justify"
                                              style="margin-bottom:10px;                                                      
                                                    font-size:14px;
                                                    display:{display_product_detail_nhasanxuat};
                                                    font-family:RobotoSlabRegular;
                                                    margin-left:2px">
                                            Nhà Sản Xuất
                                        </div>

                                        <div style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_nhasanxuat}
                                        </div>

                                        <div align="justify" 
                                              style="margin-bottom:10px;                                                      
                                                     font-size:14px;
                                                     display:{display_product_detail_xuatxu};                                                     
                                                     font-family: RobotoSlabRegular;
                                                     margin-left: 2px">
                                            Xuất Xứ
                                        </div>

                                        <div style="margin-bottom:10px;
                                                    margin-left: 2px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    line-height: 25px">
                                            {product_detail_xuatxu}
                                        </div>                 

                                        <a name = "section2"/>
                                        <a name = "section3"/>      
                                        <div {display_realtion_news}>
                                            <hr style="margin-top: 10px;
                                                       margin-bottom: 5px;
                                                       margin-left: auto;
                                                       margin-right: auto;                                                           
                                                       color: #999999">
                                            <div style="padding-top: 2px ; padding-bottom: 20px">
                                                <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px">
                                                    <table style="text-align: left;">
                                                        <tr>                                
                                                            <td>
                                                                <span style="color: #48817a;
                                                                             font-size: 14px;
                                                                             font-family: RobotoSlabRegular;
                                                                             margin-left: 10px;">
                                                                    BÀI VIẾT LIÊN QUAN
                                                                </span>
                                                            </td>
                                                        </tr>                            
                                                    </table>                        
                                                </div>   

                                                <table style="margin-top: 20px">
                                                    <tr>
                                                        {relation_news}
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                        <hr style="margin-top: 20px;
                                                    margin-bottom: 5px;
                                                    margin-left: auto;
                                                    margin-right: auto;                                                           
                                                    color: #999999">
                                        <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px; margin-bottom: 10px">
                                            <table style="text-align: left;">
                                                <tr>                                
                                                    <td>
                                                        <span style="color: #48817a;
                                                                     font-size: 14px;
                                                                     font-family: RobotoSlabRegular;
                                                                     margin-left: 10px;">
                                                            BÌNH LUẬN SẢN PHẨM
                                                        </span>
                                                    </td>
                                                 </tr>                            
                                            </table>                        
                                         </div>                                         
                                        {form_comment}
                                    </div>                                         
                                </div><!-- end tab_container -->
                            </div><!-- end detail3 -->
                        </div><!-- end col_content -->
                    </div>
                </div>
            </div><!-- end product -->
            
            <div style="display: none;">
                <div id="product_name_hidden">{product_name}</div>
                <div id="product_quantity_hidden">{product_quantity}</div>
                <div id="total_amount_hidden">{total_amount}</div>
                <div id="email_hidden">{email}</div>
            </div>    
        </div>
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3"
             style="padding-right: 50px">
            <!-- <img src="{linkS}layout/bootstrap/images/category.png" style="float: right; clear: both; width: 100%"/>
            {category}-->
            <a href="{linkS}lien-he">
                <img src="{linkS}layout/bootstrap/images/product_contact.png"
                     style="float: right;
                            clear: both;
                            width: 100%;
                            margin-top: 45px;
                            padding-left: 8px"/>
            </a>
            {left_facebook_page_plugin}
        </div>                                        
    </div>
</div>   




<!-- Begin San Pham Theo Nhan Hieu-->
<div class = "container" style="padding-left: 50px; padding-right: 50px">
    <br/>    
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12">            
            <img src="{linkS}layout/bootstrap/images/san_pham_lien_quan.png"
                 style = "display:block; 
                          margin-left: auto; 
                          margin-right: auto;
                          width: 100%;"/>
            
        </div>
    </div>
</div>
<!-- End San Pham Theo Nhan Hieu-->

<!-- Begin Logo Slider
<div class = "container" style="padding-left: 50px; padding-right: 50px">
    <div class="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="height: 80px;">
            <div class="responsive" style="height: 80px;">
                {list_advs}
            </div>
            <style>
                .slick-prev
                {
                    background-image: url({linkS}layout/bootstrap/images/line.png);
                    height: 40px;
                    margin-top: -20px;
                    border-radius: 5px;
                }
                .slick-prev:hover
                {
                    background-color: #0099ff;
                    border-radius: 5px;
                }

                .slick-next
                {
                    background-image: url({linkS}layout/bootstrap/images/line.png);
                    height: 40px;
                    margin-top: -20px;
                    border-radius: 5px;
                }
                 .slick-next:hover
                {
                    background-color:#0099ff;
                    border-radius: 5px;
                }
            </style>
            <script type="text/javascript">
                $('.responsive').slick({
                    slidesToShow: 10,
                    slidesToScroll: 3,
                    autoplay: true,
                    autoplaySpeed: 2000
                });
            </script>
        </div>
    </div>
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div style = "float: right;
                           font-weight: 300;
                           font-family: RobotoSlabRegular;
                           width: 100px;
                           text-align: right;
                           margin-right: 10px">
                <a href="#" style ="color: #45b6fe;">Xem tất cả<a>
            </div>
            <br/>
            <div style = "height: 2px;
                          background-color:#edf8fb;
                          margin-left: 10px;
                          margin-right: 10px">
            </div>
        </div>
    </div>
    <br/>
    <br/>
</div>
<!-- End Logo Slider-->

<!--Begin product lien quan -->
<div class="container" style="padding-top: 40px">
    <div class="row" style="padding-bottom: 10px">
        <!--BEGINLIST_PRODUCTS-->
        <!--BEGIN_PRODUCTS-->
        <li>
            <div class="product_detail" style="width: 225px">
                <div class="product_name">
                    <!--{promotion_Sale}-->
                    <img src="{linkS}upload/product/{product_img}"
                         width="140"
                         height="140"
                         alt="{product_name}"
                         style = "margin-left: 28px; cursor: pointer"/>
                    <div class="textbox"
                         style = "padding-top: 70px; padding-left: 38px">
                        <a class = "list_product_name"
                           href="{linkS}{category}/{product_key}.htm"
                           style = "outline:none;">
                            <p class="click_detail"
                               style="font-family:RobotoSlabRegular;
                                      color: #ffffff;
                                      width: 100px;
                                      height: 20px;
                                      font-weight:300;
                                      font-size: 14px;
                                      text-align: center;">
                                <img src="{linkS}layout/bootstrap/images/xem_chi_tiet.png"
                                     width="70px"
                                     alt="{product_name}"
                                     style = "cursor: pointer;
                                               margin-bottom: 5px">
                                Xem chi tiết
                            </p>
                        </a>
                    </div>
                </div><!-- End product_name_col -->

                <div class="product_tit">
                    <div style="font-size: 14px;
                                color: #929292;
                                cursor: pointer;
                                font-family: RobotoSlabRegular;">
                        {product_name}
                    </div>
                </div>
                <div class="product_price"
                     style = "cursor: pointer;
                              font-family:RobotoSlabRegular;
                              font-size: 14px;">
                    {product_price} VNĐ
                </div>
            </div><!-- end product_detail -->
        </li>
        <!--END_PRODUCTS-->
        <!--ENDLIST_PRODUCTS-->
    </div>
</div>
<!--End prouducts lien quan-->
        
<link rel="stylesheet" href="{linkS}layout/css/postfinal.css" type="text/css" />     
<link rel="stylesheet" href="{linkS}plugins/jrating_v2.1/jquery/jRating.jquery.css" type="text/css" />
<script type="text/javascript" src="{linkS}plugins/jrating_v2.1/jquery/jRating.jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function(){			
        $('.rating').jRating({
            step:false,
            length:5,
            decimalLength:1,
            rateMax:5,
            onSuccess : function()
            {
                var mail = $("#email_hidden").text();
                if(mail !== "")
                    alert('Bạn đánh giá cho sản phầm '+ rateProduct + ' sao.');
                else
                    alert("Bạn phải đăng nhập để đánh giá");
            },
            onError : function()
            {
                alert('Error : Vui lòng thử lại');
            }
        });
    });
</script>		
	
<script type="text/javascript">  
    
    function addToMyFavorite()
    {
        if ($("#type").index() !== -1) 
        {
                var product_type = $("input[name='type']:checked").val();
                var subvalues = product_type.split('::');
                product_type =subvalues[0];
        }
        else
        {
                var product_type = '';
        }
        var product_color = $("input[name='color']:checked").val();
        var product_price = $('.show_price').text();
        var product_quantity =  $('#quantity').val();
        $.ajax
        ({
            type: "POST",
            url: "{linkS}home/modules/ajax/addMyFavorite.php",
            data: {
                "email" : "{email}",
                "product_name" : "{product_name}",
                "product_key" : "{product_key}",
                "product_type" : product_type,
                "product_color" : product_color,
                "product_price" : product_price,
                "product_quantity" : product_quantity,
            },
            success: function(msg)
            {
                alert(msg);
            }
        });
    }
    function addVoteForProduct()
    {		    
        var value = $('#jqxRating').jqxRating('value');
        $.ajax
        ({
            type: "POST",
            url: "{linkS}home/modules/ajax/VoteForCustomer.php",
            data: {
                "id_product" : "{id_product}",
                "rate" : value,
                "user_name" : "{user_name}"
            },
            success: function(msg)
            {
                alert(msg);
            }			
        });
    }	
</script>