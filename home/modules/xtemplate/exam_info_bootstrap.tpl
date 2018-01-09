<body>
    <div class="container-fluid full-banner hidden-xs hidden-sm"
        style="background-image: url({linkS}layout/bootstrap/images/banner_introduce.png);">
        THAM GIA DỰ THI
    </div>
    <div class="container">
        <div class="row">
            <div class="hidden-xs hidden-sm col-md-12 col-lg-12" 
                 style="padding-left: 50px; padding-bottom: 150px">
                <div class="news_main">                                        
                    <div style=" font-family:SourceSansPro-Bold;
                                 font-size: 22px;
                                 clear:both;
                                 margin-bottom: 30px"> 
                        <span style="color: #989898">Xin chào, </span>
                        <span style="color: #019cfd">{name_hello}</span>
                    </div>
                    <!--Left Col-->
                    <div class="col-md-4 col-lg-4" 
                         style ="padding-left: 0px; margin-bottom: 150px">                        
                        <table style="text-align: left;
                                      background-color: #f2fbff;
                                      -webkit-border-radius:25px;
                                      -moz-border-radius:25px;
                                      border-radius:25px;
                                      -webkit-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
                                      -moz-box-shadow: 0px 10px 10px -5px rgba(146,159,165,1);
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
                    
                    <!--Right Col-->
                    <div class="col-md-8 col-lg-8" 
                         style="font-family: SourceSansPro-Regular; 
                                font-size: 17px; line-height: 35px">
                        <div style="font-family: SourceSansPro-Bold; 
                                    line-height: 40px; 
                                    text-align: center;
                                    font-size: 30px;
                                    padding-bottom: 20px;
                                    padding-right: 100px">
                            Chào mừng bạn tham gia cuộc thi <br/>Tìm kiếm gương mặt đại sứ du lịch trẻ
                            thành phố Hồ Chí Minh năm 2016
                        </div>
                        <div>
                            <a href="{linkS}trac-nghiem" target="_blank">1. Thi trắc nghiệm</a>               
                        </div>
                        <div>
                            <a href="{linkS}thi-tu-luan" target="_blank">2. Thi tự luận</a>
                        </div>
                        <div>
                            <a href="{linkS}thi-anh-luan" target="_blank">3. Thi ảnh luận</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>			
<script>
    $(function() {
        $("#birthday" ).datepicker({dateFormat: 'dd-mm-yy',
                                    changeMonth:true,
                                    changeYear: true});
    });
</script>