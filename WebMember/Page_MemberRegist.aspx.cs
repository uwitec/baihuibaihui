using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Maticsoft.DBUtility;
using DotNet.Utilities;

public partial class WebMember_Page_MemberRegist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /// <summary>
    /// 注册按钮的实现
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        string bsql = "select count(*) from [Member_info] where Memberuid='" + TextBox1.Text.Trim() + "'";
        string flag = DB.FindString(bsql);
        if (Convert.ToInt32(flag) > 0)
        {
            MessageBox.Show(this, TextBox1.Text.Trim() + "，该商户名称已经存在.请使用其他名称");
            TextBox1.Focus();
            return;
        }
        else
        { 
            if (CheckBox_xieyi.Checked)
            {
                //IpHelper.GetUserIp()
                string sql = "insert into [Member_info](Memberuid,Memberpwd,Email,Mobile,IP,createtime,Memberid) values('"+TextBox1.Text.Trim()+"','"+TextBox2.Text.Trim()+"','"+TextBox3.Text.Trim()+"','"+TextBox4.Text.Trim()+"','"+IpHelper.GetUserIp()+"','"+DateTime.Now.ToString()+"','"+GetGuid.Guid()+"')";
                int result = DbHelperOleDb.ExecuteSql(sql);
                if (result > 0)
                {
                    Session["Meber_uid"] = this.TextBox1.Text;
                    MessageBox.Show(this, "会员注册成功！");
                    Response.Redirect("../WebMember/Page_MemberInfo.aspx");
                }
            }
            else
            {
                MessageBox.Show(this, "您必须同意协议,才可以进行下一步.");
            }
        }

     
    }
}