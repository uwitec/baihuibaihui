using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SGManager_index : System.Web.UI.Page
{
    private string username;

    public string Username
    {
        get { return username; }
        set { username = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["adminuid"] != null)
            {
                Username = Session["adminuid"].ToString();
            }
            else
            {
                Response.Redirect("../SGManager/Login.aspx");
            }
        }
    }
}