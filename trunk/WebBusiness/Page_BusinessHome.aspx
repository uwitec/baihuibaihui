<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_BusinessHome.aspx.cs"
    Inherits="WebBusiness_Page_BusinessHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="all" />
    <meta name="author" content="�ɶ�ѩ������Ƽ����޹�˾" />
    <meta name="Copyright" content="�ٻ�" />
    <meta name="keywords" content="�ٻ�" />
    <meta name="description" content="�ٻ�" />
    <meta http-equivmetahttp-equiv="x-ua-compatible" content="IE=7" />
    <title>����С�ݣ�����㳡�꣩</title>
    <link href="../css/gonggong.css" rel="stylesheet" type="text/css" />
    <link href="../css/wmstyle.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/BaiduMap.css" rel="stylesheet" type="text/css" />
    <style>
        p
        {
            text-indent: 0px;
            padding: 0px;
        }
    </style>
</head>
<body style="background: url(http://www.diancanw.com/Img_Dj/bg.png)">
    <div id="dBody">
        <!--����-->
        <div id="dTop">
            <table style="margin: 0 auto; width: 980px;">
                <tr>
                    <td align="left">
                        <span id="spI">��ӭ�����ٻ�ٻ�����<a href="../WebMember/Page_MemberLogin.aspx">���¼</a> | <a
                            href="../WebMember/Page_MemberRegist.aspx">���ע��</a></span>
                    </td>
                    <td align="right">
                        <img src="../images/index.gif" /><a href="../Page_Main.aspx">��վ��ҳ</a> |
                        <img src="../images/zhuye.png" /><a href="javascript:void(0)" onclick="fHome(this,window.location)"
                            target="_top">��Ϊ��ҳ</a> | <a href="http://weibo.com/u/3248409911/home?topnav=1&wvr=5">
                                <img src="../images/weibo.png" />΢����ע</a>
                    </td>
                </tr>
            </table>
        </div>
        <!--ͼƬ��-->
        <div style="background: url(../images/topbg.png) repeat; height: 350px; margin-bottom: 80px;">
            <div class="contentwrap">
                <div class="topName">
                    <span>
                        <img src="../images/rexian.png" /><%=Tel%></span><strong><%=Businessmc%></strong></div>
                <div class="topLImg">
                </div>
                <div id="dQcs">
                    <a href="../qcs.html" target="_blank">
                        <img src="http://www.diancanw.com/images/qcs.png" alt="ȫ����" /></a></div>
                <div class="topImg">
                    <img src="../material/<%=Bgimage%>" /></div>
            </div>
        </div>
        <center>
            <div id="dLst1">
                <table class="tbBox" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="tbBox_left">
                            <div class="tbBox_lbt" style="color: #555;">
                                <span id="spGz"></span><b>
                                    <%=Businessmc%></b>&nbsp;&nbsp;����Ӫ��<%=Zhuying%><br />
                                <br />
                                <tt class="tBq">
                                    <%=Biaoqian %></tt>
                                <div id="dXiuXi" style="z-index: 100; height: 1px; text-align: center; width: 100%;
                                    display: none;">
                                    <img src="../images/xiuxi.png" style="margin-top: -30px; z-index: 100;" /></div>
                                <div id="dDb">
                                    <%=Shanghunneirong%>
                                </div>
                                <div style="z-index: 0">
                                    <ul id="uLst" class="tbBox_lst">
                                        <li>
                                            <br>
                                </div>
                        </td>
                        <td class="tbBox_right">
                            <table class="dMBox_lst" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2">
                                        <b>������Ϣ</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div id="dImg" class="dImg" onmouseover="clearInterval(MyMar)" onmouseout="MyMar=setInterval(Marquee,40)">
                                            <table id="tBox_img" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td id="dImg1">
                                                        <table>
                                                            <tr>
                                                                <td>
                                                                    <img src="../material/<%=Smallimage%>" /><td>
                                                                        <%--  <td>
                                                                            <img onclick="fHImg('58/585727/HuanJing/02.jpg')" src="http://www.diancanw.com/Img_Dj/58/585727/HuanJing/02.jpg01.jpg" /><td>
                                                                                <td>
                                                                                    <img onclick="fHImg('58/585727/HuanJing/03.jpg')" src="http://www.diancanw.com/Img_Dj/58/585727/HuanJing/03.jpg01.jpg" /><td>--%>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td id="dImg2">
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <span id="pJj">
                                            <%=Jianjie %><em id="dJjs1">...</em><a id="dJjs2" href="javascript:fJj()">�鿴��</a><span
                                                id="dJjs" style="display: none;">��ζ�Ŀ������أ�����С��Ҳ����Ҫ�ҵ����ָо�������ת�ǵĿ������<a id="dJjs3" style="display: none;"
                                                    href="javascript:fJj()">���ئ�</a></span></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 100px;">
                                        <%--                                 <div id="dMap" style="width: 240px; height: 240px;">
                                            <%=Baiducodes%>
                                        </div>--%>
                                        <div id="result" style="left: 0px; top: 0px; width: 243px; height: 235px; overflow: hidden; position: absolute; z-index: 9;">
                                        </div>
                                        <div id="preview">
                                            <div id="float_search_bar" style="display:none;" >
                                                <label>
                                                    ����</label>
                                                <input type="text" id="keyword" />
                                                <button id="search_button">
                                                    ����</button>
                                                <span>�����ͼ���ע��ȡ����</span>
                                            </div>
                                            <div id="map_container">
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div id="dDjPlLst">
                                <ul id="dDjPl">
                                </ul>
                                <table style="width: 100%; text-align: center;">
                                    <tr>
                                        <td id="tbDjPl" align="left">
                                            �̻����ƣ�<%=Businessmc%>
                                            <br />
                                            ��ַ��
                                            <%=Businessaddress1%>
                                            <br />
                                            �绰��<%=Tel %>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <%--  <div id="dLst2" style="display: none;">
                <table cellpadding="0" cellspacing="0" style="margin-bottom: 10px; width: 100%;">
                    <tr>
                        <td colspan="2" class="dBrTm">
                            >> <b>��ϵ��ʽ</b>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>�� ϵ �ˣ�
                        </th>
                        <td>
                            <input id="tLx" name="��д����" maxlength="4" style="width: 60px;" />&nbsp;&nbsp;<input
                                type="radio" checked="checked" name="sex" id="sex1" value="1" /><label for="sex1">����</label>&nbsp;&nbsp;<input
                                    type="radio" name="sex" id="sex2" value="2" /><label for="sex2">Ůʿ</label>&nbsp;&nbsp;<span
                                        id="spLx" style="color: #aaa;">Ϊ�˻�ø��õķ��񣬽�������д����</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>��ϵ�ֻ���
                        </th>
                        <td>
                            <input id="tSj" name="�����ֻ�����" onchange="fSjYz();" /><span id="spSj" style="color: #aaa;">Ϊ�˷������ȡ����ϵ���뱣���ֻ���ͨ</span>
                        </td>
                    </tr>
                    <tr id="trZSj">
                        <th>
                            <span style="color: red;"></span>&nbsp;��ʷ�ֻ���
                        </th>
                        <td>
                            <span id="spSPh"></span><span id="SpZSj" style="color: #aaa;">��ʹ�ù�����ϵ�绰</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>����ʱ�䣺
                        </th>
                        <td id="tbDts" style="text-align: left;">
                            <select id="tDtH1">
                            </select>��
                            <select id="tDtD1">
                                <option value="00">00</option>
                                <option value="30">30</option>
                            </select>��
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>�Ͳ͵�ַ��
                        </th>
                        <td>
                            <input id="tAd" name="��д�Ͳ͵�ַ" style="width: 300px;" /><span id="spAd" style="color: #aaa;">����д������ϸ�Ͳ͵�ַ</span>
                        </td>
                    </tr>
                    <tr id="trZAd">
                        <th>
                            <span style="color: red;"></span>&nbsp;��ʷ��ַ��
                        </th>
                        <td>
                            <span id="spSAd"></span><span id="spZAd" style="color: #aaa;">��ʹ�ù����Ͳ͵�ַ</span>
                        </td>
                    </tr>
                    <tr id="trYzm">
                        <th>
                            <span style="color: red;">*</span>�� ֤ �룺
                        </th>
                        <td>
                            <input id="tYzm" name="��֤��" style="width: 60px;" maxlength="6" />&nbsp;&nbsp;<input
                                id="tHqYzm" onclick="fYzm()" class="tb_yz" type="button" value="��ȡ��֤��" />&nbsp;&nbsp;<span
                                    id="spYzm" style="color: #aaa;">Ϊ��ȷ�������ֻ���ʵ����д�յ���6λ��֤��</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="dBrTm">
                            >> <b>���̼�����</b>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span>&nbsp;</span>����Ҫ��
                        </th>
                        <td colspan="2" style="padding-bottom: 5px;">
                            <textarea id="tMe" style="width: 400px; height: 40px; overflow: auto;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="dBrTm">
                            >> <b>֧��</b>
                        </td>
                    </tr>
                    <tr>
                        <th style="padding: 17px 0 10px 40px;">
                            &nbsp;Ӧ����
                        </th>
                        <td>
                            <span id="spZpr"></span><span style="color: Red; font-weight: bold;">Ԫ</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding-left: 50px;">
                            <span id="spZhiFu"></span>
                            <div id="dZhif1" style="color: #888; display: none;">
                                <p>
                                    1.Ŀǰֻ֧��֧��������֧����</p>
                                <p>
                                    2.֧���ɹ���ϵͳ���Զ�֪ͨ���Ϊ��׼���Ͳͷ���</p>
                                <p>
                                    3.�����κ���������������ϵ��4000-78-4006 ��</p>
                                <br>
                            </div>
                            <div id="dZhif2" style="color: #888; display: none;">
                                <p>
                                    1.��ѡ������֧����������Ϣ���Զ��ŷ�ʽ���͸�����</p>
                                <p>
                                    2.��һ�������Ķ����ź���֤�����ȷ��
                                </p>
                                <p>
                                    3.�����κ���������������ϵ��4000-78-4006��</p>
                                <br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; padding: 8px; border: 1px solid #ddd;
                            background: #eee;">
                            �����ڰ��¡�ͬ���ύ����ťʱ�����ʾ�����Ķ���ͬ��<a href="javascript:$.$Sd('dLst2');$.$Sd('dLst4',1);">�����֧������</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div style="width: 100%; height: 55px;">
                                <span id="dTjDd" class="btn_nexts"><a href="javascript:fDd1(1);"></a></span><span
                                    class="btn_next1"><a id="aXyb" href="javascript:$.$Sd('dLst2');$.$Sd('dLst1',1);"
                                        class="affirm"></a></span>
                            </div>
                        </td>
                    </tr>
                </table>--%>
    </div>
    <table cellpadding="0" cellspacing="0" align="center">
        <tr class="tfootd">
            <td class="tfoofR" colspan="2">
                <br />
                <br />
                <br />
                <a href="#" target="_blank">��������</a>|<a href="../Page_RegistServices.aspx" target="_blank">ʹ��Э��</a>|<a
                    href="../Page_Main.aspx" target="_blank">��վ��ҳ</a>|<a href="../Page_ContactUs.aspx"
                        target="_blank">��ϵ����</a>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </div>
</body>
<script src="../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>
<script src="../JS/BaiduMap.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var v = '<%=Businessaddress1%>';
            local.search(v);
    });
</script>
</html>
