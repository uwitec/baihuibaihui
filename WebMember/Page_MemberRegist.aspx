<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_MemberRegist.aspx.cs" Inherits="WebMember_Page_MemberRegist" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                    会员注册</h2>
            </td>
            <td align="right">
                <font size="2">已有账号>>><a href="../WebMember/Page_MemberLogin.aspx">立即会员登录</a></font>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
                <br />
                用户名：<asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="230px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ErrorMessage=" 不能为空！" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                密&nbsp;&nbsp;码：<asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="230px"
                    TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        runat="server" ErrorMessage=" 不能为空！" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                邮&nbsp;&nbsp;箱：<asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                手机号：<asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="230px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ErrorMessage=" 不能为空！" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:CheckBox ID="CheckBox_xieyi" runat="server" Text="我同意百惠百会网注册协议。" />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="../Page_ContactUs.aspx?text=服务条款"
                    ForeColor="Blue" Target="_blank">查看协议</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="·注册·" Height="27px" Width="95px"
                    OnClick="Button1_Click" />
                <%--<input style="width: 140px; height: 37px; background-position: 0px -90px; vertical-align: middle;
                    font-size: 18px; font-family: '黑体',Helvetica,Arial,Verdana,'黑体'; color: #fff;
                    border: 0px solid rgb(255, 255, 255); /* background-color: green; */
background: none repeat scroll 0% 0% rgb(228, 58, 61); margin-left: 200px; margin-top: 20px; margin-bottom: 50px;" />--%>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                点击加入我们的微社区<a href="javascript:void(0);" sid="226427943" title="关注" class="wsqFollowDiv">关注</a>
                <script src="http://dzqun.gtimg.cn/quan/scripts/widgets/follow.js" charset="utf-8"></script>
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
</asp:Content>
