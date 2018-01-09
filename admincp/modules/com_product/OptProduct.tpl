<script type="text/javascript" src="../jscript/jQuery-1.4.2.js"></script>
<script language="JavaScript" src='../jscript/jquery.form.js'></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style>
    .multiselect {
        width:350px;
        height:200px;
        border:solid 1px #c0c0c0;
        overflow-y:scroll;
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
                checkbox.click(function () {
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

    function submitForm2() {
        document.getElementById("txtdetail").value = oEdit1.getXHTMLBody();
    }

</script>

<!--BEGINLIST_SCRIPT-->
<!--BEGIN_SCRIPT-->
<script language=JavaScript src='../jscript/common.js'></script>
<!--END_SCRIPT-->
<!--ENDLIST_SCRIPT-->
<pre id="invdetail" name="invdetail" style="display:none">
    {txtdetail}
</pre>    
<div class = "title" style="font-family:Arial, Helvetica, sans-serif; 
     font-size:12px;">{panel_add_update_product} </div>
<div class = "content_con">        
    <form method='POST' enctype='multipart/form-data' 
          id = "frm" 
          name = "frm" 
          onsubmit="submitForm2()" 
          style="float:left; width:80%">
        <input type="hidden" name="txtdetail" id="txtdetail"> </input>
        <div style="float:left;padding-left:25px; font-family:Arial, Helvetica, sans-serif; font-size:12px;">			
            <div>
                {error}
            </div>
            <div style="margin-top: 10px">
                <div style="margin-bottom: 5px;">
                    <b>Thứ tự câu hỏi</b>
                </div>
                <input type="number" value="{ordernumber}" name="ordernumber" min="1" max="10000" {ordernumberdisabled}>
            </div>
            <div style="margin-top: 10px">
                <div style="margin-bottom: 5px;">
                    <b>Câu hỏi</b>
                </div>
                <input size ='100'
                       maxlength = '255'
                       type = 'text'
                       name = 'txtname'
                       value ="{txtname}"/>
            </div>
            <div style="margin-top: 10px">
                <div style="margin-bottom: 5px;">
                    <b>Đáp án 1</b>
                </div>
                <input size ='100'
                       maxlength = '255'
                       type = 'text'
                       name = 'resultfirst'
                       value ="{resultfirst}"/>
            </div>
            <div style="margin-top: 10px">
                <div style="margin-bottom: 5px;">
                    <b>Đáp án 2</b>
                </div>
                <input size ='100'
                       maxlength = '255'
                       type = 'text'
                       name = 'resultsecond'
                       value ="{resultsecond}"/>
            </div>
            <div style="margin-top: 10px">
                <div style="margin-bottom: 5px;">
                    <b>Đáp án 3</b>
                </div>
                <input size ='100'
                       maxlength = '255'
                       type = 'text'
                       name = 'resultthird'
                       value ="{resultthird}"/>
            </div>

            <div style="margin-top: 10px">
                <div style="margin-bottom: 5px;">
                    <b>Kết quả đúng</b>
                </div>
                <input type="radio" name="result" value="1" {selectedResultFirst}> Đáp án 1
                <input type="radio" name="result" value="2" {selectedResultSecond}> Đáp án 2
                <input type="radio" name="result" value="3" {selectedResultThird}> Đáp án 3
            </div>
            <div style="margin-top: 20px">
                <label><b>{product_of_catalogue}</b></label>
                {cat_list}
            </div>
            <!--<p>            
                <label>Ghi chú </br>
                <script>
                    var oEdit1 = new InnovaEditor("oEdit1");
                    oEdit1.arrStyle = [["BODY", false, "", "font:12px arial;"]];
                    oEdit1.width = "550";
                    oEdit1.height = 500;
                    oEdit1.features = ["FullScreen", "Search",
                        "Cut", "Copy", "Paste", "PasteWord", "PasteText", "|", "Undo", "Redo", "|",
                        "ForeColor", "BackColor", "|", "Bookmark", "Hyperlink",
                        "CustomTag", "HTMLSource", "BRK", "Numbering", "Bullets", "|", "Indent", "Outdent", "LTR", "RTL", "|", "Image", "Flash", "Media", "|", "InternalLink", "CustomObject", "|",
                        "Table", "Guidelines", "Absolute", "|", "Characters", "Line",
                        "Form", "Clean", "ClearAll", "BRK",
                        "StyleAndFormatting", "TextFormatting", "ListFormatting", "BoxFormatting",
                        "ParagraphFormatting", "CssText", "Styles", "|",
                        "Paragraph", "FontName", "FontSize", "|",
                        "Bold", "Italic",
                        "Underline", "Strikethrough", "|", "Superscript", "Subscript", "|",
                        "JustifyLeft", "JustifyCenter", "JustifyRight", "JustifyFull"];
                    oEdit1.cmdAssetManager = "modalDialogShow('../assetmanager/assetmanager.php',640,200)";
                    oEdit1.RENDER(document.getElementById("invdetail").innerHTML);
                </script>
            </p>-->

            <div class="clear"></div>

            <p style="float:left; margin-bottom: 20px">
                <input class = "button" 
                       type = "submit" 
                       name = "btnadd" 
                       value = "{btn}"
                       onclick="selectAll();"/>
            </p>
        </div>

        <input type="hidden" name="submit_form" value="1">
    </form>
</div>

<script language="JavaScript" type="text/javascript">
    function selectAll() {
        var elSel = document.getElementById('color');
        var i;
        for (i = elSel.length - 1; i >= 0; i--) {
            elSel.options[i].selected = true;
        }
        var elSel1 = document.getElementById('type');
        var i;
        for (i = elSel1.length - 1; i >= 0; i--) {
            elSel1.options[i].selected = true;
        }
    }
</script>