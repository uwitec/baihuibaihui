using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Net.Mail;
using System.Text;
 
    public class Email
    {

        public string smtp = Crypt.DecryptDES(ConfigurationSettings.AppSettings["StmpServers"], "12345678");
        public string from = Crypt.DecryptDES(ConfigurationSettings.AppSettings["sendMail"], "12345678");
        public string pwd = Crypt.DecryptDES(ConfigurationSettings.AppSettings["sendMailPwd"], "12345678");
        public string to = Crypt.DecryptDES(ConfigurationSettings.AppSettings["ToMail"], "12345678");
        public string subject;
        public string body;
        public ArrayList paths;
        /// <summary>发送邮件
        /// 
        /// </summary>
        /// <param name="Psmtp">Stmp服务器</param>
        /// <param name="Pfrom">发件人</param>
        /// <param name="Ppwd">发件人密码</param>
        /// <param name="Pto">收件人</param>
        /// <param name="Psubject">邮件主题</param>
        /// <param name="Pbody">邮件正文</param>
        /// <param name="Ppaths">附件地址</param>
        public Email(string Psubject, string Pbody, ArrayList Ppaths)
        {
            subject = Psubject;
            body = Pbody;
            paths = Ppaths;
        }
        public Email(string Psubject, string Pbody, ArrayList Ppaths, string Tomail)
        {
            subject = Psubject;
            body = Pbody;
            paths = Ppaths;
            to = Tomail;
        }

        /*发邮件*/
        public bool SendMail()
        {
            //创建smtpclient对象
            System.Net.Mail.SmtpClient client = new SmtpClient();
            client.Host = smtp;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(from, pwd);
            client.DeliveryMethod = SmtpDeliveryMethod.Network;

            //创建mailMessage对象 
            System.Net.Mail.MailMessage message = new MailMessage(from, to);
            message.Subject = subject;
            //正文默认格式为html
            message.Body = body;
            message.IsBodyHtml = true;
            message.BodyEncoding = System.Text.Encoding.UTF8;

            //添加附件
            if (paths.Count != 0)
            {
                foreach (string path in paths)
                {
                    Attachment data = new Attachment(path, System.Net.Mime.MediaTypeNames.Application.Octet);
                    message.Attachments.Add(data);
                }
            }

            try
            {
                client.Send(message);
                return true;
            }
            catch
            {
                return false;
            }
        }

    }
 
