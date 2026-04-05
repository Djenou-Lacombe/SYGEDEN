using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;

namespace SysEden.Vue
{
    public class ServiceTechnique
    {
        public static void envoyerEmail(string adresse, string nomComplet)
        {
            try
            {
                MailAddress from = new MailAddress("ednerletaille19@gmail.com", "POWERFULMED Administration");
                MailAddress to = new MailAddress(adresse);

                MailMessage message = new MailMessage(from, to);
                message.Subject = "Création de votre compte - POWERFULMED";

                message.Body = $"Bonjour {nomComplet},\n\n" +
                               "Votre compte a été créé avec succès, mais il est actuellement **inactif**.\n" +
                               "Veuillez patienter pendant que l'administration vérifie vos informations avant d'activer votre compte.\n\n" +
                               "Merci de votre compréhension.\n\n" +
                               "L'équipe POWERFULMED.";

                SmtpClient client = new SmtpClient("smtp.gmail.com", 25);
                client.EnableSsl = true;
                client.Credentials = new NetworkCredential("ednerletaille19@gmail.com", "gldf tjax exrh rpum");
                client.Send(message);
            }
            catch (SmtpException ex)
            {
                Console.WriteLine("Erreur SMTP: " + ex.Message);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erreur générale: " + ex.Message);
            }
        }

       public static void EnvoyerEmailAnnulation(string roleAnnuleur, string emailDestinataire, string nomDestinataire, string dateRdv)
        {
            try
            {
                string corpsMessage = "";

                if (roleAnnuleur == "patient")
                {
                    corpsMessage = $"Bonjour Dr {nomDestinataire},\n\n" +
                                   $"Le patient a annulé le rendez-vous prévu le {dateRdv}.\n\n" +
                                   "Merci de prendre note.\n\n" +
                                   "Cordialement,\nPlateforme Médicale";
                }
                else if (roleAnnuleur == "medecin")
                {
                    corpsMessage = $"Bonjour {nomDestinataire},\n\n" +
                                   $"Votre médecin a annulé le rendez-vous prévu le {dateRdv}.\n\n" +
                                   "Merci de prendre note.\n\n" +
                                   "Cordialement,\nPlateforme Médicale";
                }

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("ednerletaille19@gmail.com", "Plateforme Médicale");
                mail.To.Add(emailDestinataire);
                mail.Subject = "Annulation de rendez-vous";
                mail.Body = corpsMessage;

                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("ednerletaille19@gmail.com", "gldf tjax exrh rpum");
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erreur lors de l'envoi de l'email : " + ex.Message);
            }
        }


    public static  void EnvoyerEmailReport(string emailMedecin, string nomMedecin, string nomPatient, DateTime newDate, TimeSpan newHeure)
    {
        try
        {
            string corpsMessage = $"Bonjour Dr {nomMedecin},\n\n" +
                                  $"Le patient {nomPatient} a reporté le rendez-vous.\n\n" +
                                  $"Nouvelle date : {newDate:dd/MM/yyyy}\n" +
                                  $"Nouvelle heure : {newHeure}\n\n" +
                                  "Merci de prendre note.\n\n" +
                                  "Cordialement,\nPlateforme Médicale";

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("ednerletaille19@gmail.com", "Plateforme Médicale");
            mail.To.Add(emailMedecin);
            mail.Subject = "Rendez-vous reporté";
            mail.Body = corpsMessage;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential("ednerletaille19@gmail.com", "gldf tjax exrh rpum");
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
                Console.WriteLine("Erreur lors de l'envoi de l'email : " + ex.Message);
            }
    }


        public static void EnvoyerEmailReportPatient(string emailPatient, string nomPatient, string nomMedecin, DateTime newDate, TimeSpan newHeure)
    {
        try
        {
            string corpsMessage = $"Bonjour {nomPatient},\n\n" +
                                  $"Votre médecin Dr {nomMedecin} a reporté votre rendez-vous.\n\n" +
                                  $"Nouvelle date : {newDate:dd/MM/yyyy}\n" +
                                  $"Nouvelle heure : {newHeure}\n\n" +
                                  "Merci de prendre note.\n\n" +
                                  "Cordialement,\nPlateforme Médicale";

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("ednerletaille19@gmail.com", "Plateforme Médicale");
            mail.To.Add(emailPatient);
            mail.Subject = "Votre rendez-vous a été reporté";
            mail.Body = corpsMessage;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential("ednerletaille19@gmail.com", "gldf tjax exrh rpum");
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
                Console.WriteLine("Erreur lors de l'envoi de l'email : " + ex.Message);
            }
    }


        public static void EnvoyerEmailActivation(string email, string nom, string prenom, string username, string password)
        {
            try
            {
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(email);
                mail.From = new System.Net.Mail.MailAddress("ednerletaille19@gmail.com"); // expéditeur
                mail.Subject = "Activation de votre compte médecin";
                mail.Body =
                    $"Bonjour Dr {nom} {prenom},\n\n" +
                    "Votre compte a été activé avec succès. Vous pouvez maintenant vous connecter sans problème.\n\n" +
                    $"Voici vos informations de connexion :\n" +
                    $"Nom d'utilisateur : {username}\n" +
                    $"Mot de passe : {password}\n\n" +
                    "Lien de connexion : http://localhost:39806/Vue/LoginMedecin.aspx\n\n" +
                    "Cordialement,\nL'équipe PLATFORMEDICAL";

                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new System.Net.NetworkCredential("ednerletaille19@gmail.com", "gldf tjax exrh rpum");
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erreur lors de l'envoi de l'email : " + ex.Message);
            }
        }

      public static void EnvoyerEmailActivationPatient(string email, string nom, string prenom, string username, string password)
        {
            try
            {
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(email);
                mail.From = new System.Net.Mail.MailAddress("ednerletaille19@gmail.com"); // expéditeurr
                mail.Subject = "Activation de votre compte patient";
                mail.Body =
                    $"Bonjour {nom} {prenom},\n\n" +
                    "Votre compte a été activé avec succès. Vous pouvez maintenant vous connecter sans problème.\n\n" +
                    $"Voici vos informations de connexion :\n" +
                    $"Nom d'utilisateur : {username}\n" +
                    $"Mot de passe : {password}\n\n" +
                    "Lien de connexion : http://tonSite/LoginPatient.aspx\n\n" +
                    "Cordialement,\nL'équipe PLATFORMEDICAL";

                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new System.Net.NetworkCredential("ednerletaille19@gmail.com", "gldf tjax exrh rpum");
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erreur lors de l'envoi de l'email : " + ex.Message);
            }
        }



    }
}