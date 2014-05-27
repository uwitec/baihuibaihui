using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SGManager_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 后台登陆
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //string Pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(this.txt_pwd.Text.Trim(), "md5");
        //bool falg = B_Admin.Getuser(txt_name.Text.Trim(), Pwd);
        //if (falg)
        //{
        //    Session["U_name"] = txt_name.Text.Trim();
        //    Response.Redirect("index.aspx");
        //}
        //else
        //{
        //    Response.Write("<script>alert('帐号或者密码错误');</script>");
        //} 
        if (txt_name.Text.Trim() == "admin" && this.txt_pwd.Text.Trim() == "123")
        {
            Session["adminuid"] = txt_name.Text.Trim();
            Response.Redirect("index.aspx");
        }

    }
}