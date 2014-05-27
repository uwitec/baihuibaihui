using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SGManager_Page_Business_check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 成功审核
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "update [Business_Info] set shenhe='已审核' where Businessuid='" + TextBox1.Text.Trim() + "'";
        DB.execnonsql(sql);
        Response.Write("<script>window.location.href=window.location.href;</script>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "update [Business_Info] set shenhe='待审核' where Businessuid='" + TextBox1.Text.Trim() + "'";
        DB.execnonsql(sql);
        Response.Write("<script>window.location.href=window.location.href;</script>");
    }
}