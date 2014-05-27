<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_BusinessNavigateList.aspx.cs" Inherits="WebBusiness_Page_BusinessNavigateList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../JS/jquery.js" type="text/javascript"></script>
    <script src="../JS/jquery.cookie.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            IsEnablePrevious();
            $("#previousPage").click(function () {
                var page = getPage("previous");
                location.href = "Page_BusinessNavigateList.aspx?page=" + page;
                return false;
            });
            $("#nextPage").click(function () {
                var page = getPage("next");
                $('#previousPage').attr('disabled', "false");
                var path = "Page_BusinessNavigateList.aspx?page=" + page;
                location.href = path;
                return false;
            });
        });
        function getPage(data) {
            var page = $.cookie("page");
            if (page == "undefined" || page == null) {
                page = 1;
                $.cookie("page", page);
                return page;
            }
            else if (data == "previous") {
                page--;
                $.cookie("page", page);
                return page;
            }
            else {
                page++;
                $.cookie("page", page);
                return page;
            }
        }
        function IsEnablePrevious() {
            var page = $.cookie("page");
            if (page == "undefined" || page == null || page == 1) {
                $('#previousPage').attr('disabled', "true");
            }
        }
    </script>
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
                    商户天地</h2>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <style type="text/css">
                    .style1
                    {
                        width: 271px;
                    }
                    .style2
                    {
                        width: 262px;
                    }
                    
                    a:link
                    {
                        text-decoration: none;
                    }
                    a:visited
                    {
                        text-decoration: none;
                    }
                    a:hover
                    {
                        text-decoration: none;
                    }
                    a:active
                    {
                        text-decoration: none;
                    }
                </style>
                <br />
                服务类别： <a href="Page_BusinessNavigateList.aspx" style="color: blue; text-decoration: none;">
                    全部&nbsp;</a><asp:Repeater ID="Repeater1" runat="server" DataSourceID="AccessDataSource1">
                        <ItemTemplate>
                            <a href="Page_BusinessNavigateList.aspx?BusinessGroup=<%# Eval("Businessgroupid")%>"
                                style="color: blue; text-decoration: none;">
                                <%# Eval("Businessgroupname")%></a>&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:Repeater>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
                    SelectCommand="SELECT * FROM [Domain_BusinessGroup] ORDER BY [ID]"></asp:AccessDataSource>
                <br />
                <br />
                新昌： <a href="Page_BusinessNavigateList.aspx" style="color: blue; text-decoration: none;">
                    全部&nbsp;</a>
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="AccessDataSource2">
                    <ItemTemplate>
                        <a href="Page_BusinessNavigateList.aspx?BusinessAddress1=<%# Eval("Addressid")%>"
                            style="color: blue; text-decoration: none;">
                            <%# Eval("AddressName")%></a>&nbsp;&nbsp;
                    </ItemTemplate>
                </asp:Repeater>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
                    SelectCommand="SELECT * FROM [Domain_Address] WHERE ([SAddressid] = ?) ORDER BY [Addressid]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="SAddressid" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <br />
                <br />
                嵊州： <a href="Page_BusinessNavigateList.aspx" style="color: blue; text-decoration: none;">
                    全部&nbsp;</a><asp:Repeater ID="Repeater3" runat="server" DataSourceID="AccessDataSource3">
                        <ItemTemplate>
                            <a href="Page_BusinessNavigateList.aspx?BusinessAddress2=<%# Eval("Addressid")%>"
                                style="color: blue; text-decoration: none;">
                                <%# Eval("AddressName")%></a>&nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:Repeater>
                <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
                    SelectCommand="SELECT * FROM [Domain_Address] WHERE ([SAddressid] = ?) ORDER BY [Addressid]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="SAddressid" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <br />
                <br />
                查找：<asp:TextBox ID="TextBox1" runat="server" Width="368px"></asp:TextBox><asp:Button
                    ID="Button1" runat="server" Text="·搜 索·" Width="68px" OnClick="Button1_Click" />&nbsp;
                <asp:Button ID="Button2" runat="server" Text="一键搜惠" Width="68px" OnClick="Button2_Click" />
                <br />
                <br />
                <div style="border-bottom: 2px solid #3399cc; height: 45px; line-height: 40px; width: 740px;">
                    全部商户</div>
                <br />
                <asp:Repeater runat="server" ID="repearter_shanghu">
                    <ItemTemplate>
                        <a href="../WebBusiness/Page_BusinessHome.aspx?Businessid=<%# Eval("Businessuid") %>">
                            <table border="1" bordercolor="#a0c6e5" style="border-collapse: collapse;" width="860"
                                height="102">
                                <tr>
                                    <td rowspan="2" width="102">
                                        <img src="../material/<%# Eval("Businessimg")%>" style="padding-bottom: 1px; padding-left: 1px;
                                            padding-right: 1px; padding-top: 1px" width="100" height="100" />
                                    </td>
                                    <td class="style1">
                                        <%# Eval("Businessmc")%>
                                    </td>
                                    <td class="style2">
                                        商户简介:
                                    </td>
                                    <td>
                                        优惠：<br />
                                </tr>
                                <tr>
                                    <td class="style1">
                                        地址：
                                        <%# Eval("Businessaddress")%><br />
                                        &nbsp;<br />
                                        电话：
                                        <%# Eval("tel")%>
                                    </td>
                                    <td class="style2">
                                        <%# Eval("jianjie")%>
                                    </td>
                                    <td>
                                        <%# Eval("xianshiyouhui")%>
                                    </td>
                            </table>
                        </a>
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td>
                <button id="previousPage">
                    上一页</button>
                <button id="nextPage">
                    下一页</button>
                共<%=Count%>行数据
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
