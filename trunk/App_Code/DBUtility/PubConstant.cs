using System;
using System.Configuration;
namespace Maticsoft.DBUtility
{
    
    public class PubConstant
    {
        static string appPath = System.Web.HttpContext.Current.Request.ApplicationPath;
        /// <summary>
        /// ��ȡ�����ַ���
        /// </summary>
        public static string ConnectionString
        {           
            get 
            {
                string _connectionString = ConfigurationManager.ConnectionStrings["AccessConnStr1"].ToString() + System.Web.HttpContext.Current.Server.MapPath(appPath + "/App_Data/TMDataBase.mdb");      
               
               
                return _connectionString; 
            }
        }

      
    }
}
