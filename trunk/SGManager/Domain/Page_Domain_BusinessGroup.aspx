<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_Domain_BusinessGroup.aspx.cs" Inherits="WebBusiness_Domain_Page_Domain_BusinessGroup" %>

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
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Businessgroupid" HeaderText="分类编号" 
                    SortExpression="Businessgroupid" />
                <asp:BoundField DataField="Businessgroupname" HeaderText="分类名称" 
                    SortExpression="Businessgroupname" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/TMDataBase.mdb" 
            DeleteCommand="DELETE FROM [Domain_BusinessGroup] WHERE [ID] = ?" 
            InsertCommand="INSERT INTO [Domain_BusinessGroup] ([ID], [Businessgroupid], [Businessgroupname]) VALUES (?, ?, ?)" 
            SelectCommand="SELECT * FROM [Domain_BusinessGroup]" 
            UpdateCommand="UPDATE [Domain_BusinessGroup] SET [Businessgroupid] = ?, [Businessgroupname] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Businessgroupid" Type="String" />
                <asp:Parameter Name="Businessgroupname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Businessgroupid" Type="String" />
                <asp:Parameter Name="Businessgroupname" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
