<script type="text/javascript" src="../jscript/jQuery-1.4.2.js"></script>
<script language="JavaScript" src='../jscript/jquery.form.js'></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!--BEGINLIST_SCRIPT-->
<!--BEGIN_SCRIPT-->
<script language=Javascript src="../jscript/overlib_mini.js"></script>
<script type="text/javascript" src="../jscript/searchfield/jquery-1.2.1.pack.js"></script>
<script type="text/javascript">
    function lookup(inputString) {
        if (inputString.length === 0) {
            // Hide the suggestion box.
            $('#suggestions').hide();
        } else {
            $.post("../include/autoSugAjaxQuestionImage.php", {queryString: ""+inputString+""}, function (data) {
                if (data.length > 0) {
                    $('#suggestions').show();
                    $('#autoSuggestionsList').html(data);
                }
            });
        }
    } // lookup

    function fill(thisValue)
    {
        $('#inputString').val(thisValue);
        setTimeout("$('#suggestions').hide();", 200);
    }
</script>

<style>
    .multiselect {
        width:160px;
        height:45px;
        border:solid 1px #c0c0c0;
        overflow-y:scroll;
        overflow-x:hidden;
    }

    .multiselect label {
        display:block;
    }

    .multiselect-on {
        color:#ffffff;
        background-color:#000099;
    }
</style>

<script language="JavaScript" type="text/javascript">
    jQuery.fn.multiselect = function () {
        $(this).each(function () {
            var checkboxes = $(this).find("input:checkbox");
            checkboxes.each(function () {
                var checkbox = $(this);
                // Highlight pre-selected checkboxes
                if (checkbox.prop("checked"))
                    checkbox.parent().addClass("multiselect-on");

                // Highlight checkboxes that the user selects
                checkbox.click(function ()
                {
                    if (checkbox.prop("checked"))
                        checkbox.parent().addClass("multiselect-on");
                    else
                        checkbox.parent().removeClass("multiselect-on");
                });
            });
        });
    };

    $(function () {
        $(".multiselect").multiselect();
    });
</script>


<style type="text/css">

    h3 {
        margin: 0px;
        padding: 0px;	
    }

    .suggestionsBox {
        position: relative;
        left: 0px;
        margin: 50px 0px 0px 0px;
        width: 150px;
        background-color: #212427;
        -moz-border-radius: 7px;
        -webkit-border-radius: 7px;
        border: 2px solid #000;	
        color: #fff;
        z-index: 100;
    }

    .suggestionList {
        margin: 0px;
        padding: 0px;
    }

    .suggestionList li {

        margin: 0px 0px 3px 0px;
        padding: 3px;
        cursor: pointer;
    }

    .suggestionList li:hover {
        background-color: #659CD8;
    }
</style>
<!--END_SCRIPT-->
<!--ENDLIST_SCRIPT-->
<form method='POST' enctype='multipart/form-data' id = "frm" name = "frm">
    <div class = "title" style ="text-indent:10px">{lag_question_manager}</div>
    <div>{lag_page} : {page}</div>
    <div style="float:left;width:450px;margin:5px;padding-top:20px">
        <b style="margin-right: 10px">{defaultText}</b>
        <input value = "{questionKey}" 
               type="text"
               size="20" 
               name = "searchfield" 
               id="inputString"
               onkeyup="lookup(this.value);"
               onblur="fill();"/>

        <input type ='submit' 
               name ='btnfindQuestion' 
               value ='Tìm kiếm' 
               class ='button'/>
    </div>
    <div class="suggestionsBox" id="suggestions" style="display: none;">
        <img src="../style/images/upArrow.png" style="position: relative; top: -12px; left: 30px;" alt="upArrow" />
        <div class="suggestionList" id="autoSuggestionsList">
            &nbsp;
        </div>
    </div>
    <div style="clear:both"></div>    
    <div style = "float:left">			                                    
        <input class = "button" type = "submit" name = "btndel" value = "{delete_check}" onclick="return chkdelete('{del_confirm}');"/>
        <input class = "button" type = "submit" name = "btnstatus" value = "{shi}" onclick = "return chkselected();"/>
        <input class = "button" style="display: none;" type = "submit" name = "btnnew" value = "Sản phẩm mới" onclick = "return chkselected();"/>
        <input class = "button" type = "button" value = "Thêm mới" onclick="window.location = './?show=OptQuestionImage&order={oderby}'"/>        
        <div class = "title" style = 'width:851px; margin-top: 5px; margin-bottom: 0px'>				
            <div class = "con_title" style = "width:50px;text-align:center">
                <input style ='margin-left:3px' type="checkbox" name="chkall" onclick="chkallClick(this);">
            </div>
            <div class = "con_title" style = "width:50px">Xoá</div>
            <div class = "con_title" style = "width:50px">{lag_edit}</div>
            <div class = "con_title" style = "width:150px">
                <a href = './?show=questionimage&order=ordernumber&p={p}' style="text-decoration:underline">Thứ tự (tăng)</a>
                <span>&nbsp&nbsp-&nbsp </span>
                <span>
                    <a href = './?show=questionimage&order=ordernumber_desc&p={p}'style = "text-decoration:underline">(giảm)</a>
                </span>
            </div>
            <div class = "con_title" style = "width:350px;">
                <a href = './?show=questionimage&order=name&p={p}' style="text-decoration:underline">{questionname} (a->z)</a>
                <span>&nbsp&nbsp-&nbsp </span>
                <span>
                    <a href = './?show=questionimage&order=name_desc&p={p}'style = "text-decoration:underline">(z->a)</a>
                </span>
            </div>
            <div class = "con_title" style = "width:90px;">
                <a href = './?show=questionimage&order=status&p={p}'style='text-decoration:underline'>{lag_status}</a>
            </div>

            <div class = "con_title" style = "width:110px;border:0px;">
                <a href = './?show=questionimage&order=dateadd&p={p}' style="text-decoration:underline">Ngày (cũ)</a>
                <span>&nbsp&nbsp-&nbsp </span>
                <span>
                    <a href = './?show=questionimage&order=dateadd_desc&p={p}'style = "text-decoration:underline">(mới)</a>
                </span>
            </div>
        </div>                                                            
        
        <div>
            <!--BEGINLIST_QUESTION-->
            <!--BEGIN_QUESTION-->
            <div class = "con_list_con" style = "width:50px;background-color:{color};height:50px;text-align:center">
                <input style ='margin-top:8px' type="checkbox" name="chk[]" value="{id}">
            </div>
            <div class = "con_list_con" style = "width:50px;background-color:{color};height:50px;">
                <a href="?show=questionimage&action=del&id={id}&p={p}&order={oderby}" 
                   onclick="return confirm('{del_confirm} ?');"
                   style="color: red">
                    {lag_delete}
                </a>
            </div>
            <div class = "con_list_con" style = "width:50px;background-color:{color};height:50px;">
                <a href="?show=OptQuestionImage&id={id}&p={p}&order={oderby}">{lag_edit}</a>
            </div>
            <div class = "con_list_con" style = "width:150px;background-color:{color};height:50px;">{ordernumber}</div>
            <div class = "con_list_con" style = "width:350px;background-color:{color};height:50px;">{question_detail}</div>
            <div class = "con_list_con" style = "width:90px;background-color:{color};height:50px">{question_status}</div>
            <div class = "con_list_con" style = "width:110px;border:0px;background-color:{color};height:50px">{date_added}</div>
            <div class ='clear'></div>
            <!--END_QUESTION-->
            <!--ENDLIST_QUESTION-->
        </div>
    </div>
    <div style="clear:both"></div>
    <input class = "button" type = "submit" name = "btndel" value = "{delete_check}" onclick="return chkdelete('{del_confirm}');"/>
    <input class = "button" type = "submit" name = "btnstatus" value = "{shi}" onclick = "return chkselected();"/>
    <input class = "button" type = "button" value = "Thêm mới" onclick="window.location = './?show=OptQuestionImage&order={oderby}'"/>
</form>
<div id=overDiv style="z-index: 1000; visibility: hidden; position: absolute; top: 586px" align=center></div>