<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_Domain_Address.aspx.cs" Inherits="WebBusiness_Domain_Page_Domain_Address" %>

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
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="序号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Addressid" HeaderText="地址编号" 
                    SortExpression="Addressid" />
                <asp:BoundField DataField="AddressName" HeaderText="地址名称" 
                    SortExpression="AddressName" />
                <asp:BoundField DataField="SAddressid" HeaderText="上级编号" 
                    SortExpression="SAddressid" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/TMDataBase.mdb" 
            DeleteCommand="DELETE FROM [Domain_Address] WHERE [ID] = ?" 
            InsertCommand="INSERT INTO [Domain_Address] ([ID], [Addressid], [AddressName], [SAddressid]) VALUES (?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Domain_Address] ORDER BY [SAddressid]" 
            UpdateCommand="UPDATE [Domain_Address] SET [Addressid] = ?, [AddressName] = ?, [SAddressid] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Addressid" Type="String" />
                <asp:Parameter Name="AddressName" Type="String" />
                <asp:Parameter Name="SAddressid" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Addressid" Type="String" />
                <asp:Parameter Name="AddressName" Type="String" />
                <asp:Parameter Name="SAddressid" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
