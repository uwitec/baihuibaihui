using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Maticsoft.DBUtility;
using DotNet.Utilities;

public partial class WebBusiness_Page_BusinessRegist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList_dizhi_SelectedIndexChanged1(null, null);
        }
    }
    /// <summary>
    /// 商家申请注册，后台管理进行审核。
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button_submit_Click(object sender, EventArgs e)
    {
        string bsql = "select count(*) from [Business_Info] where Businessuid='" + TextBox_zhanghu.Text.Trim() + "'";
        string flag = DB.FindString(bsql);
        if (Convert.ToInt32(flag) > 0)
        {
            MessageBox.Show(this, TextBox_zhanghu.Text.Trim() + "，该商户名称已经存在.请使用其他名称");
            TextBox_zhanghu.Focus();
            return;
        }
        else
        {


            if (CheckBox_xieyi.Checked)
            {
                string youhui = "";
                if (RadioButton_true.Checked)
                {
                    youhui = "1";
                }
                else
                {
                    youhui = "0";
                }
                string shanghuleibie = "";
                for (int i = 0; i < RadioButtonList1.Items.Count; i++)
                {
                    if (RadioButtonList1.Items[i].Selected)
                    {
                        shanghuleibie = RadioButtonList1.Items[i].Value;
                    }
                }
                string sql = "insert into [Business_Info](Businessid,Businessuid,Businesspwd,BusinessName,BusinessTel,Businessphone,BusinessGroup,BusinessAddress1,BusinessAddress2,BusinessYH,ip,createtime,shenhe) values('" + GetGuid.Guid() + "','" + TextBox_zhanghu.Text.Trim() + "','" + TextBox_mima.Text.Trim() + "','" + TextBox_shanghumingcheng.Text.Trim() + "','" + TextBox_dianhua.Text.Trim() + "','" + TextBox_shouji.Text.Trim() + "','" + shanghuleibie + "','" + DropDownList_dizhi.Text.Trim() + "','" + DropDownList2.Text.Trim() + "','" + youhui + "','" + IpHelper.GetUserIp() + "','" + DateTime.Now.ToString() + "','待审核')";
                int result = DbHelperOleDb.ExecuteSql(sql);
                if (result > 0)
                {
                    MessageBox.Show(this, "商户注册成功！请您等待管理员进行审核.");

                    Response.Redirect("../Page_Main.aspx");
                }
            }
            else
            {
                MessageBox.Show(this, "您必须同意协议,才可以进行下一步.");
            }
        }
    }
    /// <summary>
    /// 检测用户名是否存在
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //变化

        DataTable dt = new DataTable();

    }

    protected void DropDownList_dizhi_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string sql = "select * from [Domain_Address] where [SAddressid]='" + DropDownList_dizhi.SelectedValue + "'";
        DataTable dt = DbHelperOleDb.Fill(sql);
        DropDownList2.DataSource = dt;
        DropDownList2.DataTextField = "AddressName";
        DropDownList2.DataValueField = "Addressid";
        DropDownList2.DataBind();
    }
}