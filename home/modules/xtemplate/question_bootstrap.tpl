<script type="text/javascript">
    var clock;
    $(document).ready(function () {
        var clock;
        clock = $('.clock').FlipClock({
            clockFace: 'DailyCounter',
            autoStart: false,
            callbacks: {
                stop: function () {
                    $('.message').html('Hết thời gian làm bài! Hệ thống sẽ tạm thời không nhận bài thi của bạn!')
                }
            }
        });
        clock.setTime({timedown});
        clock.setCountdown(true);
        clock.start();
    });
</script>
<form method='POST' enctype='multipart/form-data' id = "frm" name = "frm">
    <div class="container hidden-xs hidden-sm">
        <div class = "row col-md-offset-2 col-lg-offset-2 col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-2 navbar-fixed-top"
             style="background: white; padding-bottom: 40px">
            <div class="infoexam" 
                 style="font-family: SourceSansPro-Regular; 
                        line-height: 25px;
                        font-size: 17px;
                        margin-top: 10px">
                <div style="text-align: center;">
                    Thí sinh: <b>{username}</b>
                </div>
                <div style="text-align: center">
                    Ngày sinh: <b>{birthday}</b>
                </div>
                <div style="text-align: center">
                    Thời gian dự thi: <b style="color: blue">{start_date}</b>
                </div>
            </div>
            
            <div class="clock" 
                 style="width: 620px; 
                        margin-top: 50px;
                        margin-left: auto; 
                        margin-right: auto; 
                        display: block; 
                        margin-top: 50px;"></div>
            <div class="message" 
                 style="color: red; 
                        font-size: 15px; 
                        text-align: center;"></div>
        </div>
        <div class = "row" style="margin-top: 300px; ">
            <div class="col-md-offset-2 col-lg-offset-2 col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-2">
                <div class="news_main" style="font-family: SourceSansPro-Regular;">
                    <div style="text-align: center; 
                                font-size: 17px;
                                margin-bottom: 20px">
                        <b>Câu hỏi tự luận</b>
                    </div>
                    <div style="font-size: 17px; 
                                margin-left: 15px;
                                text-align: justify;
                                line-height: 25px;
                                margin-bottom: 50px;
                                margin-right: 15px">
                        {question_content}
                    </div>
                    <div class ="form-group">
                        <span for="firstname" 
                               class="col-md-4 col-lg-4 control-label"
                               style="text-align: left; 
                                      font-size: 17px;
                                      margin-top: 5px">
                            Bài thi tự luận: <span style="color:red"> *</span> 
                            <br/>(.docx, .doc, .pdf và <= 5MB)
                        </span>
                        <div class="col-md-8 col-lg-8" 
                             style="padding-right: 30px; margin-top: 5px">
                            <input type="file"
                                   name="question"
                                   value="{question}"
                                   class="form-control"
                                   style = "-webkit-border-radius: 10px;
                                            -moz-border-radius: 10px;
                                            border-radius: 10px;
                                            height: 40px;
                                            outline: none;
                                            padding: 5px;
                                            font-family: SourceSansPro-Regular;
                                            font-size: 17px;                                            
                                            border: 1px solid #ddd;
                                            font-weight: lighter;
                                            color: #adadad;
                                            width: 103%">
                        </div>
                    </div>
                    
                </div><!-- end product_main -->
            </div>
        </div>
        <div class="row">
            
                <input type="submit" 
                       name="btnSumbit"
                       value="Gửi bài thi"
                       onclick="return confirm('Gửi bài thi tự luận?')" 
                       style="outline:none;
                            margin-left: auto;
                            margin-right: auto;
                            display: block;
                            background-color: #337ab7;
                            border: none;
                            color: #fff;
                            font-family:SourceSansPro-Bold;
                            -webkit-border-radius: 20px;
                            -moz-border-radius: 20px;
                            border-radius: 20px;
                            padding: 10px;
                            font-size: 17px;
                            margin-top: 50px;
                            width:130px;
                            margin-bottom: 50px">
            
        </div>
    </div><!-- end product -->
</form>