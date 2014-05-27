<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_BusinessManager.aspx.cs" Inherits="WebBusiness_Page_BusinessManager"
    ValidateRequest="false" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
                    商家管理</h2>
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
                1.商户搜索配置
                <br />
                <br />
                <hr style="border: 1px dashed #DDF1FC;" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户名称：<asp:TextBox ID="TextBox_Businessmc" runat="server" Width="353px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户导图：
                <asp:FileUpload ID="FileUpload_Image" runat="server" Width="353px" />&nbsp;&nbsp;100*100图片格式
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户地址：<asp:TextBox ID="TextBox_address" runat="server" Width="353px"></asp:TextBox>&nbsp;&nbsp;地址应该不超过20汉字
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户电话：<asp:TextBox ID="TextBox_tel" runat="server" Width="353px"></asp:TextBox>&nbsp;&nbsp;例如：0743-2558037
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户简介：<asp:TextBox ID="TextBox_jj" runat="server" Width="353px"></asp:TextBox>&nbsp;&nbsp;简介应当在60字以内
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                显示优惠：<asp:DropDownList ID="DropDownList_yh" runat="server" Width="353px">
                </asp:DropDownList>
                &nbsp;&nbsp; 请选择显示优惠
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="Button_SaveSH" runat="server" Text="·保 存·" Height="27px" Width="95px"
                    OnClick="Button_SaveSH_Click" />
                <asp:Button ID="Button_ClearSH" runat="server" Text="·清 空·" Height="27px" Width="95px"
                    OnClick="Button_ClearSH_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                2.商户首页配置
                <br />
                <br />
                <hr style="border: 1px dashed #DDF1FC;" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户首页图：
                <asp:FileUpload ID="FileUpload_shouye" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                店铺实景图：
                <asp:FileUpload ID="FileUpload_shijing" runat="server" />
            </td>
        </tr>
     
        <tr>
            <td>
                <br />
                店铺主营(左侧)：<asp:TextBox ID="TextBox_zhuying" runat="server" Width="356px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                店铺标签(左侧)：<asp:TextBox ID="TextBox_biaoqian" runat="server" Width="356px"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td>
                <br />
                店铺简介(右侧)：<asp:TextBox ID="TextBox_jianjie" runat="server" Width="976px" Height="42px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                地图代码： &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如何生成百度地图?<a
                    href="http://api.map.baidu.com/lbsapi/creatmap/" target="_blank">点击这里立即开始</a><br />
                <asp:TextBox ID="TextBox_baidu" runat="server" Width="976px" Height="82px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                商户内容：
                <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" UIColor="#FCFBFB"
                    Width="980px" Height="112px" EnterMode="BR"></CKEditor:CKEditorControl>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                &nbsp;&nbsp;<asp:Button ID="Button_submit" runat="server" Text="·保 存·" Height="27px"
                    Width="95px" OnClick="Button_submit_Click" />
                <asp:Button ID="Button_ClearDH" runat="server" Text="·清 空·" Height="27px" Width="95px"
                    OnClick="Button_ClearDH_Click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
