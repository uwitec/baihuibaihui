using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Maticsoft.DBUtility;

public partial class WebBusiness_Page_Business_Preferential_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "select top 10 * from [T_Preferential] where [shenhe]='已审核' order by [creatime] desc ";
            DataTable dt = DbHelperOleDb.Fill(sql);
            repeater1.DataSource = dt;
            repeater1.DataBind();
        }
    } 
}