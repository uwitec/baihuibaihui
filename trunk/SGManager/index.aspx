<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="SGManager_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>��̨����ϵͳ</title>
    <link href="Styles/MainStyle.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" type="text/javascript" src="Scripts/Main.js"></script>
    <script language="javascript">
        function SetWinHeight(obj) {
            var win = obj;
            if (document.getElementById) {
                if (win && !window.opera) {
                    if (win.contentDocument && win.contentDocument.body.offsetHeight)
                        win.height = win.contentDocument.body.offsetHeight;
                    else if (win.Document && win.Document.body.scrollHeight)
                        win.height = win.Document.body.scrollHeight;
                }
            }
        } 
    </script>
</head>
<body>
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td height="81">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="81" align="left" valign="top" background="Images/topbg.jpg">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="55">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="177" height="55" background="Images/logo.jpg">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <table border="0" align="right" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="70" height="55" align="center" valign="top" class="topmenu">
                                                                <a href="../Page_Main.aspx">
                                                                    <img src="Images/topmenu1.gif" width="70" height="55" border="0" onclick="" /></a>
                                                            </td>
                                                              <td width="70" height="55" align="center" valign="top" class="topmenu">
                                                                <a href="Page_ImageList.aspx" target="mainFrame">
                                                                    <img src="Images/topmenu4.gif" width="70" height="55" border="0" /></a>
                                                            </td>
                                                              <td width="70" height="55" align="center" valign="top" class="topmenu">
                                                                <a href="Page_Member_List.aspx" target="mainFrame">
                                                                    <img src="Images/topmenu9.gif" width="70" height="55" border="0" /></a>
                                                            </td>
                                                              <td width="70" height="55" align="center" valign="top" class="topmenu">
                                                                <a href="Page_WebHtmlModify.aspx" target="mainFrame">
                                                                    <img src="Images/topmenu7.gif" width="70" height="55" border="0" /></a>
                                                            </td>

                                                            <td width="70" height="55" align="center" valign="top" class="topmenu">
                                                                <a href="Login.aspx">
                                                                    <img src="Images/topmenu8.gif" width="70" height="55" border="0" /></a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="25">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="30">
                                                    &nbsp;
                                                </td>
                                                <td class="whitefonts">
                                                     ��ǰ�û���<%=Username%> 
                                                    [<a href="Login.aspx">�˳�</a>]
                                                </td>
                                                <td width="200" class="whitefonts">
                                                    by Lion
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="1">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="147" align="left" valign="top" class="rightborder">
                            <div id="leftMenu_9" style="display: block;">
                                <table width="143" height="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="lefttitle">
                                            ϵͳ����
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="leftmenu">
                                            <a href="Domain/Page_Domain_Address.aspx" target="mainFrame">��ַ����</a> <a href="Domain/Page_Domain_BusinessGroup.aspx"
                                                target="mainFrame">��������</a> <a href="Page_WebLink.aspx" target="mainFrame">���ӹ���</a><a href="../Page_Main.aspx" target="mainFrame">�鿴��ҳ</a>
                                            <a href="tencent://message/?Uin=2029039266" target="mainFrame">����QQ֧��</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="leftMenu_1" style="display: block;">
                                <table width="143" height="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="lefttitle">
                                            ��Ա����
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="leftmenu">
                                            <a href="WelCome.aspx" target="mainFrame">��ӭҳ��</a> <a href="Page_Member_List.aspx"
                                                target="mainFrame">��Ա�б�</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="leftMenu_2" style="display: block;">
                                <table width="143" height="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="lefttitle">
                                            �̻�����
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="leftmenu">
                                            <!--Page_Business_Preferential_Check.aspx-->
                                            <a href="Page_Business_check.aspx" target="mainFrame">�̻����</a> <a href="Page_Business_Preferential_Check.aspx"
                                                target="mainFrame">�Ż����</a> <a href="Page_ArtCileAdd.aspx" target="mainFrame">��������</a><a
                                                    href="Page_ArtCileGroup.aspx" target="mainFrame">���·���</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="leftMenu_5" style="display: block;">
                                <table width="143" height="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="lefttitle">
                                            ͼƬ����
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="leftmenu">
                                            <a href="Page_ImageList.aspx" target="mainFrame">ͼƬ�ռ�</a> <a href="Page_ImageUpload.aspx"
                                                target="mainFrame">�ϴ�ͼƬ</a> <a href="Page_ImageListUpload.aspx" target="mainFrame">�����ϴ�</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                           <%-- <div id="leftMenu_6" style="display: block;">
                                <table width="143" height="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="lefttitle">
                                            ������
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="leftmenu">
                                            <a href="Page_AlbumMgr.aspx" target="mainFrame">����б�</a> <a href="Page_AlbumAdd.aspx"
                                                target="mainFrame">�������</a> <a href="Page_AlbumGroup.aspx" target="mainFrame">������</a>
                                            <a href="Page_AlbumAddPhoto.aspx" target="mainFrame">������Ƭ</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>--%>
                            <div id="leftMenu_7" style="display: block;">
                                <table width="143" height="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="lefttitle">
                                            ҳ�����
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="leftmenu">
                                            <a href="Page_WebHtmlList.aspx" target="mainFrame">ҳ���б�</a><a href="Page_WebHtmlAdd.aspx"
                                                target="mainFrame">����ҳ��</a> <a href="Page_WebHtmlModify.aspx" target="mainFrame">�༭ҳ��</a>
                                            
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div id="leftMenu_8" style="display: block;">
                                <table width="143" height="100%" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="lefttitle">
                                            �û�����
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="leftmenu">
                                            <a href="Page_SystemUser.aspx" target="mainFrame">�û��б�</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td align="left" valign="top">
                            <iframe id="mainFrame" name="mainFrame" src="WelCome.aspx" scrolling="yes" width="100%"
                                height="100%" frameborder="0"></iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html> 