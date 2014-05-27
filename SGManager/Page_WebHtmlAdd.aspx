<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_WebHtmlAdd.aspx.cs"
    Inherits="SGManager_Page_WebHtmlAdd" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <%--  <h1 class="samples">&nbsp;标题
    </h1>--%>
    <br />
    &nbsp;&nbsp;新增页面
    <hr />
    <br />
    &nbsp;<font size="2"> 页面名称：</font><asp:TextBox ID="TextBox1" runat="server" Width="707px"></asp:TextBox>
    <br />
    <br />
    <CKEditor:CKEditorControl ID="CKEditor1" runat="server" UIColor="#FCFBFB" Height="500px"
        EnterMode="BR"></CKEditor:CKEditorControl>
    <br />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="·保 存·" Height="33px" Width="126px"
        OnClick="Button1_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="·清 空·" Height="33px" Width="126px"
        OnClick="Button2_Click1" />
    <br />
    </form>
</body>
</html>
