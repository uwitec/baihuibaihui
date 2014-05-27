<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_Business_check.aspx.cs"
    Inherits="SGManager_Page_Business_check" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        商户账户：<asp:TextBox ID="TextBox1" runat="server" Width="292px"></asp:TextBox>
        <asp:Button ID="Button1"
            runat="server" Text="添加审核" onclick="Button1_Click" /> 
        <asp:Button ID="Button2"
            runat="server" Text="删除审核" onclick="Button2_Click"   />
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
            DataSourceID="AccessDataSource1" EnableModelValidation="True" 
            AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                    SortExpression="ID" />
                <asp:BoundField DataField="Businessid" HeaderText="Businessid" SortExpression="Businessid"
                    Visible="False" />
                <asp:BoundField DataField="Businessuid" HeaderText="商户账户" SortExpression="Businessuid" />
                <asp:BoundField DataField="Businesspwd" HeaderText="商户密码" SortExpression="Businesspwd" />
                <asp:BoundField DataField="BusinessName" HeaderText="商户名称" SortExpression="BusinessName" />
                <asp:BoundField DataField="BusinessTel" HeaderText="商户电话" SortExpression="BusinessTel" />
                <asp:BoundField DataField="Businessphone" HeaderText="商户手机" SortExpression="Businessphone" />
                <asp:BoundField DataField="BusinessGroup" HeaderText="商户类型" SortExpression="BusinessGroup" />
                <asp:BoundField DataField="BusinessAddress1" HeaderText="商户县市" SortExpression="BusinessAddress1" />
                <asp:BoundField DataField="BusinessAddress2" HeaderText="商户街道" SortExpression="BusinessAddress2" />
                <asp:BoundField DataField="BusinessYH" HeaderText="是否优惠" SortExpression="BusinessYH" />
                <asp:BoundField DataField="ip" HeaderText="注册IP地址" SortExpression="ip" />
                <asp:BoundField DataField="shenhe" HeaderText="审核" SortExpression="shenhe" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
            DeleteCommand="DELETE FROM [Business_Info] WHERE [ID] = ?" InsertCommand="INSERT INTO [Business_Info] ([ID], [Businessid], [Businessuid], [Businesspwd], [BusinessName], [BusinessTel], [Businessphone], [BusinessGroup], [BusinessAddress1], [BusinessYH], [ip], [shenhe], [BusinessAddress2]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            SelectCommand="SELECT * FROM [Business_Info]" UpdateCommand="UPDATE [Business_Info] SET [Businessid] = ?, [Businessuid] = ?, [Businesspwd] = ?, [BusinessName] = ?, [BusinessTel] = ?, [Businessphone] = ?, [BusinessGroup] = ?, [BusinessAddress1] = ?, [BusinessYH] = ?, [ip] = ?, [shenhe] = ?, [BusinessAddress2] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Businessid" Type="String" />
                <asp:Parameter Name="Businessuid" Type="String" />
                <asp:Parameter Name="Businesspwd" Type="String" />
                <asp:Parameter Name="BusinessName" Type="String" />
                <asp:Parameter Name="BusinessTel" Type="String" />
                <asp:Parameter Name="Businessphone" Type="String" />
                <asp:Parameter Name="BusinessGroup" Type="String" />
                <asp:Parameter Name="BusinessAddress1" Type="String" />
                <asp:Parameter Name="BusinessYH" Type="String" />
                <asp:Parameter Name="ip" Type="String" />
                <asp:Parameter Name="shenhe" Type="String" />
                <asp:Parameter Name="BusinessAddress2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Businessid" Type="String" />
                <asp:Parameter Name="Businessuid" Type="String" />
                <asp:Parameter Name="Businesspwd" Type="String" />
                <asp:Parameter Name="BusinessName" Type="String" />
                <asp:Parameter Name="BusinessTel" Type="String" />
                <asp:Parameter Name="Businessphone" Type="String" />
                <asp:Parameter Name="BusinessGroup" Type="String" />
                <asp:Parameter Name="BusinessAddress1" Type="String" />
                <asp:Parameter Name="BusinessYH" Type="String" />
                <asp:Parameter Name="ip" Type="String" />
                <asp:Parameter Name="shenhe" Type="String" />
                <asp:Parameter Name="BusinessAddress2" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
