using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["text"] != "")
            {
                string sql = "SELECT pagecontent FROM [Web_Pages] WHERE pagetitle='" + Request.QueryString["text"].ToString().Trim() + "'";
                Literal1.Text = DB.FindString(sql);
            } 
        }
    }
}