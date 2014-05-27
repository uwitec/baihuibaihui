<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_Business_Preferential_Check.aspx.cs"
    Inherits="SGManager_Page_Business_Preferential_Check" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        优惠编号：<asp:TextBox ID="TextBox1" runat="server" Width="292px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="添加审核" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="删除审核" OnClick="Button2_Click" />
        <hr />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
        DataSourceID="AccessDataSource1" EnableModelValidation="True" 
        AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="序号" InsertVisible="False" ReadOnly="True"
                SortExpression="ID" />
            <asp:BoundField DataField="starttime" HeaderText="优惠开始时间" SortExpression="starttime" />
            <asp:BoundField DataField="endtime" HeaderText="优惠结束时间" SortExpression="endtime" />
            <asp:BoundField DataField="ptitle" HeaderText="优惠标题" SortExpression="ptitle" />
            <asp:BoundField DataField="pcontent" HeaderText="优惠内容" SortExpression="pcontent" />
            <asp:BoundField DataField="Businessuid" HeaderText="商户账户" SortExpression="Businessuid" />
            <asp:BoundField DataField="creatime" HeaderText="申请时间" SortExpression="creatime" />
            <asp:BoundField DataField="shenhe" HeaderText="状态" SortExpression="shenhe" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
        SelectCommand="SELECT * FROM [T_Preferential]" 
        DeleteCommand="DELETE FROM [T_Preferential] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [T_Preferential] ([ID], [starttime], [endtime], [ptitle], [pcontent], [Businessuid], [creatime], [shenhe]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" 
        UpdateCommand="UPDATE [T_Preferential] SET [starttime] = ?, [endtime] = ?, [ptitle] = ?, [pcontent] = ?, [Businessuid] = ?, [creatime] = ?, [shenhe] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="starttime" Type="String" />
            <asp:Parameter Name="endtime" Type="String" />
            <asp:Parameter Name="ptitle" Type="String" />
            <asp:Parameter Name="pcontent" Type="String" />
            <asp:Parameter Name="Businessuid" Type="String" />
            <asp:Parameter Name="creatime" Type="String" />
            <asp:Parameter Name="shenhe" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="starttime" Type="String" />
            <asp:Parameter Name="endtime" Type="String" />
            <asp:Parameter Name="ptitle" Type="String" />
            <asp:Parameter Name="pcontent" Type="String" />
            <asp:Parameter Name="Businessuid" Type="String" />
            <asp:Parameter Name="creatime" Type="String" />
            <asp:Parameter Name="shenhe" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    </form>
</body>
</html>
