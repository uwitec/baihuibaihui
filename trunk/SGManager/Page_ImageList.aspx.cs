using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class SGManager_Page_ImageList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DirectoryInfo imagesfile = new DirectoryInfo(Server.MapPath("../system_dntb/upload"));
        //GridView1.DataSource = imagesfile.GetFiles("*.*");
        //GridView1.DataBind();
        if (!IsPostBack)
        {

            rptShowAllImages.DataSource = System.IO.Directory.GetFiles(MapPath("../images/")); ;
            rptShowAllImages.DataBind();
        }

    }

 
    protected void rptShowAllImages_ItemCreated(object sender, RepeaterItemEventArgs e)
    {
        if ((e.Item.ItemIndex + 1) % 6 == 0)
        {
            e.Item.Controls.Add(new LiteralControl("</tr><tr border=’1px’ style=’border:1px; border-color:Red’>"));

        }
    }
    protected void rptShowAllImages_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            FileInfo fi = new FileInfo(Server.MapPath("../images") + "\\" + e.CommandArgument.ToString());
            if (fi.Exists)
            {
                fi.Delete();
                //Response.Write("<script>alert('删除成功!')</script>");
                Response.Write("<script>window.location.href=window.location.href;</script>");
            }
        }
    }
}