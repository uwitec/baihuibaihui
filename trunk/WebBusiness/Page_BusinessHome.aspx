<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_BusinessHome.aspx.cs"
    Inherits="WebBusiness_Page_BusinessHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="robots" content="all" />
    <meta name="author" content="成都雪船网络科技有限公司" />
    <meta name="Copyright" content="百惠" />
    <meta name="keywords" content="百惠" />
    <meta name="description" content="百惠" />
    <meta http-equivmetahttp-equiv="x-ua-compatible" content="IE=7" />
    <title>咖啡小馆（米瑞广场店）</title>
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
        <!--顶部-->
        <div id="dTop">
            <table style="margin: 0 auto; width: 980px;">
                <tr>
                    <td align="left">
                        <span id="spI">欢迎来到百会百惠网！<a href="../WebMember/Page_MemberLogin.aspx">请登录</a> | <a
                            href="../WebMember/Page_MemberRegist.aspx">免费注册</a></span>
                    </td>
                    <td align="right">
                        <img src="../images/index.gif" /><a href="../Page_Main.aspx">网站首页</a> |
                        <img src="../images/zhuye.png" /><a href="javascript:void(0)" onclick="fHome(this,window.location)"
                            target="_top">设为首页</a> | <a href="http://weibo.com/u/3248409911/home?topnav=1&wvr=5">
                                <img src="../images/weibo.png" />微博关注</a>
                    </td>
                </tr>
            </table>
        </div>
        <!--图片栏-->
        <div style="background: url(../images/topbg.png) repeat; height: 350px; margin-bottom: 80px;">
            <div class="contentwrap">
                <div class="topName">
                    <span>
                        <img src="../images/rexian.png" /><%=Tel%></span><strong><%=Businessmc%></strong></div>
                <div class="topLImg">
                </div>
                <div id="dQcs">
                    <a href="../qcs.html" target="_blank">
                        <img src="http://www.diancanw.com/images/qcs.png" alt="全诚送" /></a></div>
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
                                    <%=Businessmc%></b>&nbsp;&nbsp;【主营】<%=Zhuying%><br />
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
                                        <b>基本信息</b>
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
                                            <%=Jianjie %><em id="dJjs1">...</em><a id="dJjs2" href="javascript:fJj()">查看︾</a><span
                                                id="dJjs" style="display: none;">口味的咖啡厅呢？咖啡小馆也许你要找的那种感觉，就在转角的咖啡厅里。<a id="dJjs3" style="display: none;"
                                                    href="javascript:fJj()">隐藏︽</a></span></span>
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
                                                    区域：</label>
                                                <input type="text" id="keyword" />
                                                <button id="search_button">
                                                    查找</button>
                                                <span>点击地图或标注获取坐标</span>
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
                                            商户名称：<%=Businessmc%>
                                            <br />
                                            地址：
                                            <%=Businessaddress1%>
                                            <br />
                                            电话：<%=Tel %>
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
                            >> <b>联系方式</b>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>联 系 人：
                        </th>
                        <td>
                            <input id="tLx" name="填写姓氏" maxlength="4" style="width: 60px;" />&nbsp;&nbsp;<input
                                type="radio" checked="checked" name="sex" id="sex1" value="1" /><label for="sex1">先生</label>&nbsp;&nbsp;<input
                                    type="radio" name="sex" id="sex2" value="2" /><label for="sex2">女士</label>&nbsp;&nbsp;<span
                                        id="spLx" style="color: #aaa;">为了获得更好的服务，建议您填写姓氏</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>联系手机：
                        </th>
                        <td>
                            <input id="tSj" name="输入手机号码" onchange="fSjYz();" /><span id="spSj" style="color: #aaa;">为了方便和您取得联系，请保持手机畅通</span>
                        </td>
                    </tr>
                    <tr id="trZSj">
                        <th>
                            <span style="color: red;"></span>&nbsp;历史手机：
                        </th>
                        <td>
                            <span id="spSPh"></span><span id="SpZSj" style="color: #aaa;">您使用过的联系电话</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>到餐时间：
                        </th>
                        <td id="tbDts" style="text-align: left;">
                            <select id="tDtH1">
                            </select>点
                            <select id="tDtD1">
                                <option value="00">00</option>
                                <option value="30">30</option>
                            </select>分
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span style="color: red;">*</span>送餐地址：
                        </th>
                        <td>
                            <input id="tAd" name="填写送餐地址" style="width: 300px;" /><span id="spAd" style="color: #aaa;">请填写您是详细送餐地址</span>
                        </td>
                    </tr>
                    <tr id="trZAd">
                        <th>
                            <span style="color: red;"></span>&nbsp;历史地址：
                        </th>
                        <td>
                            <span id="spSAd"></span><span id="spZAd" style="color: #aaa;">您使用过的送餐地址</span>
                        </td>
                    </tr>
                    <tr id="trYzm">
                        <th>
                            <span style="color: red;">*</span>验 证 码：
                        </th>
                        <td>
                            <input id="tYzm" name="验证码" style="width: 60px;" maxlength="6" />&nbsp;&nbsp;<input
                                id="tHqYzm" onclick="fYzm()" class="tb_yz" type="button" value="获取验证码" />&nbsp;&nbsp;<span
                                    id="spYzm" style="color: #aaa;">为了确认您是手机真实请填写收到的6位验证码</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="dBrTm">
                            >> <b>给商家留言</b>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span>&nbsp;</span>其他要求：
                        </th>
                        <td colspan="2" style="padding-bottom: 5px;">
                            <textarea id="tMe" style="width: 400px; height: 40px; overflow: auto;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="dBrTm">
                            >> <b>支付</b>
                        </td>
                    </tr>
                    <tr>
                        <th style="padding: 17px 0 10px 40px;">
                            &nbsp;应付金额：
                        </th>
                        <td>
                            <span id="spZpr"></span><span style="color: Red; font-weight: bold;">元</span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="padding-left: 50px;">
                            <span id="spZhiFu"></span>
                            <div id="dZhif1" style="color: #888; display: none;">
                                <p>
                                    1.目前只支持支付宝在线支付。</p>
                                <p>
                                    2.支付成功后，系统会自动通知店家为您准备就餐服务。</p>
                                <p>
                                    3.您有任何问题请与我们联系：4000-78-4006 。</p>
                                <br>
                            </div>
                            <div id="dZhif2" style="color: #888; display: none;">
                                <p>
                                    1.您选择线下支付，订单信息会以短信方式发送给您。</p>
                                <p>
                                    2.店家会根据您的订单号和验证码进行确。
                                </p>
                                <p>
                                    3.您有任何问题请与我们联系：4000-78-4006。</p>
                                <br>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; padding: 8px; border: 1px solid #ddd;
                            background: #eee;">
                            当您在按下「同意提交」按钮时，则表示您已阅读并同意<a href="javascript:$.$Sd('dLst2');$.$Sd('dLst4',1);">点餐网支付条款</a>
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
                <a href="#" target="_blank">关于我们</a>|<a href="../Page_RegistServices.aspx" target="_blank">使用协议</a>|<a
                    href="../Page_Main.aspx" target="_blank">网站首页</a>|<a href="../Page_ContactUs.aspx"
                        target="_blank">联系我们</a>
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
