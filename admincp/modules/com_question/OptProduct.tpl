<script type="text/javascript" src="../jscript/jQuery-1.4.2.js"></script>
<script language="JavaScript" src='../jscript/jquery.form.js'></script>
<script language="JavaScript" type="text/javascript">
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
     font-size:12px;">{panel_add_update_question} </div>
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
                <input type="number" value="{ordernumber}" 
                       name="ordernumber" min="1" 
                       max="10000" {ordernumberdisabled}>
            </div>
            <p style="margin-top: 15px">            
                <label style="margin-bottom: 5px">
                    <b>Nội dung câu hỏi</b>
                </label>
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
            </p>

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