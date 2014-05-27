using System;
using System.Collections.Generic;
using System.Web;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;

/// <summary>
///PageOperate 的摘要说明
/// </summary>
public class PageOperate
{
    public PageOperate()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }

    /// <summary>
    /// 截取字符串
    /// </summary>
    /// <param name="obj">字符串</param>
    /// <param name="num">截取的长度</param>
    /// <returns></returns>
    public static string CutString(Object obj, int num)
    {
        if (obj == null)
            return "";
        if (obj.ToString().Length == 0)
            return "";
        if (obj.ToString().Length > num)
            return obj.ToString().Substring(0, num) + "...";
        else
            return obj.ToString();
    }

    /// <summary>
    /// 是null就返回空，否则返回原字符串
    /// </summary>
    /// <param name="str">需要处理的字符串</param>
    /// <returns>转换后的值</returns>
    public static string GetNullToString(object o)
    {
        try
        {
            if (o == null)
                return "";
            else
                return o.ToString();
        }
        catch
        {
            return "";
        }
    }

    /// <summary>
    /// 将字符串转换成int型，若字符串为空，返回0
    /// </summary>
    /// <param name="str">要转换的字符串</param>
    /// <returns>转后的int值</returns>
    public static int GetIntValue(object o)
    {
        try
        {
            if (o == null)
                return 0;
            if ((o.ToString()).Length == 0)
                return 0;
            else
            {
                if (Int32.Parse(o.ToString()) == 0)
                    return 0;
                else
                    return Int32.Parse(o.ToString());
            }
        }
        catch
        {
            return 0;
        }
    }

    /// <summary>
    /// 将字符串转换成decimal型，若字符串为空，返回0
    /// </summary>
    /// <param name="str">要转换的字符串</param>
    /// <returns>转后的decimal值</returns>
    public static decimal GetDecimal(object o)
    {
        try
        {
            if (o == null)
                return 0;
            if ((o.ToString()).Length == 0)
                return 0;
            else
            {
                if (decimal.Parse(o.ToString()) == 0)
                    return 0;
                else
                    return decimal.Parse(o.ToString());
            }
        }
        catch
        {
            // WriteMessage("数据转换失败，请检查数据是否合理！", true, true);
            return 0;
        }
    }

    /// <summary>
    /// 弹出JavaScript小窗口,并转向指定的页面
    /// </summary>
    /// <param name="msg">弹出信息</param>
    /// <param name="toURL">专转向的网页</param>
    public static void AlertAndRedirect(string msg, string toURL)
    {
        string js = "<script language=javascript>alert('{0}');window.location.replace('{1}')</script>";
        HttpContext.Current.Response.Write(string.Format(js, msg, toURL));
    }

    /// <summary>
    /// 过滤html标记
    /// </summary>
    /// <param name="HTMLStr">要过滤的字符串</param>
    /// <returns>string</returns>
    public static string CutHTML(string strHtml)
    {
        Regex htmlReg = new Regex(@"<[^>]+>", RegexOptions.Compiled | RegexOptions.IgnoreCase);
        Regex htmlSpaceReg = new Regex("\\&nbsp\\;", RegexOptions.Compiled | RegexOptions.IgnoreCase);
        Regex spaceReg = new Regex("\\s{2,}|\\ \\;", RegexOptions.Compiled | RegexOptions.IgnoreCase);
        Regex styleReg = new Regex(@"<style(.*?)</style>", RegexOptions.Compiled | RegexOptions.IgnoreCase);
        Regex scriptReg = new Regex(@"<script(.*?)</script>", RegexOptions.Compiled | RegexOptions.IgnoreCase);
        strHtml = styleReg.Replace(strHtml, string.Empty);
        strHtml = scriptReg.Replace(strHtml, string.Empty);
        strHtml = htmlReg.Replace(strHtml, string.Empty);
        strHtml = htmlSpaceReg.Replace(strHtml, " ");
        strHtml = spaceReg.Replace(strHtml, " ");
        return strHtml.Trim();
    }
}