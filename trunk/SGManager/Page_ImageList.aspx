<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_ImageList.aspx.cs" Inherits="SGManager_Page_ImageList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="JavaScript"> 
<!--
        var flag = false;
        function DrawImage(ImgD) {
            var image = new Image();
            image.src = ImgD.src;
            if (image.width > 0 && image.height > 0) {
                flag = true;
                if (image.width / image.height >= 180 / 110) {
                    if (image.width > 180) {
                        ImgD.width = 180;
                        ImgD.height = (image.height * 110) / image.width;
                    } else {
                        ImgD.width = image.width;
                        ImgD.height = image.height;
                    }
                    /*ImgD.alt="bigpic" */
                }
                else {
                    if (image.height > 110) {
                        ImgD.height = 110;
                        ImgD.width = (image.width * 110) / image.height;
                    } else {
                        ImgD.width = image.width;
                        ImgD.height = image.height;
                    }
                    /*ImgD.alt="bigpic" */
                }
            }
        }
//--> 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <asp:Repeater ID="rptShowAllImages" runat="server" OnItemCreated="rptShowAllImages_ItemCreated"
                OnItemCommand="rptShowAllImages_ItemCommand">
                <ItemTemplate>
                    <td style="height: 120px; width: 100px; border: 1px dotted #B7B7B7; margin-bottom: 10px;
                        padding: 10px 10px 0;" align="center">
                        <a href="../images/<%#System.IO.Path.GetFileName(GetDataItem().ToString()) %>">
                            <img src="../images/<%#System.IO.Path.GetFileName(GetDataItem().ToString()) %>"
                                width="96px" height="118px" onload="javascript:DrawImage(this);" /></a>
                        <br />
                        <font size="1">
                            <%#System.IO.Path.GetFileName(GetDataItem().ToString()) %></font>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="<%#System.IO.Path.GetFileName(GetDataItem().ToString()) %>"
                            CommandName="del">删除</asp:LinkButton>
                    </td>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    </form>
</body>
</html>
