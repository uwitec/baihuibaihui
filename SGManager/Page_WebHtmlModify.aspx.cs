using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.DBUtility;

public partial class SGManager_Page_WebHtmlModify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "UPDATE [Web_Pages] SET [pagecontent]='" + CKEditor1.Text + "' WHERE pagetitle='" + DropDownList1.SelectedValue + "'";
        DbHelperOleDb.ExecuteSql(sql);
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        this.CKEditor1.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string sql = "SELECT pagecontent FROM [Web_Pages] WHERE pagetitle='" + DropDownList1.SelectedValue + "'";
        CKEditor1.Text = DB.FindString(sql);
    }
}