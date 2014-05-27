using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.DBUtility;
using System.Data;

public partial class WebBusiness_Page_BusinessHome : System.Web.UI.Page
{
    private string jianjie;

    public string Jianjie
    {
        get { return jianjie; }
        set { jianjie = value; }
    }
    private string zhuying;

    public string Zhuying
    {
        get { return zhuying; }
        set { zhuying = value; }
    }
    private string biaoqian;

    public string Biaoqian
    {
        get { return biaoqian; }
        set { biaoqian = value; }
    }
    private string baiducodes;

    public string Baiducodes
    {
        get { return baiducodes; }
        set { baiducodes = value; }
    }
    private string shanghunneirong;

    public string Shanghunneirong
    {
        get { return shanghunneirong; }
        set { shanghunneirong = value; }
    }
    private string businessmc;

    public string Businessmc
    {
        get { return businessmc; }
        set { businessmc = value; }
    }
    private string Businessaddress;

    public string Businessaddress1
    {
        get { return Businessaddress; }
        set { Businessaddress = value; }
    }
    private string tel;

    public string Tel
    {
        get { return tel; }
        set { tel = value; }
    }
    private string xianshiyouhui;

    public string Xianshiyouhui
    {
        get { return xianshiyouhui; }
        set { xianshiyouhui = value; }
    }
    private string bgimage;

    public string Bgimage
    {
        get { return bgimage; }
        set { bgimage = value; }
    }
    private string smallimage;

    public string Smallimage
    {
        get { return smallimage; }
        set { smallimage = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            if (Request.QueryString["Businessid"] != "")
            {
                string selectsql = "select  * from [Business_Index] where businessuid='" + Request.QueryString["Businessid"].ToString() + "'";
                DataTable dt = DbHelperOleDb.Fill(selectsql);
                string selectsql1 = "select  * from [Business_Suosuo] where businessuid='" + Request.QueryString["Businessid"].ToString() + "'";
                DataTable dt1 = DbHelperOleDb.Fill(selectsql1);

                Jianjie = dt.Rows[0]["jianjie"].ToString();
                Zhuying = dt.Rows[0]["zhuying"].ToString();
                Biaoqian = dt.Rows[0]["biaoqian"].ToString();
                Baiducodes = dt.Rows[0]["baiducodes"].ToString();
                Shanghunneirong = dt.Rows[0]["shanghuneirong"].ToString();
                Smallimage = dt.Rows[0]["bgimage"].ToString();
                Bgimage = dt.Rows[0]["image"].ToString();

                Businessmc = dt1.Rows[0]["Businessmc"].ToString();
                Businessaddress1 = dt1.Rows[0]["Businessaddress"].ToString();
                Tel = dt1.Rows[0]["tel"].ToString();
                Xianshiyouhui = dt1.Rows[0]["xianshiyouhui"].ToString();

            }
            else
            {
                Response.Redirect("../WebBusiness/Page_BusinessLogin.aspx");
            }
        }
    }
}