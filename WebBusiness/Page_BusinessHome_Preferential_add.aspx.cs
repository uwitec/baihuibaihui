using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.DBUtility;

public partial class WebBusiness_Page_BusinessHome_Preferential_add : System.Web.UI.Page
{
    private string Businessid;

    public string Businessid1
    {
        get { return Businessid; }
        set { Businessid = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.Text = DateTime.Now.Month.ToString();
            DropDownList5.Text = DateTime.Now.Month.ToString();
            DropDownList3.Text = DateTime.Now.Day.ToString();
            DropDownList6.Text = Convert.ToString(DateTime.Now.Day + 1);
            if (Session["uid"] != null)
            {
                Businessid = Session["uid"].ToString();
                this.Label_uid.Text = Session["uid"].ToString();
            }
            else
            {
                Response.Redirect("../WebBusiness/Page_BusinessLogin.aspx");
            }
        }
    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        string starttime = DropDownList1.Text + "-" + DropDownList2.Text + "-" + DropDownList3.Text;
        string endtime = DropDownList4.Text + "-" + DropDownList5.Text + "-" + DropDownList6.Text;
        string sql = "insert into [T_Preferential](starttime,endtime,ptitle,pcontent,Businessuid,creatime,shenhe) values('" + starttime + "','" + endtime + "','" + TextBox2.Text.Trim() + "','" + CKEditorControl1.Text + "','" + Label_uid.Text + "','" + DateTime.Now.ToString() + "','待审核')";
        int result = DbHelperOleDb.ExecuteSql(sql);
        if (result > 0)
        {
            MessageBox.Show(this, "已经成功提交网站审核。");
            Response.Write("<script>window.location.href=window.location.href;</script>");
        }
    }
}