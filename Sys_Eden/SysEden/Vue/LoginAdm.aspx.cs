using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SysEden.Vue
{
    public partial class LoginAdm : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear();
            }
        }

        void login2()
        {
            using (SqlConnection con = new SqlConnection(strCon))
            {
                string uid = txtnomuser.Text;
                string passe = txtmotpasse.Text;

                con.Open();

                string query = "SELECT Id_user, nom, prenom, utilisateur FROM tbuser WHERE utilisateur = @uid AND mot_Passe = @passe AND status = 'Actif'";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@uid", uid);
                cmd.Parameters.AddWithValue("@passe", passe);

                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    // ⚡ Récupération de l’ID
                    int idUser = Convert.ToInt32(sdr["Id_user"]);

                    Session["nom"] = sdr["nom"].ToString();
                    Session["idUser"] = sdr["Id_user"].ToString();
                    Session["prenom"] = sdr["prenom"].ToString();
                    Response.Redirect("Accueil.aspx");
                }
                else
                {
                    ShowAlert("Utilisateur ou mot de passe incorrect.");
                }
            }
        }


        private void ShowAlert(string message)
        {
            string cleanMessage = message.Replace("'", "\\'"); // protège les apostrophes
            string script = $"alert('{cleanMessage}');";
            ClientScript.RegisterStartupScript(this.GetType(), "alertBox", script, true);
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnLoginPatien_Click(object sender, EventArgs e)
        {
            this.login2();
        }

        protected void btnLoginADM_Click(object sender, EventArgs e)
        {
            this.login2();
        }
    }
}