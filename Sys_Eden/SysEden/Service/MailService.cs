using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Net;
using System.Net.Mail;

namespace SysEden.Service
{
    public class MailService
    {
        public static void EnvoyerMail(string to, string sujet, string message)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("eglise@eden.org");
            mail.To.Add(to);
            mail.Subject = sujet;
            mail.Body = message;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential(
                "tonmail@gmail.com",
                "mot_de_passe_application"
            );
            smtp.EnableSsl = true;

            smtp.Send(mail);
        }
    }
}
