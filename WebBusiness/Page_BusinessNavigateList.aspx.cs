using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Maticsoft.DBUtility;

public partial class WebBusiness_Page_BusinessNavigateList : System.Web.UI.Page
{
    private string count;

    public string Count
    {
        get { return count; }
        set { count = value; }
    }
    private int page;

    public int Page1
    {
        get { return page; }
        set { page = value; }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        object session = Session["Business_SuosuoCount"];
        if (session == null)
        {
            string sql = "select  count(*) from [Business_Suosuo]";
            Count = DB.FindString(sql);
            Session["Business_SuosuoCount"] = Count;
        }
        Paging();
        object obj = Request.QueryString["page"];
        if (!IsPostBack && obj == null)
        {

            if (Request.QueryString["BusinessGroup"] != null)
            {
                string sqlcount = "select count(*) from [Business_Suosuo] where [businessuid] in (select Businessuid from [Business_Info] where BusinessGroup='" + Request.QueryString["BusinessGroup"].ToString().Trim() + "') ";
                Count = DB.FindString(sqlcount);
                string sql = "select  top 10 * from [Business_Suosuo] where [businessuid] in (select Businessuid from [Business_Info] where BusinessGroup='" + Request.QueryString["BusinessGroup"].ToString().Trim() + "') ";
                DataTable dt = DbHelperOleDb.Fill(sql);
                repearter_shanghu.DataSource = dt;
                repearter_shanghu.DataBind();

            }
            if (Request.QueryString["BusinessAddress1"] != null)
            {
                string sqlcount = "select  count(*) from [Business_Suosuo] where [businessuid] in (select Businessuid from [Business_Info] where BusinessAddress1='" + Request.QueryString["BusinessAddress1"].ToString().Trim() + "') ";
                Count = DB.FindString(sqlcount);
                string sql = "select  top 10 * from [Business_Suosuo] where [businessuid] in (select Businessuid from [Business_Info] where BusinessAddress1='" + Request.QueryString["BusinessAddress1"].ToString().Trim() + "') ";
                DataTable dt = DbHelperOleDb.Fill(sql);
                repearter_shanghu.DataSource = dt;
                repearter_shanghu.DataBind();
            }
            if (Request.QueryString["BusinessAddress2"] != null)
            {
                string sqlcount = "select count(*) from [Business_Suosuo] where [businessuid] in (select Businessuid from [Business_Info] where BusinessAddress2='" + Request.QueryString["BusinessAddress2"].ToString().Trim() + "') ";
                Count = DB.FindString(sqlcount);
                string sql = "select  top 10 * from [Business_Suosuo] where [businessuid] in (select Businessuid from [Business_Info] where BusinessAddress2='" + Request.QueryString["BusinessAddress2"].ToString().Trim() + "') ";
                DataTable dt = DbHelperOleDb.Fill(sql);
                repearter_shanghu.DataSource = dt;
                repearter_shanghu.DataBind();

            }
            if (Request.QueryString["BusinessGroup"] == null && Request.QueryString["BusinessAddress1"] == null && Request.QueryString["BusinessAddress2"] == null)
            {
                string sqlcount = "select  count(*) from [Business_Suosuo]";
                Count = DB.FindString(sqlcount);
                string sql = "select  top 10 * from [Business_Suosuo] ";
                DataTable dt = DbHelperOleDb.Fill(sql);
                repearter_shanghu.DataSource = dt;
                repearter_shanghu.DataBind();
            }

        }
    }
    /// <summary>
    /// 搜索事件 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim() != "")
        {
            DataTable dt = new DataTable();
            string sql = "select  * from [Business_Suosuo] where [Businessmc] like '%" + TextBox1.Text.Trim().Trim() + "%'";
            dt = DbHelperOleDb.Fill(sql);
            if (dt.Rows.Count == 0)
            {
                string sql2 = "select  * from [Business_Suosuo] where [Businessaddress] like '%" + TextBox1.Text.Trim().Trim() + "%'";
                dt = DbHelperOleDb.Fill(sql2);
            }
            if (dt.Rows.Count == 0)
            {
                string sql3 = "select  * from [Business_Suosuo] where [jianjie] like '%" + TextBox1.Text.Trim().Trim() + "%'";
                dt = DbHelperOleDb.Fill(sql3);
            }

            repearter_shanghu.DataSource = dt;
            repearter_shanghu.DataBind();
        }

    }
    /// <summary>
    /// 搜索优惠的事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim() != "")
        {
            DataTable dt = new DataTable();
            string sql = "select  * from [Business_Suosuo] where [Businessmc] like '%" + TextBox1.Text.Trim().Trim() + "%'";
            dt = DbHelperOleDb.Fill(sql);
            if (dt.Rows.Count == 0)
            {
                string sql2 = "select  * from [Business_Suosuo] where [Businessaddress] like '%" + TextBox1.Text.Trim().Trim() + "%'";
                dt = DbHelperOleDb.Fill(sql2);
            }
            if (dt.Rows.Count == 0)
            {
                string sql3 = "select  * from [Business_Suosuo] where [jianjie] like '%" + TextBox1.Text.Trim().Trim() + "%'";
                dt = DbHelperOleDb.Fill(sql3);
            }

            repearter_shanghu.DataSource = dt;
            repearter_shanghu.DataBind();
        }

    }

    private void Paging()
    {
        int pageSize = 5;
        object session = Session["Business_SuosuoCount"];
        int sum = Convert.ToInt32(session) / pageSize+1;
        object obj = Request.QueryString["page"];
        int page = 0;
        if (obj != null)
        {
            if (!int.TryParse(obj.ToString(), out page))
            {
                page = 1;
            }
        }
        else
        {
            page = 1;
        }
        if (page > sum)
        {
            page = 1;
        }
        string sql = "SELECT TOP " + pageSize + " * FROM  (SELECT TOP " + pageSize * page + " * FROM Business_Suosuo ORDER BY id DESC) ORDER BY id asc";
        DataTable dt = DbHelperOleDb.Fill(sql);
        repearter_shanghu.DataSource = dt;
        repearter_shanghu.DataBind();
    }
}