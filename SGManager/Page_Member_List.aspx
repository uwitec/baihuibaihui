<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_Member_List.aspx.cs" Inherits="SGManager_Page_Member_List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="AccessDataSource1" 
            EnableModelValidation="True" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Memberuid" HeaderText="会员账户" 
                    SortExpression="Memberuid" />
                <asp:BoundField DataField="Memberpwd" HeaderText="会员密码" 
                    SortExpression="Memberpwd" />
                <asp:BoundField DataField="Email" HeaderText="会员邮箱" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="会员手机" 
                    SortExpression="Mobile" />
                <asp:BoundField DataField="IP" HeaderText="IP地址" SortExpression="IP" />
                <asp:BoundField DataField="createtime" HeaderText="注册时间" 
                    SortExpression="createtime" />
                <asp:BoundField DataField="Memberid" HeaderText="Memberid" 
                    SortExpression="Memberid" Visible="False" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/TMDataBase.mdb" 
            SelectCommand="SELECT * FROM [Member_info] ORDER BY [createtime]" 
            DeleteCommand="DELETE FROM [Member_info] WHERE [ID] = ?" 
            InsertCommand="INSERT INTO [Member_info] ([ID], [Memberuid], [Memberpwd], [Email], [Mobile], [IP], [createtime], [Memberid]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
            UpdateCommand="UPDATE [Member_info] SET [Memberuid] = ?, [Memberpwd] = ?, [Email] = ?, [Mobile] = ?, [IP] = ?, [createtime] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Memberuid" Type="String" />
                <asp:Parameter Name="Memberpwd" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="IP" Type="String" />
                <asp:Parameter Name="createtime" Type="String" />
                <asp:Parameter Name="Memberid" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Memberuid" Type="String" />
                <asp:Parameter Name="Memberpwd" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="IP" Type="String" />
                <asp:Parameter Name="createtime" Type="String" />
                <asp:Parameter Name="Memberid" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
