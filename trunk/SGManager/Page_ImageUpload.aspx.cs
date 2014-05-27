using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SGManager_Page_ImageUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_upload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                FileUpload1.SaveAs(Server.MapPath("../css/images/") + "\\" + FileUpload1.FileName);
                Response.Write("<script>alert('上传成功')</script>");
                Response.AddHeader("Refresh", "0");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "!')</script>");

            }
        }
        else
        {
            Response.Write("<script>alert('请选择需要上传的文件!')</script>");

        }
    }
}