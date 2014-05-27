<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JS/jquery.js" type="text/javascript"></script>
    <script src="JS/jquery.cookie.js" type="text/javascript"></script>
    <script type="text/javascript">
        function test() {

            location.href = "test.aspx?page=" + save;
            
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="save" name="save" type="hidden" />
        <button id="btn" onclick="test();return false;">
            点击</button>
    </div>
    </form>
</body>
</html>
