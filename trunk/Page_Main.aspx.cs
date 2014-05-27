using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Maticsoft.DBUtility;

public partial class Page_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "select top 12 * from [Business_Info] where [shenhe]='已审核' order by [createtime] desc ";
            DataTable dt = DbHelperOleDb.Fill(sql);
            Repeater_BusinessNew.DataSource = dt;
            Repeater_BusinessNew.DataBind();

            string sql1 = "select top 10 * from [T_Preferential] where [shenhe]='已审核' order by [creatime] desc ";
            DataTable dt1 = DbHelperOleDb.Fill(sql1);
            repeater_yh.DataSource = dt1;
            repeater_yh.DataBind();


            string sql2 = "select top 10 * from [Member_info]  order by [createtime] desc ";
            DataTable dt2 = DbHelperOleDb.Fill(sql2);
            Repeater2.DataSource = dt2;
            Repeater2.DataBind();
        }
    }
}