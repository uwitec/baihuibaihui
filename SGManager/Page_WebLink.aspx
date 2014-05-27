<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_WebLink.aspx.cs" Inherits="SGManager_Page_WebLink" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        链接名称：<asp:TextBox ID="TextBox_linkname" runat="server" Width="292px"></asp:TextBox>
        链接地址:<asp:TextBox ID="TextBox_link" runat="server" Width="292px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="·添加·" OnClick="Button1_Click" />
        <hr />
        &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
            DataSourceID="AccessDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                    SortExpression="id" />
                <asp:BoundField DataField="linkname" HeaderText="链接名称" SortExpression="linkname" />
                <asp:BoundField DataField="link" HeaderText="链接地址" SortExpression="link" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
            DeleteCommand="DELETE FROM [lianjie] WHERE [id] = ?" InsertCommand="INSERT INTO [lianjie] ([id], [linkname], [link]) VALUES (?, ?, ?)"
            SelectCommand="SELECT * FROM [lianjie]" UpdateCommand="UPDATE [lianjie] SET [linkname] = ?, [link] = ? WHERE [id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="linkname" Type="String" />
                <asp:Parameter Name="link" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="linkname" Type="String" />
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
