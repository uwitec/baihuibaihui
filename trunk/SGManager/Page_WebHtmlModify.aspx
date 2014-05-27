<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_WebHtmlModify.aspx.cs" Inherits="SGManager_Page_WebHtmlModify" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <%--  <h1 class="samples">&nbsp;标题
    </h1>--%>
    <br />
     &nbsp;&nbsp;修改页面
    <hr />
    <br />
    &nbsp;
    页面：<asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
        Width="150px" DataSourceID="AccessDataSource1"
        DataTextField="pagetitle" DataValueField="pagetitle">
    </asp:DropDownList>
    
    <asp:Button ID="Button3" runat="server" Text="·获取页面·" OnClick="Button3_Click" />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
        SelectCommand="SELECT [pagetitle], [pagecontent] FROM [Web_Pages]"></asp:AccessDataSource>
    <br />
    <br />
    <CKEditor:CKEditorControl ID="CKEditor1" runat="server" UIColor="#FCFBFB"  Height="500px" EnterMode="BR"></CKEditor:CKEditorControl>
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
