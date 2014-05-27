using System;
using System.Text;


	/// <summary>
	/// ��ʾ��Ϣ��ʾ�Ի���
	/// ����ƽ
	/// 2005.10.1
	/// </summary>
	public class MessageBox
	{		
		private  MessageBox()
		{			
		}

		/// <summary>
		/// ��ʾ��Ϣ��ʾ�Ի���
		/// </summary>
		/// <param name="page">��ǰҳ��ָ�룬һ��Ϊthis</param>
		/// <param name="msg">��ʾ��Ϣ</param>
		public static void  Show(System.Web.UI.Page page,string msg)
		{
			page.RegisterStartupScript("message","<script language='javascript' defer>alert('"+msg.ToString()+"');</script>");
		}

		/// <summary>
		/// �ؼ���� ��Ϣȷ����ʾ��
		/// </summary>
		/// <param name="page">��ǰҳ��ָ�룬һ��Ϊthis</param>
		/// <param name="msg">��ʾ��Ϣ</param>
		public static void  ShowConfirm(System.Web.UI.WebControls.WebControl Control,string msg)
		{
			//Control.Attributes.Add("onClick","if (!window.confirm('"+msg+"')){return false;}");
			Control.Attributes.Add("onclick", "return confirm('" + msg + "');") ;
		}

		/// <summary>
		/// ��ʾ��Ϣ��ʾ�Ի��򣬲�����ҳ����ת
		/// </summary>
		/// <param name="page">��ǰҳ��ָ�룬һ��Ϊthis</param>
		/// <param name="msg">��ʾ��Ϣ</param>
		/// <param name="url">��ת��Ŀ��URL</param>
		public static void ShowAndRedirect(System.Web.UI.Page page,string msg,string url)
		{
			StringBuilder Builder=new StringBuilder();
			Builder.Append("<script language='javascript' defer>");
			Builder.AppendFormat("alert('{0}');",msg);
			Builder.AppendFormat("top.location.href='{0}'",url);
			Builder.Append("</script>");
			page.RegisterStartupScript("message",Builder.ToString());

		}
		public static void ShowConfirmAndRedirect(System.Web.UI.Page page,string msg,string url)
		{
			StringBuilder Builder=new StringBuilder();
			Builder.Append("<script language='javascript' defer>");
			Builder.AppendFormat("return confirm(('{0}');",msg);//5+1+a+s+p+x
			Builder.AppendFormat("top.location.href='{0}'",url);
			Builder.Append("</script>");
			page.RegisterStartupScript("message",Builder.ToString());

		}
		/// <summary>
		/// ����Զ���ű���Ϣ
		/// </summary>
		/// <param name="page">��ǰҳ��ָ�룬һ��Ϊthis</param>
		/// <param name="script">����ű�</param>
		public static void ResponseScript(System.Web.UI.Page page,string script)
		{
			page.RegisterStartupScript("message","<script language='javascript' defer>"+script+"</script>");
		}
        /// <summary>
        /// ����Զ���ű���Ϣ
        /// </summary>
        /// <param name="page">��ǰҳ��ָ�룬һ��Ϊthis</param>
        /// <param name="script">����ű�</param>
        public static void ResponseScript(string script)
        {
         System.Web.HttpContext.Current.Response.Write("<script language='javascript' defer>" + script + "</script>");
        }
		/// <summary>
		/// ��ý���
		/// </summary>
		/// <param name="ctrl">�ؼ�����this.TextBox��</param>
		/// <param name="page">this.page</param>
		public static void SetFocus(System.Web.UI.Control ctrl,System.Web.UI.Page page)
		{
			string s = "<SCRIPT language='javascript' defer>document.getElementById('" + ctrl.ID + "').focus() </SCRIPT>";
			page.RegisterStartupScript( "focus", s );		//5+1+a+s+p+x
									                        
		}

       
    }
