<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_Business_Preferential_list.aspx.cs" Inherits="WebBusiness_Page_Business_Preferential_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table bgcolor="#DDF1FC" width="100%">
        <tr>
            <td align="center">
                <img src="../images/01.jpg" />
            </td>
        </tr>
    </table>
    <table width="984" align="center">
        <tr>
            <td>
                <h2 style="font-size: 22px; line-height: 35px; font-weight: normal; font-family: '微软雅黑';
                    color: #228bcd">
                    优惠活动</h2>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="repeater1" runat="server">
                    <ItemTemplate>
                        <a href="../WebBusiness/Page_BusinessHome.aspx?Businessid=<%# Eval("Businessuid") %>">
                            <table border="1" bordercolor="#a0c6e5" style="border-collapse: collapse;" width="980">
                                <tr>
                                    <td height="24" style="border-right: 0px">
                                        &nbsp;&nbsp; 活动名称：
                                        <%# Eval("ptitle") %>
                                        &nbsp;&nbsp;优惠开始时间：<%# Eval("starttime") %>&nbsp;优惠结束时间：<%# Eval("endtime") %>&nbsp;&nbsp;
                                    </td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         &nbsp;&nbsp; <%# Eval("pcontent") %>
                                    </td>
                            </table>
                        </a>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>
