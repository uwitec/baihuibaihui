using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.DBUtility;

public partial class SGManager_Page_WebHtmlAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.CKEditor1.Text = "";
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        //string sql = "SELECT Thtml FROM [T_HTML] WHERE TID='" + DropDownList1.SelectedValue + "'";
        //CKEditor1.Text = DB.FindString(sql);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

        string sql = "INSERT INTO Web_Pages(createtime,pageid,pagetitle,pagecontent) VALUES('" + DateTime.Now.ToString() + "','" + GetGuid.Guid() + "','" + TextBox1.Text.Trim() + "','" + CKEditor1.Text + "')";
        DB.execnonsql(sql);
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        this.CKEditor1.Text = "";
    }
}