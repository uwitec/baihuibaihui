using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.DBUtility;

public partial class WebBusiness_Page_BusinessLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (Session["uid"] != null)
            //{
            //    Response.Redirect("../WebBusiness/Page_BusinessManager.aspx");
            //}
        }
    }
    /// <summary>
    /// 用户注册
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "select count(*) from [Business_Info] where Businessuid='" + TextBox_uid.Text.Trim() + "' and Businesspwd='" + TextBox_pwd.Text.Trim() + "' and shenhe='已审核'";
        String i = DB.FindString(sql);

        if (Convert.ToInt32(i) > 0)
        {
            MessageBox.Show(this, "登陆成功");
            Session["uid"] = this.TextBox_uid.Text;
            Response.Redirect("../WebBusiness/Page_BusinessManager.aspx");

        }
        else
        {
            MessageBox.Show(this, "账号密码错误");
        }
    }
}