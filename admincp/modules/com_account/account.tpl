<!--BEGINLIST_SCRIPT-->
<!--BEGIN_SCRIPT-->
<script language=javascript>
    var pass_strength_phrases = {
        0: '0 điểm',
        10: '1 điểm',
        20: '2 điểm',
        30: '3 điểm',
        40: '4 điểm',
        50: '5 điểm',
        60: '6 điểm',
        70: '7 điểm',
        80: '8 điểm',
        90: '9 điểm',
        100: '10 điểm'
    };
</script>
<script language=javascript src="../jscript/password_strength_optimized.js"></script>
<!--END_SCRIPT-->
<!--ENDLIST_SCRIPT-->

<div class = "title">{title}</div>
<div class = "content_con">
    <form method='POST' enctype='multipart/form-data' id = "frm" name = "frm">
        <div style="float:left;padding-left:20px">
            <br/>
            {note_change_admin}.<br/><br/>
            <div class ='err' style = 'margin-left:120px'>{error}</div>
            <p style="display:none">
                <label style="width: 120px">Tên đăng nhập </label>{username}</b> 
            </p>
            <p>
                <label style="width: 120px">Mật khẩu cũ</label>
                <input type = 'password' 
                       name = 'txtpassword' 
                       class ='fieldinput'> 
                <font color ='red'>*</font>
            </p>
            <p>
                <label style="width: 120px">Tên đăng nhập mới</label>
                <input type = 'text' 
                       name = 'usernameNew' 
                       class ='fieldinput' 
                       value ='{usernameNew}'> 
                <font color ='red'>*</font> ({5char}) </p>
            <p>
                <label style="width: 120px">Mật khẩu mới</label>
                <input type = 'password' 
                       name = 'passwordNew' 
                       class ='fieldinput' 
                       onkeyup="updatePasswordStrength_new(this, 'passwdRating', {'text': 2});"> 
                <font color ='red'>*</font> ({5char}) </p>
            <p>
            <div id='passwdRating' style ='margin-left:120px'>
                <span id='ps-title'>{psecurity} </span>
                <div class='pass_bar' id='pass_bar'>
                    <div class='progress_bar_base'></div>
                </div>
                <div id='ps-rating' style="display: inline">0 {point}</div>
            </div>
            </p>
            <p>
                <label style="width: 120px">Nhập lại mật khẩu mới</label>
                <input type = 'password' name = 'passwordNew2' class ='fieldinput'> 
                <font color ='red'>*</font> </p>
            <p>
                <input class = "button" type = "submit" name = "btnSub" value = "Lưu"/>
                <input class = "button" type = "reset" value = "Làm lại"/>
            </p>
            <br/>
        </div>
    </form>
</div>