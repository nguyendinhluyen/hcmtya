<script>
    function myFunctionSubmit() {
        document.getElementById("pass_new").required = true;
        document.getElementById("pass_confirm").required = true;
        if (document.getElementById("pass_new").value === "") {
            document.getElementById('pass_new').setCustomValidity('Vui lòng nhập mật khẩu!');
        } else {
            if (document.getElementById("pass_confirm").value === "") {
                document.getElementById('pass_confirm').setCustomValidity('Vui lòng xác nhận mật khẩu!');
            } else {
                if (document.getElementById("pass_confirm").value !== document.getElementById("pass_new").value) {
                    document.getElementById('pass_confirm').setCustomValidity('Mật khẩu nhập lại không trùng!');
                } else {
                    document.getElementById('pass_new').setCustomValidity('');
                }
            }
        }
    }

    function functionOninputPassword() {
        document.getElementById('pass_new').setCustomValidity('');
    }

    function functionOninputPasswordConfirm() {
        document.getElementById('pass_confirm').setCustomValidity('');
    }
</script>

<div class="container-fluid full-banner hidden-xs hidden-sm"
    style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
    ĐỔI MẬT KHẨU
</div>
<div class="container">
    <div class="row" style="font-family: RobotoSlabRegular;">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding-left: 50px">
            <!-- left col-->
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" 
                 style ="padding-left: 0px; margin-bottom: 250px">                        
                <table style="-webkit-border-radius:25px;
                       -moz-border-radius:25px;                             
                       -webkit-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
                       -moz-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
                       background-color: #f2fbff;
                       border-radius:25px;
                       text-align: left;
                       box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);">                             
                    <tr>
                        <td>
                            <img src="{linkS}upload/avatar/{avatar}" 
                                 width="250px" 
                                 style = "-webkit-border-radius:25px;
                                          -moz-border-radius:25px;
                                          border-radius:25px;">
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>                                                                                                            
                            <table cellspacing="0" 
                                   cellpadding="0" 
                                   width="100%" 
                                   id="contact_form" 
                                   border="0">
                                <tr>
                                    <td style = "padding-left: 25px">
                                        <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_1.png" 
                                             height="20px"/>
                                    </td>
                                    <td>                                                    
                                        <a href="{linkS}thong-tin-tai-khoan"
                                           style="font-family: SourceSansPro-Regular; 
                                           font-size: 17px;
                                           margin-left: 10px;
                                           line-height: 35px;
                                           color: #000">
                                            Thông tin của bạn
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style = "padding-left: 25px">
                                        <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_2.png" 
                                         height="20px"/>
                                    </td>
                                    <td>
                                        <a href="{linkS}tham-gia-thi"
                                           style="font-family: SourceSansPro-Regular;
                                                  font-size: 17px; 
                                                  margin-left: 10px;
                                                  line-height: 35px;
                                                  color: #000">
                                            Tham gia thi
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr style = "border-color: #93a4ac;  border-width: 1px;"/>
                                    </td>
                                    <td>
                                        <hr style = "border-color: #93a4ac;  border-width: 1px;"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style = "padding-left: 25px">
                                        <img src="{linkS}layout/bootstrap/images/thong_tin_tai_khoan_6.png" 
                                             height="20px"/>
                                    </td>
                                    <td>
                                        <a href="{linkS}doi-mat-khau"
                                            style="font-family: SourceSansPro-Regular; 
                                                  font-size: 17px; 
                                                  margin-left: 10px;
                                                  line-height: 35px;
                                                  color: #000;">
                                            Đổi mật khẩu
                                        </a>                                                           
                                    </td>
                                </tr>
                            </table>                                                                            
                        </td>                                
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>																
            </div>
            <!-- right col-->                                         
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" 
                 style="margin-bottom: 30px; 
                        font-family: SourceSansPro-Regular;">
                <table style="text-align: left;">
                    <tr>
                        <td style="line-height: 40px">
                            <div style="font-size: 17px;">
                                Họ và tên: <span style ="color:blue">{name}</span>
                            </div>
                            <div style="font-size: 17px;">
                                Thành viên: <span style ="color:red">{level}</span>
                            </div>
                        </td>
                    </tr>                    
                </table>                        
                <form method="POST" name="petprofile" enctype="multipart/form-data">
                    <div class="main_register">
                        <fieldset class="fieldset_reg_info">
                            <hr style="margin-right: 35px"/>
                            <table width="100%" style="font-size: 17px"">
                                <tr>
                                    <td style="width: 50%;">                                        
                                        <div style="margin-bottom: 10px">
                                            Mật khẩu mới <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input type="password" 
                                                   id="pass_new" 
                                                   name="pass_new"                                                     
                                                   class ="form-control"
                                                   oninput="functionOninputPassword();"
                                                   style = "-webkit-border-radius: 10px;
                                                   -moz-border-radius: 10px;
                                                   border-radius: 10px;
                                                   height: 40px;
                                                   outline: none;
                                                   padding: 5px;
                                                   font-family: RobotoSlabRegular;
                                                   font-size: 17px;                                            
                                                   border: 1px solid #ddd;
                                                   font-weight: lighter;
                                                   color: #adadad;
                                                   width: 90%"
                                                   maxlength="30"/>
                                        </div>                                        
                                    </td >
                                    <td style="width: 50%;">                                        
                                        <div style="margin-bottom: 10px">
                                            Nhập lại mật khẩu mới <span style="color:red">*</span>
                                        </div>
                                        <div class ="form-group">
                                            <input type="password" 
                                                   id="pass_confirm" 
                                                   name="pass_confirm"                                                    
                                                   class ="form-control"
                                                   oninput="functionOninputPasswordConfirm();"
                                                   style = "-webkit-border-radius: 10px;
                                                   -moz-border-radius: 10px;
                                                   border-radius: 10px;
                                                   height: 40px;
                                                   outline: none;
                                                   padding: 5px;
                                                   font-family: RobotoSlabRegular;
                                                   font-size: 17px;                                            
                                                   border: 1px solid #ddd;
                                                   font-weight: lighter;
                                                   color: #adadad;
                                                   width: 90%"
                                                   maxlength="30"/>
                                        </div>                                        
                                    </td>
                                </tr>                                
                            </table>
                        </fieldset>                        
                    </div>
                    <input  type="submit"
                            name="submit"
                            value="Đổi mật khẩu"
                            onclick="myFunctionSubmit();"
                            style="outline:none;                                                                  
                                background-color: #ff767c;
                                border: none;
                                color: #fff;
                                font-family:SourceSansPro-Bold;
                                -webkit-border-radius: 20px;
                                -moz-border-radius: 20px;
                                border-radius: 20px;
                                padding: 10px;
                                width: 130px;
                                font-size: 17px;
                                margin-bottom: 100px;
                                float:right;
                                margin-right: 35px;
                                margin-top: 20px">                                                
                </form>                        
            </div>
        </div>
    </div>
</div>