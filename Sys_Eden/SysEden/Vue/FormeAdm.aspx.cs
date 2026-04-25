using System;
using System.Data.SqlClient;
using System.Configuration;

namespace SysEden.Vue
{
    public partial class FormeAdm : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["nom"] != null)
                {
                    string nom = Session["nom"].ToString();

                    // Affichage du nom dans les labels avec l'interpolation de chaîne
                    lbnomentete.Text = $"{nom}";
                }
                else
                {
                    Response.Redirect("LoginPatient.aspx");
                }
            }

        }
        void videchamps()
        {
            txtcode.Text = "";
            txtnom.Text = "";
            txtprenom.Text = "";
            txtnomuser.Text = "";
            txtmotpasse.Text = "";
            cmbPrivilege.Text = "";

        }

        public void CodeAdm()
        {
            if (string.IsNullOrWhiteSpace(txtnom.Text) || string.IsNullOrWhiteSpace(txtprenom.Text))
            {

                return;
            }

            string nom = txtnom.Text.Trim();
            string prenom = txtprenom.Text.Trim();

            string codeNom = nom.Length >= 2 ? nom.Substring(0, 2).ToUpper() : nom.ToUpper();
            string codePrenom = prenom.Length >= 2 ? prenom.Substring(0, 2).ToUpper() : prenom.ToUpper();

            Random rnd = new Random();
            int randomNumber = rnd.Next(10, 99);

            txtcode.Text = codeNom + "-" + codePrenom + "-" + randomNumber.ToString();

        }
        protected void btnEnregistrer_Click(object sender, EventArgs e)
        {
            this.CodeAdm();

            if (string.IsNullOrWhiteSpace(txtnom.Text) || string.IsNullOrWhiteSpace(txtcode.Text))
            {
                ShowAlert("Certains champs sont vides");
                return;
            }
            try
            {
                this.EnregistrerAdministrateur();
            }
            catch (SqlException ex)
            {
                ShowAlert("Erreur d'insertion");
            }
        }
        void EnregistrerAdministrateur()
        {
            SqlConnection con = new SqlConnection(strCon);
            string query = "Insert into tbuser (code_User, nom, prenom,utilisateur,privilege,status,mot_Passe)values('" + txtcode.Text + "','" + txtnom.Text + "','" + txtprenom.Text + "','" + txtnomuser.Text + "','" + cmbPrivilege.Text + "','" + txtStatus.Text + "','" + txtmotpasse.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ShowAlert("Enregistrement effectue avec succes!");
                con.Close();

            }
            catch (Exception)
            {
                ShowAlert("Erreur de connection");
            }

        }
        private void ShowAlert(string message)
        {
            string cleanMessage = message.Replace("'", "\\'"); // protège les apostrophes
            string script = $"alert('{cleanMessage}');";
            ClientScript.RegisterStartupScript(this.GetType(), "alertBox", script, true);
        }

        protected void btnAnnuler_Click(object sender, EventArgs e)
        {
            this.videchamps();
        }

        protected void LinkDeconnexion_Click1(object sender, EventArgs e)
        {

        }
    }
}