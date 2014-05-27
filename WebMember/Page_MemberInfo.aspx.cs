using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Maticsoft.DBUtility;

public partial class WebMember_Page_MemberInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Meber_uid"] != null)
            {
                this.Label_uid.Text = Session["Meber_uid"].ToString();
                string sql = "SELECT * FROM [Member_info] WHERE [Memberuid]='" + this.Label_uid.Text.Trim() + "'";
                DataTable dt = DbHelperOleDb.Fill(sql);
                this.Label_Email.Text = dt.Rows[0]["Email"].ToString();
                this.Label_Tel.Text = dt.Rows[0]["Mobile"].ToString();
                this.Label_IP.Text = dt.Rows[0]["IP"].ToString();
                this.Label_time.Text = dt.Rows[0]["createtime"].ToString(); 
            }
            else
            {
                Response.Redirect("../WebMember/Page_MemberLogin.aspx");
            }
        }
    }
}