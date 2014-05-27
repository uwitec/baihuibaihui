<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_WebHtmlList.aspx.cs" Inherits="SGManager_Page_WebHtmlList" validateRequest="false"   %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="AccessDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ID" HeaderText="序号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="createtime" HeaderText="创建时间" 
                    SortExpression="createtime" />
                <asp:BoundField DataField="pageid" HeaderText="页面编号" SortExpression="pageid" />
                <asp:BoundField DataField="pagetitle" HeaderText="文章标题" 
                    SortExpression="pagetitle" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/TMDataBase.mdb" 
            DeleteCommand="DELETE FROM [Web_Pages] WHERE [ID] = ?" 
            InsertCommand="INSERT INTO [Web_Pages] ([ID], [createtime], [pageid], [pagetitle], [pagecontent]) VALUES (?, ?, ?, ?, ?)" 
            SelectCommand="SELECT [ID], [createtime], [pageid], [pagetitle], [pagecontent] FROM [Web_Pages]" 
            UpdateCommand="UPDATE [Web_Pages] SET [createtime] = ?, [pageid] = ?, [pagetitle] = ?, [pagecontent] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="createtime" Type="String" />
                <asp:Parameter Name="pageid" Type="String" />
                <asp:Parameter Name="pagetitle" Type="String" />
                <asp:Parameter Name="pagecontent" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="createtime" Type="String" />
                <asp:Parameter Name="pageid" Type="String" />
                <asp:Parameter Name="pagetitle" Type="String" />
                <asp:Parameter Name="pagecontent" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
