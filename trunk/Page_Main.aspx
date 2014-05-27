<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_Main.aspx.cs" Inherits="Page_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="JS/banner.js" type="text/javascript"></script>
    <link href="CSS/banner.css" rel="stylesheet" type="text/css" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <table width="984" align="center">
        <tr>
            <td>
                <div id="banner">
                    <div class="slides">
                        <ul class="slide-pic">
                            <li class="cur"><a href="http://www.baihuibaihui.com/">
                                <img alt="" src="images/banner/00.jpg" /></a></li>
                            <li><a href="http://www.baihuibaihui.com/">
                                <img alt="" src="images/banner/01.jpg" /></a></li>
                            <li><a href="http://www.baihuibaihui.com/">
                                <img alt="" src="images/banner/02.jpg" /></a></li>
                            <li><a href="http://www.baihuibaihui.com/">
                                <img alt="" src="images/banner/03.jpg" /></a></li>
                            <li><a href="http://www.baihuibaihui.com/">
                                <img alt="" src="images/banner/04.jpg" /></a></li>
                        </ul>
                        <ul class="slide-li op">
                            <li class="cur"></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                        <ul class="slide-li slide-txt">
                            <li class="cur"><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <h4 style="font-size: 18px; line-height: 35px; font-weight: normal; font-family: '微软雅黑';
                    color: #228bcd">
                    最新商户</h4>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <%-- <div class="">最新商户</div>--%>
                <div class="cont_text">
                    <div>
                        <ul class="xyList">
                            <asp:Repeater runat="server" ID="Repeater_BusinessNew">
                                <ItemTemplate>
                                    <li><a href="WebBusiness/Page_BusinessHome.aspx?Businessid=<%# Eval("Businessuid") %>"
                                        target="_blank">
                                        <%# Eval("BusinessName")%></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <h4 style="font-size: 18px; line-height: 35px; font-weight: normal; font-family: '微软雅黑';
                    color: #228bcd">
                    新入会员</h4>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <div class="cont_text">
                    <div>
                        <ul class="xyList">
                            <asp:Repeater runat="server" ID="Repeater2">
                                <ItemTemplate>
                                    <li>
                                        <%# Eval("Memberuid")%></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <h2 style="font-size: 16px; line-height: 35px; font-weight: normal; font-family: '微软雅黑';
                    color: #228bcd">
                    最新优惠</h2>
                <hr />
                <asp:Repeater runat="server" ID="repeater_yh">
                    <ItemTemplate>
                        <a href="WebBusiness/Page_BusinessHome.aspx?Businessid=<%# Eval("Businessuid") %>">
                            <%# Eval("ptitle") %>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
                    SelectCommand="SELECT * FROM [lianjie] ORDER BY [id]"></asp:AccessDataSource>
                 <h4 style="font-size: 18px; line-height: 35px; font-weight: normal; font-family: '微软雅黑';
                    color: #228bcd;">
                    最新会员</h4> 
                <div class="cont_zixun">
                    <%--    <div class="cont_yq">--%>
                </div>
            </td>
        </tr>
        <tr>
            <td height="10" align="left" class="white2" colspan="2" bgcolor="#F5F5F5" valign="middle">
            <br />
                &nbsp;&nbsp;友情链接：<asp:Repeater ID="Repeater1" runat="server" DataSourceID="AccessDataSource1">
                    <ItemTemplate>
                        <a href="<%#Eval("link") %>" style="text-decoration: none" target="_blank">
                            <%#Eval("linkname") %></a>&nbsp;&nbsp;
                    </ItemTemplate>
                </asp:Repeater>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
