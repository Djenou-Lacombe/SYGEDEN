using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace PLATFORMMEDICAL.Vue
{
    public partial class Accueil : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                   
                   

                 
                 
                    this.ChargerRdvParJour();
                    this.ChargerTotalEnregistrement();
;                }
                catch (Exception ex)
                {
                    // Affiche un message d'erreur simple, ou logge-le


                }
                if (Session["nom"] != null)
                {
                    string nom = Session["nom"].ToString();
                    string prenom = Session["prenom"].ToString();

                    // Affichage du nom dans les labels avec l'interpolation de chaîne
                    lbnomentete.Text = $"{nom}";
                    lbnom.Text = $"{nom}"+" "+ $"{prenom}";

                }
                else
                {

                    Response.Redirect("Index.aspx");
                }
            }
        }

        protected void LinkDeconnexion_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Index.aspx");
        }

        private void ChargerRdvParJour()
        {
            string strCon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;
            DataTable dt = new DataTable();

            using (SqlConnection con = new SqlConnection(strCon))
            {
                con.Open();
                string query = @"
            SELECT 
                CONVERT(varchar(10), dateRendezVous, 120) AS Jour, 
                COUNT(*) AS Total
            FROM tbrendezvous
            GROUP BY CONVERT(varchar(10), dateRendezVous, 120)
            ORDER BY Jour";

                SqlDataAdapter da = new SqlDataAdapter(query, con);
                da.Fill(dt);
            }

            // Préparer les données pour Chart.js
            string labels = string.Join(",", dt.AsEnumerable().Select(r => "'" + r["Jour"].ToString() + "'"));
            string data = string.Join(",", dt.AsEnumerable().Select(r => r["Total"].ToString()));

            hfLabels.Value = labels;
            hfData.Value = data;
        }

        private void ChargerTotalEnregistrement()
        {
            string cs = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;

            int totalPatients = 0;
            int totalMedecins = 0;
            int totalUsers = 0;

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM tbpatient", con))
                    totalPatients = (int)cmd.ExecuteScalar();

                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM tbmedecin", con))
                    totalMedecins = (int)cmd.ExecuteScalar();

                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM tbuser", con))
                    totalUsers = (int)cmd.ExecuteScalar();
            }

            // Labels avec guillemets
            hfTotalLabels.Value = "'Patients','Médecins','Utilisateurs'";

            // Données en format numérique
            hfTotalData.Value = totalPatients + "," + totalMedecins + "," + totalUsers;
        }



    }
}