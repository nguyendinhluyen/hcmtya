<!--BEGINLIST_SCRIPT-->
<!--BEGIN_SCRIPT-->

<!--END_SCRIPT-->
<!--ENDLIST_SCRIPT-->

<script>
    function submitForm1()
    {
        document.getElementById("txtdetail").value = oEdit1.getHTML();
    }
</script>

<pre id="invdetail" name="invdetail" style="display:none">
    {txtdetail}
</pre>
<div class = "title">{panel_add_update_product}</div>
<div class = "content_con">
    <form method='POST' enctype='multipart/form-data' id = "frm" name = "frm" onsubmit="submitForm1()">
        <input type="hidden" name="txtdetail" id="txtdetail"/>      	    	
        <div style="float:left;padding-left:25px">
            <div style ="margin-left:103px;">{error}</div>
            <p>
                <label>
                    <b>{news_title}</b>
                </label>
                <input  size ='50' 
                        maxlength = '50' 
                        type = 'text' 
                        name = 'txtname' 
                        value ='{txtname}'/>
            </p>                        	  	
            <p>
                <label><b>Danh mục: </b></label> {help_list}
            </p>
            <p>
                <label>{news_detail}</label>
                </br>
                </br>
                <script>
                    var oEdit1 = new InnovaEditor("oEdit1");
                    oEdit1.arrStyle = [["BODY", false, "", "font:12px arial;"]];
                    oEdit1.width = "660";
                    oEdit1.height = "600";
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
                    oEdit1.cmdAssetManager = "modalDialogShow('../assetmanager/assetmanager.php',640,465)";
                    oEdit1.RENDER(document.getElementById("invdetail").innerHTML);
                </script>
            </p>        
            </br>       	                                                                     
            <p>
                <input class = "button" 
                       type = "submit" 
                       name = "btnadd" 
                       value = "{btn}"/>
            </p>
            <br/>
        </div>
    </form>
</div>