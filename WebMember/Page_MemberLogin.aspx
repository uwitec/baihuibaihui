<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_MemberLogin.aspx.cs" Inherits="WebMember_Page_MemberLogin" %>

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
                    会员登陆</h2>
                <hr />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                用户名：<asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="180px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage=" 不能为空！" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                密&nbsp;&nbsp;码：<asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="180px"
                    TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage=" 不能为空！" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
               <asp:Button ID="Button1" runat="server" Text="·登陆·" Height="27px" Width="95px"
                    OnClick="Button1_Click" />
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
    <br />    <br />    <br />
    <br />    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
