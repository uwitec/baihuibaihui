using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.DBUtility;
using System.Data;

public partial class WebBusiness_Page_BusinessManager : System.Web.UI.Page
{
    private string Businessid;

    public string Businessid1
    {
        get { return Businessid; }
        set { Businessid = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //绑定是否显示优惠

        if (!IsPostBack)
        {
            if (Session["uid"] != null)
            {
                string isxianshi = "SELECT * from [T_Preferential] where [Businessuid]='" + Session["uid"].ToString() + "'";
                DataTable dtyh = DbHelperOleDb.Fill(isxianshi);
                DropDownList_yh.DataSource = dtyh;
                DropDownList_yh.DataValueField = "ptitle";
                DropDownList_yh.DataTextField = "ptitle";
                DropDownList_yh.DataBind();
                Businessid = Session["uid"].ToString();
                //this.Label_uid.Text = Session["uid"].ToString();
                //查询表中是否有记录，有责update,无则添加
                string sql = "select count(*) from [Business_Suosuo] where businessuid='" + Session["uid"].ToString() + "'";
                string records = DB.FindString(sql);
                //Response.Write(records);
                // 添加
                if (Convert.ToInt32(records) > 0)
                {
                    string selectsql = "select  * from [Business_Suosuo] where businessuid='" + Session["uid"].ToString() + "'";
                    DataTable dt = DbHelperOleDb.Fill(selectsql);
                    TextBox_Businessmc.Text = dt.Rows[0]["Businessmc"].ToString();
                    //FileUpload_Image.FileName = dt.Rows[0]["Businessimg"].ToString();
                    TextBox_address.Text = dt.Rows[0]["Businessaddress"].ToString();
                    TextBox_tel.Text = dt.Rows[0]["tel"].ToString();
                    TextBox_jj.Text = dt.Rows[0]["jianjie"].ToString();
                    DropDownList_yh.Text = dt.Rows[0]["xianshiyouhui"].ToString();
                }

                string sqlindex = "select count(*) from [Business_Index] where businessuid='" + Session["uid"].ToString() + "'";
                string recordsindex = DB.FindString(sql);
                if (Convert.ToInt32(recordsindex) > 0)
                {
                    string selectsql = "select  * from [Business_Index] where businessuid='" + Session["uid"].ToString() + "'";
                    DataTable dt = DbHelperOleDb.Fill(selectsql);
                    TextBox_jianjie.Text = dt.Rows[0]["jianjie"].ToString();
                    TextBox_zhuying.Text = dt.Rows[0]["zhuying"].ToString();
                    TextBox_biaoqian.Text = dt.Rows[0]["biaoqian"].ToString();
                    TextBox_baidu.Text = dt.Rows[0]["baiducodes"].ToString();
                    CKEditorControl1.Text = dt.Rows[0]["shanghuneirong"].ToString();
                }


            }
            else
            {
                Response.Redirect("../WebBusiness/Page_BusinessLogin.aspx");
            }
        }
    }
    protected void Button_submit_Click(object sender, EventArgs e)
    {


        //查询表中是否有记录，有责update,无则添加
        string sql = "select count(*) from [Business_Index] where businessuid='" + Session["uid"].ToString() + "'";
        string records = DB.FindString(sql);
        // 添加
        if (Convert.ToInt32(records) == 0)
        {
            string[] huozhui = FileUpload_shouye.FileName.Split('.');
            string file = GetGuid.Guid() + "." + huozhui[1];
            FileUpload_shouye.SaveAs(Server.MapPath("../material") + "\\" + file);
            string[] huozhui1 = FileUpload_shijing.FileName.Split('.');
            string file1 = GetGuid.Guid() + "." + huozhui1[1];
            FileUpload_shijing.SaveAs(Server.MapPath("../material") + "\\" + file1);
            string addsql = "insert into [Business_Index]([image],[bgimage],[jianjie],[zhuying],[biaoqian],[baiducodes],[shanghuneirong],[businessuid]) values('" + file + "','" + file1 + "','" + TextBox_jianjie.Text.Trim() + "','" + TextBox_zhuying.Text.Trim() + "','" + TextBox_biaoqian.Text.Trim() + "','" + TextBox_baidu.Text + "','" + CKEditorControl1.Text + "','" + Session["uid"].ToString() + "')";
            DB.execnonsql(addsql);
            Response.AddHeader("Refresh", "0");
        }
        else
        {
            if (FileUpload_shouye.FileName != "" && FileUpload_shijing.FileName != "")
            {
                string[] huozhui = FileUpload_shouye.FileName.Split('.');
                string file = GetGuid.Guid() + "." + huozhui[1];
                FileUpload_shouye.SaveAs(Server.MapPath("../material") + "\\" + file);
                string[] huozhui1 = FileUpload_shijing.FileName.Split('.');
                string file1 = GetGuid.Guid() + "." + huozhui1[1];
                FileUpload_shijing.SaveAs(Server.MapPath("../material") + "\\" + file1);
                string addsql = "update [Business_Index] set [image]='" + file + "',[bgimage]='" + file1 + "',[jianjie]='" + TextBox_jianjie.Text.Trim().Replace("'", "") + "',[zhuying]='" + TextBox_zhuying.Text.Trim().Replace("'", "") + "',[biaoqian]='" + TextBox_biaoqian.Text.Trim().Replace("'", "") + "',[baiducodes]='" + TextBox_baidu.Text + "',[shanghuneirong]='" + CKEditorControl1.Text.Replace("'", "") + "' where [businessuid]='" + Session["uid"].ToString() + "'";
                DB.execnonsql(addsql);
                Response.AddHeader("Refresh", "0");
            }
            if (FileUpload_shijing.FileName == "" && FileUpload_shouye.FileName != "")
            {
                string[] huozhui = FileUpload_shouye.FileName.Split('.');
                string file = GetGuid.Guid() + "." + huozhui[1];
                FileUpload_shouye.SaveAs(Server.MapPath("../material") + "\\" + file);
                string addsql = "update [Business_Index] set [image]='" + file + "',[jianjie]='" + TextBox_jianjie.Text.Trim().Replace("'", "") + "',[zhuying]='" + TextBox_zhuying.Text.Trim().Replace("'", "") + "',[biaoqian]='" + TextBox_biaoqian.Text.Trim().Replace("'", "") + "',[baiducodes]='" + TextBox_baidu.Text + "',[shanghuneirong]='" + CKEditorControl1.Text.Replace("'", "") + "' where [businessuid]='" + Session["uid"].ToString() + "'";
                DB.execnonsql(addsql);
                Response.AddHeader("Refresh", "0");
            }
            if (FileUpload_shouye.FileName == "" && FileUpload_shijing.FileName != "")
            {
                string[] huozhui1 = FileUpload_shijing.FileName.Split('.');
                string file1 = GetGuid.Guid() + "." + huozhui1[1];
                FileUpload_shijing.SaveAs(Server.MapPath("../material") + "\\" + file1);
                string addsql = "update [Business_Index] set [bgimage]='" + file1 + "',[jianjie]='" + TextBox_jianjie.Text.Trim().Replace("'", "") + "',[zhuying]='" + TextBox_zhuying.Text.Trim().Replace("'", "") + "',[biaoqian]='" + TextBox_biaoqian.Text.Trim().Replace("'", "") + "',[baiducodes]='" + TextBox_baidu.Text + "',[shanghuneirong]='" + CKEditorControl1.Text.Replace("'", "") + "' where [businessuid]='" + Session["uid"].ToString() + "'";
                DB.execnonsql(addsql);
                Response.AddHeader("Refresh", "0");
            } if (FileUpload_shouye.FileName == "" && FileUpload_shijing.FileName == "")
            {
                string addsql = "update [Business_Index] set [jianjie]='" + TextBox_jianjie.Text.Trim().Replace("'", "") + "',[zhuying]='" + TextBox_zhuying.Text.Trim().Replace("'", "") + "',[biaoqian]='" + TextBox_biaoqian.Text.Trim().Replace("'", "") + "',[baiducodes]='" + TextBox_baidu.Text + "',[shanghuneirong]='" + CKEditorControl1.Text.Replace("'", "") + "' where [businessuid]='" + Session["uid"].ToString() + "'";
                DB.execnonsql(addsql);
                Response.AddHeader("Refresh", "0");
            }

        }
    }

    protected void Button_ClearDH_Click(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 商户搜索配置导航 添加信息
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button_SaveSH_Click(object sender, EventArgs e)
    {
        //查询表中是否有记录，有责update,无则添加
        string sql = "select count(*) from [Business_Suosuo] where businessuid='" + Session["uid"].ToString() + "'";
        string records = DB.FindString(sql);
        // 添加
        if (Convert.ToInt32(records) == 0)
        {
            string[] huozhui = FileUpload_Image.FileName.Split('.');
            string file = GetGuid.Guid() + "." + huozhui[1];
            FileUpload_Image.SaveAs(Server.MapPath("../material") + "\\" + file);
            string addsql = "insert into [Business_Suosuo](Businessmc,Businessimg,Businessaddress,tel,jianjie,xianshiyouhui,businessuid) values('" + TextBox_Businessmc.Text.Trim() + "','" + file + "','" + TextBox_address.Text.Trim() + "','" + TextBox_tel.Text.Trim() + "','" + TextBox_jj.Text.Trim() + "','" + DropDownList_yh.Text + "','" + Session["uid"].ToString() + "')";
            DB.execnonsql(addsql);
            Response.AddHeader("Refresh", "0");
        }
        else// 编辑
        {
            if (FileUpload_Image.FileName != "")
            {
                string[] huozhui = FileUpload_Image.FileName.Split('.');
                string file = GetGuid.Guid() + "." + huozhui[1];
                FileUpload_Image.SaveAs(Server.MapPath("../material") + "\\" + file);
                string addsql = "update  [Business_Suosuo] set Businessmc='" + TextBox_Businessmc.Text.Trim() + "',Businessimg='" + file + "',Businessaddress='" + TextBox_address.Text.Trim() + "',tel='" + TextBox_tel.Text.Trim() + "',jianjie='" + TextBox_jj.Text.Trim() + "',xianshiyouhui='" + DropDownList_yh.Text + "'  where businessuid='" + Session["uid"].ToString() + "'";
                DB.execnonsql(addsql);
                Response.AddHeader("Refresh", "0");
            }
            else
            {
                string addsql = "update  [Business_Suosuo] set Businessmc='" + TextBox_Businessmc.Text.Trim() + "',Businessaddress='" + TextBox_address.Text.Trim() + "',tel='" + TextBox_tel.Text.Trim() + "',jianjie='" + TextBox_jj.Text.Trim() + "',xianshiyouhui='" + DropDownList_yh.Text + "'  where businessuid='" + Session["uid"].ToString() + "'";
                DB.execnonsql(addsql);
                Response.AddHeader("Refresh", "0");
            }
        }
    }

    /// <summary>
    /// 清空
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button_ClearSH_Click(object sender, EventArgs e)
    {

    }
}