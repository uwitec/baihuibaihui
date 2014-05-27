<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SGManager_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>后台管理系统登陆</title>
    <link href="Styles/LoginStyle.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript" src="Scripts/Common.js"></script>
    <script language="JavaScript" type="text/javascript" src="Scripts/Login.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="238" background="Images/login01.jpg">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="208" height="190" style="background: url(images/login02.jpg)">
                            &nbsp;
                        </td>
                        <td width="518" style="background: url(images/login03.jpg)">
                        
                            <table width="320" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="40" height="50">
                                        <img src="images/user.gif" width="30" height="30" />
                                    </td>
                                    <td width="38" height="50">
                                        用户
                                    </td>
                                    <td width="242" height="50">
                                        <asp:TextBox ID="txt_name" runat="server" class="username" MaxLength="16"></asp:TextBox>
                                        &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="txt_name" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="50">
                                        <img src="images/password.gif" width="28" height="32" />
                                    </td>
                                    <td height="50">
                                        密码 
                                    </td>
                                    <td height="50">
                                        <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" class="password" MaxLength="16"></asp:TextBox>
                                        &nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txt_pwd" ErrorMessage="*" ValidationGroup="11"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40">
                                        &nbsp;
                                    </td>
                                    <td height="40">
                                        &nbsp;
                                    </td>
                                    <td height="60">
                                        &nbsp;<asp:ImageButton ID="ImageButton1" ImageUrl="images/login.gif" runat="server"
                                            class="loginbutton" OnClick="ImageButton1_Click" />
                                    </td>
                                </tr>
                            </table>
                         
                        </td>
                        <td width="214" style="background: url(images/login04.jpg)">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="133" background="Images/login05.jpg" align="center">
             <span style="color:Red;font-size:12px;">2014-2015 @版权所有 百会百惠网 授权 客户服务</span>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
