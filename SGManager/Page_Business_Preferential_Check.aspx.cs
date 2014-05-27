using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SGManager_Page_Business_Preferential_Check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    /// <summary>
    /// 添加审核
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "update [T_Preferential] set shenhe='已审核' where ID='" + TextBox1.Text.Trim() + "'";
        DB.execnonsql(sql);
        Response.Write("<script>window.location.href=window.location.href;</script>");
    }

    /// <summary>
    /// 删除审核
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "update [T_Preferential] set shenhe='待审核' where ID='" + TextBox1.Text.Trim() + "'";
        DB.execnonsql(sql);
        Response.Write("<script>window.location.href=window.location.href;</script>");
    }
}