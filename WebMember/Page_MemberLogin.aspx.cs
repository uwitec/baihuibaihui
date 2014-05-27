using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebMember_Page_MemberLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Meber_uid"] != null)
            {
                Response.Redirect("../WebMember/Page_MemberInfo.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "select count(*) from [Member_info] where Memberuid='" + TextBox1.Text.Trim() + "' and Memberpwd='" + TextBox2.Text.Trim() + "'";
        String i = DB.FindString(sql);

        if (Convert.ToInt32(i) > 0)
        {
            MessageBox.Show(this, "登陆成功");
            Session["Meber_uid"] = this.TextBox1.Text;
            Response.Redirect("../WebMember/Page_MemberInfo.aspx");

        }
        else
        {
            MessageBox.Show(this, "账号密码错误");
        }
    }
}