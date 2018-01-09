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
</style>
<div class="container-fluid full-banner hidden-xs hidden-sm"
     style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
    LIÊN HỆ
</div>
<div class="container-fluid full-banner-mobile hidden-md hidden-lg"
     style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
    LIÊN HỆ
</div>    
<body onload="setTextArea();">
    <div class="container">
        <div class ="row">
            <div class ="col-sx-12 col-sm-12 col-md-12 col-lg-12" 
                 style="padding-right: 50px">
                <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                    <div class ="col-sx-12 col-sm-12 col-md-6 col-lg-6" 
                         style="margin-top: 30px; 
                                margin-left: 10px ;
                                font-family: SourceSansPro-Regular;
                                font-size: 17px;
                                line-height: 30px">
                        <div style="font-size: 30px;
                                    font-family: SourceSansPro-Bold;
                                    margin-bottom: 30px;
                                    margin-top: 15px">
                            Sở Du Lịch Thành Phố Hồ Chí Minh                        
                        </div>
                        <div style="font-family:SourceSansPro-Regular; 
                                    font-size: 17px; line-height: 30px ">
                            Điện thoại &nbsp;: <br/>
                            Fax &nbsp;:<br/>
                            Email &nbsp;:<br/>
                            Thời gian làm việc<br/>
                            8:00 - 17:00 các ngày trong tuần<br/>
                        </div>
                        <br/>
                        <br/>
                    </div>

                    <div class ="col-sx-12 col-sm-12 col-md-5 col-lg-5" 
                         style="margin-left: 20px; 
                                font-family: SourceSansPro-Regular">                            
                        <div style="margin-top:40px; 
                             margin-left: -10px; 
                             margin-bottom: 20px">
                            {success}
                        </div>                        
                        <div class ="form-horizontal">
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtHoten"
                                        name="txtHoten"                                                                        
                                        placeholder = "Họ và tên"
                                        onkeydown="myKeyDownName();"
                                        style ="-webkit-border-radius: 15px;
                                                -moz-border-radius: 15px;
                                                border-radius: 15px;
                                                height: 40px;
                                                outline:none;
                                                padding: 5px;
                                                font-family: SourceSansPro-Regular;
                                                font-size: 17px;
                                                border: 1px solid #ddd;
                                                font-weight: lighter;
                                                color: #adadad"
                                        maxlength="50"/>

                            </div>                            
                        </div>  
                        <div class ="form-horizontal">
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtEmail"
                                        name="txtEmail"                                                                        
                                        placeholder = "Email"
                                        onkeydown="myKeyDownEmail();"
                                        style = "-webkit-border-radius: 15px;
                                                 -moz-border-radius: 15px;
                                                 border-radius: 15px;
                                                 height: 40px;
                                                 outline:none;
                                                 padding: 5px;
                                                 font-family: SourceSansPro-Regular;
                                                 font-size: 17px;                                            
                                                 border: 1px solid #ddd;
                                                 font-weight: lighter;
                                                 color: #adadad"
                                        maxlength="50"/>
                            </div>
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtDienthoai"
                                        name="txtDienthoai"                                                                        
                                        placeholder = "Điện thoại liên lạc"
                                        onkeydown="myKeyDownPhone();"
                                        style = "-webkit-border-radius: 15px;
                                                 -moz-border-radius: 15px;
                                                 border-radius: 15px;
                                                 height: 40px;
                                                 outline:none;
                                                 padding: 5px;
                                                 font-family: SourceSansPro-Regular;
                                                 font-size: 17px;                                            
                                                 border: 1px solid #ddd;
                                                 font-weight: lighter;
                                                 color: #adadad"
                                        maxlength="11"/>
                            </div>                            
                            <div class ="form-group">                        
                                <textarea rows="5"                                        
                                        class="form-control" 
                                        id="txtNoidung" 
                                        name ="txtNoidung"
                                        placeholder="Nội dung"
                                        onkeydown="myKeyDownContent();"
                                        maxlength="250"
                                        style = "-webkit-border-radius: 15px;
                                                 -moz-border-radius: 15px;
                                                 border-radius: 15px;
                                                 outline:none;
                                                 font-family: SourceSansPro-Regular;
                                                 font-size: 17px;
                                                 border: 1px solid #ddd;
                                                 font-weight: lighter;  
                                                 color: #adadad;
                                                 height: 160px">
                               </textarea>
                               <br/>
                               <input type="submit" 
                                    name="butSub"
                                    value="Gửi đến chúng tôi"
                                    onclick="checkform();"
                                    style="outline:none;
                                           float:right;
                                           background-color: #337ab7;
                                           border: none;
                                           color: #fff;
                                           font-family:SourceSansPro-Bold;
                                           -webkit-border-radius: 20px;
                                           -moz-border-radius: 20px;
                                           border-radius: 20px;
                                           padding: 10px;
                                           font-size: 17px;
                                           margin-bottom: 50px;
                                           margin-top: 20px">
                            </div>                                                
                        </div>                                                                                                                          
                    </div>
                </form>			
            </div>        
        </div><!-- end product_main -->                       
    </div>
</body>
<script language="Javascript">
    function checkform(){
        // Ho Ten
        document.getElementById("txtHoten").required = true;        
        if (document.getElementById('txtHoten').value === ""){            
            document.getElementById('txtHoten').setCustomValidity('Vui lòng nhập họ tên.');
        }
        else {
            document.getElementById('txtHoten').setCustomValidity('');
        }        
        //Email
        document.getElementById("txtEmail").required = true;        
        if ((document.getElementById('txtEmail').value === "")
            || (document.getElementById('txtEmail').value.indexOf('@') === -1) 
            || (document.getElementById('txtEmail').value.indexOf('.') === -1)){
            document.getElementById('txtEmail').setCustomValidity('Vui lòng nhập đúng địa chỉ email.');
        }
        else{
            document.getElementById('txtEmail').setCustomValidity('');
        }        
        // Dien Thoai
        document.getElementById("txtDienthoai").required = true;        
        if (document.getElementById('txtDienthoai').value < 10){            
            document.getElementById('txtDienthoai').setCustomValidity('Vui lòng nhập số điện thoại.');
        }
        else{
            document.getElementById('txtDienthoai').setCustomValidity('');
        }        
        // Noi Dung
        document.getElementById("txtNoidung").required = true;                               
        if (document.getElementById('txtNoidung').value === ""){
            document.getElementById('txtNoidung').setCustomValidity('Vui lòng nhập nội dung.');             
        }
        else{
            document.getElementById('txtNoidung').setCustomValidity('');
        }       
    }    
    function myKeyDownName(){
        document.getElementById('txtHoten').setCustomValidity('');
    }    
    function myKeyDownEmail(){
        document.getElementById('txtEmail').setCustomValidity('');
    }    
    function myKeyDownPhone(){
        document.getElementById('txtDienthoai').setCustomValidity('');
    }    
    function myKeyDownContent(){
        document.getElementById('txtNoidung').setCustomValidity('');
    }    
    function setTextArea(){
        document.getElementById('txtNoidung').value = "";
    }
</script>
                    