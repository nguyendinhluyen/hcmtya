<style>
    .topNews td{
        font-family: Tahoma; 
        font-size: 12px;
        color:#333333;
        height:20px;
        line-height:20px;
        text-align:left;
        margin:5px;
        padding:5px;
    }
    .danhmuc{
        color: #420062;
    }
    .danhmuc a{
        color: #420062;
    }
</style>
<div class="container-fluid full-banner hidden-xs hidden-sm"
     style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
    KẾ HOẠCH
</div>
<div class="container-fluid full-banner-mobile hidden-md hidden-lg"
     style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
    KẾ HOẠCH
</div>   
<div class ="container">
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
        </div>
        <div class = "hidden-lg" 
             style="padding-left: 10px;">
            <div>
                {category}
            </div>
        </div>
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-9"
            style="padding-left: 10px;
                   padding-right: 40px">
            <div class="breakcrumb">
                {breadcrumbs_path}
            </div>
            <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <div class="tieude_help">
                                {tieude}
                            </div>                                                        
                        </td>
                    </tr>                    
                    <tr>
                        <td>
                            <div class="noidung_help">
                                {noidung}
                            </div>
                        </td>
                    </tr>                    
                </table> 
            </form>
        </div>
    </div>
</div>