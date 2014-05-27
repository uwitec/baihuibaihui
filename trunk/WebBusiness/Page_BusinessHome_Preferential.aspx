<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_BusinessHome_Preferential.aspx.cs" Inherits="WebBusiness_Page_BusinessHome_Preferential" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table bgcolor="#DDF1FC" width="100%">
        <tr>
            <td align="center">
                <img src="../images/wd_banner%20(1).png" />
            </td>
        </tr>
    </table>
    <table width="984" align="center">
        <tr>
            <td>
                <h2 style="font-size: 22px; line-height: 35px; font-weight: normal; font-family: '微软雅黑';
                    color: #228bcd">
                    商户优惠列表</h2>
                <hr />
            </td>
        </tr>
        <tr>
            <td align="right">
                <a href="../WebBusiness/Page_BusinessManager.aspx" style="color: #228BCD; text-decoration: none;"
                    target="_blank">&nbsp;商户信息管理&nbsp;|&nbsp;</a> <a href="../WebBusiness/Page_BusinessHome_Preferential_add.aspx"
                        style="color: #228BCD; text-decoration: none;" target="_blank">&nbsp;发布商户优惠&nbsp;|&nbsp;</a><a
                            href="../WebBusiness/Page_BusinessHome_Preferential.aspx" style="color: #228BCD;
                            text-decoration: none;" target="_blank">&nbsp;查看商户优惠&nbsp;|&nbsp;</a><a href="../WebBusiness/Page_BusinessHome.aspx?Businessid=<%=Businessid1  %>"
                                style="color: #228BCD; text-decoration: none;" target="_blank">&nbsp;查看商户首页&nbsp;|&nbsp;</a><a
                                    href="../WebBusiness/Page_BusinessLogin.aspx" style="color: #228BCD; text-decoration: none;"
                                    target="_blank">&nbsp;返回商户登陆</a>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户账户：
                <asp:Label ID="Label_uid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left">
                <br />
                <asp:GridView ID="GridView1" runat="server" BorderColor="#A0C6E5" BorderStyle="Dashed"
                    AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" EnableModelValidation="True">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="序号" InsertVisible="False" ReadOnly="True"
                            SortExpression="ID" />
                        <asp:BoundField DataField="Businessuid" HeaderText="商户账户" SortExpression="Businessuid">
                            <ControlStyle Width="40px" />
                            <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="starttime" HeaderText="优惠开始时间" SortExpression="starttime">
                            <ControlStyle Width="40px" />
                            <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="endtime" HeaderText="优惠结束时间" SortExpression="endtime">
                            <ControlStyle Width="40px" />
                            <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ptitle" HeaderText="优惠简介" SortExpression="ptitle">
                            <HeaderStyle Width="180px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="creatime" HeaderText="优惠创建时间" SortExpression="creatime">
                            <ControlStyle Width="40px" />
                            <HeaderStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="shenhe" HeaderText="管理员审核" SortExpression="shenhe">
                            <ControlStyle Width="40px" />
                            <HeaderStyle Width="100px" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>

    <br />
    <br />
    <br />
        <br />
    <br />
    <br />
    <br />
        <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
