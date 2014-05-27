<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_ImageListUpload.aspx.cs" Inherits="PiliangPic" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>批量图片上传</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link href="Css/fileup.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/kindeditor.js" type="text/javascript"></script>
    <script src="Scripts/zh_CN.js" type="text/javascript"></script>
    <script type="text/javascript">
        KindEditor.ready(function (K) {
            var editor = K.editor({
                allowFileManager: true
            });
            K('#J_selectImage').click(function () {
                editor.loadPlugin('multiimage', function () {
                    editor.plugin.multiImageDialog({
                        clickFn: function (urlList) {
                            var div = K('#J_imageView');
                            div.html('');
                            K.each(urlList, function (i, data) {
                                div.append('<img width="500px" height="500px" src="' + data.url + '">');
                            });
                            editor.hideDialog();
                        }
                    });
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="button" id="J_selectImage" value="批量上传" />
    <span>格式：gif,jpg,jpeg,png,bmp</span>
    <div id="J_imageView">
    </div>
    </form>
</body>
</html>
