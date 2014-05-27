using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SGManager_Page_WebLink : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 添加
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "INSERT INTO [lianjie] ([linkname], [link]) VALUES ('" + TextBox_linkname.Text.Trim() + "','" + TextBox_link.Text.Trim() + "')";
        DB.execnonsql(sql);
        Response.Write("<script>window.location.href=window.location.href;</script>");
    }
}