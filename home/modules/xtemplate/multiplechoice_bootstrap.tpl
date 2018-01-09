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
        <div class = "row" style="margin-top: 280px; ">
            <div class="col-md-offset-2 col-lg-offset-2 col-md-8 col-lg-8 col-md-offset-2 col-lg-offset-2">
                <div class="news_main">
                    <!--BEGINLIST_MULTICHOICES-->
                    <!--BEGIN_MULTICHOICES-->
                    <div>
                        <div class="article-content">                         
                            <table>
                                <tr>
                                    <td style="width:100%;" 
                                        class="hidden-xs hidden-sm">
                                        <h3 style="text-align:justify;
                                            font-family:SourceSansPro-Regular;
                                            font-size:17px;
                                            line-height: 35px;">
                                            <div>
                                                {stt}. {multichoice_question}
                                            </div>
                                            <div>
                                                <input type="radio" 
                                                       name="result{id}[]" 
                                                       id="result{id}[]_01"  
                                                       value="{id}_1" 
                                                       {selectedResultFirst}>
                                                <label for="result{id}[]_01" style="font-weight: normal">
                                                       {resultfirst} </label>
                                            </div>
                                            <div>
                                                <input type="radio" 
                                                       name="result{id}[]" 
                                                       id="result{id}[]_02"  
                                                       value="{id}_2" 
                                                       {selectedResultSecond}> 
                                                <label for="result{id}[]_02" style="font-weight: normal"> 
                                                    {resultsecond}</label>
                                            </div>
                                            <div>
                                                <input type="radio" 
                                                       name="result{id}[]" 
                                                       id="result{id}[]_03" 
                                                       value="{id}_3" 
                                                       {selectedResultThird}> 
                                                <label for="result{id}[]_03" style="font-weight: normal">
                                                    {resultthird}</label>
                                            </div>
                                        </h3>                                                      
                                    </td> 
                                </tr>                                            
                            </table>                   					
                        </div>
                    </div>
                    <!--END_MULTICHOICES-->
                    <!--ENDLIST_MULTICHOICES-->
                </div><!-- end product_main -->
                <!--<div class="pagination" 
                     align="center" 
                     style="margin-left: auto;
                            margin-right: auto;
                            font-size:14px;
                            font-family:SourceSansPro-Regular;
                            display:block;
                            clear:both">
                {page}  
            </div>-->
                <br/>
            </div>

        </div>
        <div class="row">
            <div style="float:left; padding-left: 15px" 
                 class="col-md-offset-2 col-lg-offset-2">
                <input type="submit" 
                       name="btnSumbit"
                       value="Gửi bài thi"
                       onclick="return confirm('Gửi bài thi trắc nghiệm?')" 
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
                       margin-top: 20px;
                       width:130px">
            </div>
        </div>
    </div><!-- end product -->
</form>