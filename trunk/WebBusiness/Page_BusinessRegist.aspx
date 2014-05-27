<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_BusinessRegist.aspx.cs" Inherits="WebBusiness_Page_BusinessRegist" %>

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
                    商家注册申请
                </h2>
            </td>
            <td align="right">
                <font size="2">已有账号>>><a href="../WebBusiness/Page_BusinessLogin.aspx">立即商户登录</a></font>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
                <br />
                注册账户：&nbsp;&nbsp;<asp:TextBox ID="TextBox_zhanghu" runat="server" Height="20px" Width="230px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage=" 不能为空！" ControlToValidate="TextBox_zhanghu"></asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td>
                <br />
                登陆密码：&nbsp;&nbsp;<asp:TextBox ID="TextBox_mima" runat="server" Height="20px" Width="230px"
                    TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage=" 不能为空！" ControlToValidate="TextBox_mima"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户名称：&nbsp;&nbsp;<asp:TextBox ID="TextBox_shanghumingcheng" runat="server" Height="20px"
                    Width="230px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage=" 不能为空！" ControlToValidate="TextBox_shanghumingcheng"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                手机号码：&nbsp;&nbsp;<asp:TextBox ID="TextBox_shouji" runat="server" Height="20px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                联系电话：&nbsp;&nbsp;<asp:TextBox ID="TextBox_dianhua" runat="server" Height="20px" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商家地址：&nbsp;
                <asp:DropDownList ID="DropDownList_dizhi" runat="server" DataSourceID="AccessDataSource1"
                    AutoPostBack="true" DataTextField="AddressName" DataValueField="Addressid" OnSelectedIndexChanged="DropDownList_dizhi_SelectedIndexChanged1"
                    Height="20px" Width="100px">
                </asp:DropDownList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
                    SelectCommand="SELECT [Addressid], [AddressName], [SAddressid] FROM [Domain_Address] WHERE ([SAddressid] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="SAddressid" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                市 &nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="100px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户类别：&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="AccessDataSource2"
                    DataTextField="Businessgroupname" RepeatLayout="Flow" RepeatColumns="10" DataValueField="Businessgroupid">
                </asp:RadioButtonList>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/TMDataBase.mdb"
                    SelectCommand="SELECT * FROM [Domain_BusinessGroup] ORDER BY [Businessgroupid]">
                </asp:AccessDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                提供优惠:&nbsp;&nbsp;<asp:RadioButton ID="RadioButton_true" runat="server" GroupName="groupyx"
                    Text="提供" />
                <asp:RadioButton ID="RadioButton_false" runat="server" GroupName="groupyx" Text="不提供"
                    Checked="true" />
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
                &nbsp;&nbsp;<asp:Button ID="Button_submit" runat="server" Text="·申请注册·" Height="27px"
                    Width="95px" OnClick="Button_submit_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>
