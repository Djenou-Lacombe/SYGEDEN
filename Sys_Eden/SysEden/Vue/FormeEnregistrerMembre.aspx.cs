using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Runtime.CompilerServices.RuntimeHelpers;
using System.Data.SqlClient;
using SysEden.Controleur;

namespace SysEden.Vue
{
    public partial class FormeEnregistrerMembre : System.Web.UI.Page
    {
        ControleurMembre ctrlMembre = new ControleurMembre();
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        public void codeEtudiant()
        {
            if (string.IsNullOrWhiteSpace(txtNom.Text) || string.IsNullOrWhiteSpace(txtPrenom.Text))
            {
                return;
            }

            string nom = txtNom.Text.Trim();
            string prenom = txtPrenom.Text.Trim();

            string codeNom = nom.Length >= 2 ? nom.Substring(0, 2).ToUpper() : nom.ToUpper();
            string codePrenom = prenom.Length >= 2 ? prenom.Substring(0, 2).ToUpper() : prenom.ToUpper();

            Random rnd = new Random();
            int randomNumber = rnd.Next(10, 99);

            txtCodeMembre.Text = codeNom + "-" + codePrenom + "-" + randomNumber;
        }

        protected void btnEnregistrer_Click(object sender, EventArgs e)
        {
            this.codeEtudiant();
            if (string.IsNullOrWhiteSpace(txtCodeMembre.Text) ||
                string.IsNullOrWhiteSpace(txtNom.Text))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "msg",
                    "showToast('warning','Certains champs sont vides');", true);
                return;
            }
            
            ctrlMembre.EnregistrerMembre(
                txtCodeMembre.Text, txtNom.Text, txtPrenom.Text, ddlSexe.SelectedValue,
                txtDateNaissance.Text, ddlDepartement.Text, ddlArrondissement.Text,
                ddlCommune.Text, txtAdresse.Text, txtTelephone.Text, txtEmail.Text,
                txtNIF.Text, ddlEtatCivil.SelectedValue, "", // niveauEtude (empty string as placeholder)
                txtDateMariage.Text, txtNombreEnfant.Text, txtProfession.Text,
                ddlMembreBaptise.SelectedValue, txtDateConversion.Text,
                txtDateBapteme.Text, txtNomEgliseSortante.Text, txtNomPasteur.Text,
                txtTelephonePasteur.Text, txtReferenceEglise.Text, "", // photo (empty string as placeholder)
                "Actif" // statut
            );

            ScriptManager.RegisterStartupScript(this, GetType(), "msg",
                    "showToast('success','Membre enregistré avec succès');", true);

        }
    }
}