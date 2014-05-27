using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Maticsoft.DBUtility;

public partial class WebBusiness_Page_BusinessHome_Preferential : System.Web.UI.Page
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
            if (Session["uid"] != null)
            {
                Businessid = Session["uid"].ToString();
                Label_uid.Text = Session["uid"].ToString();
                string sql = "select * from [T_Preferential] where [Businessuid]='" + Session["uid"].ToString() + "'";
                DataTable dt = DbHelperOleDb.Fill(sql);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }


        }
    }
}