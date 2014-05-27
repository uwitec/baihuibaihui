<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Page_BusinessHome_Preferential_add.aspx.cs" Inherits="WebBusiness_Page_BusinessHome_Preferential_add" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                    发布优惠</h2>
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
                商户名称：
                <asp:Label ID="Label_uid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                优惠时间：
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                年
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                月
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                日 至
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>2014</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                年
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                月
                <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                优惠标题：
                <asp:TextBox ID="TextBox2" runat="server" Width="500px" Height="20px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3" runat="server" ErrorMessage=" 不能为空！" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                <br />
                <br />
                优惠简介：
                <ckeditor:ckeditorcontrol id="CKEditorControl1" runat="server" uicolor="#FCFBFB"
                    width="976px" height="112px" entermode="BR"></ckeditor:ckeditorcontrol>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                &nbsp;&nbsp;<asp:Button ID="Button_submit" runat="server" Text="·提交审核·" Height="27px"
                    Width="95px" OnClick="Button_submit_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
              
             
            </td>
        </tr>
    </table>
</asp:Content>
