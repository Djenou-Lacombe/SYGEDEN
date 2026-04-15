using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SysEden.Model
{
    public class Membre
    {
        string strCon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;

        public DataSet data;
        public int idMembre;
        public string codeMembre;
        public string nom;
        public string prenom;
        public string sexe;
        public string dateNaissance;
        public string departementNaissance;
        public string arrondissement;
        public string commune;
        public string adresse;
        public string telephone;
        public string email;
        public string nationalite;
        public string nif;
        public string etatCivil;
        public string niveauEtude;
        public string dateMariage;
        public string nombreEnfant;
        public string profession;
        public string etremembreBaptise;
        public string dateConversion;
        public string dateBapteme;
        public string nomEgliseSortante;
        public string nomPasteur;
        public string telephonePasteur;
        public string referenceEglise;
        public string photo;
        public string dateEnregistrement;
        public string statut;

        public Membre(int idMembre, string codeMembre, string nom, string prenom, string sexe, string dateNaissance, string departementNaissance, string commune, string arrondissement,string adresse, string telephone, string email, string nationalite, string nif, string etatCivil, string niveauEtude, string dateMariage, string nombreEnfant, string profession, string etremembreBaptise, string dateConversion, string dateBapteme, string nomEgliseSortante , string nomPasteur, string telephonePasteur, string referenceEglise, string photo, string dateEnregistrement, string statut)
        {
 

            this.idMembre = idMembre;
            this.codeMembre = codeMembre;
            this.nom = nom;
            this.prenom = prenom;
            this.sexe = sexe;
            this.dateNaissance = dateNaissance;
            this.departementNaissance = departementNaissance;
            this.arrondissement = arrondissement;
            this.commune = commune;
            this.adresse = adresse;
            this.telephone = telephone;
            this.email = email;
            this.nationalite = nationalite;
            this.nif = nif;
            this.etatCivil = etatCivil;
            this.niveauEtude = niveauEtude;
            this.dateMariage = dateMariage;
            this.nombreEnfant = nombreEnfant;
            this.profession = profession;
            this.etremembreBaptise = etremembreBaptise;
            this.dateConversion = dateConversion;
            this.dateBapteme = dateBapteme;
            this.nomEgliseSortante = nomEgliseSortante;
            this.nomPasteur = nomPasteur;
            this.telephonePasteur = telephonePasteur;
            this.referenceEglise = referenceEglise;
            this.photo = photo;
            this.dateEnregistrement = dateEnregistrement;
            this.statut = statut;
        }


       

        public Membre() : this(0, null, null, null, null,  null, null,null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null) { }


        public int IdMembre
        {
            get { return idMembre; }
            set { this.idMembre = value; }
        }
        public string CodeMembre
        {
            get { return this.codeMembre; }
            set { this.codeMembre = value; }
        }

        public string Nom
        {
            get { return this.nom; }
            set { this.nom = value; }
        }

        public string Prenom
        {
            get { return this.prenom; }
            set { this.prenom = value; }
        }
        public string Sexe
        {
            get { return this.sexe; }
            set { this.sexe = value; }
        }
        public string DateNaissance
        {
            get { return this.dateNaissance; }
            set { this.dateNaissance = value; }
        }


        public string DepartementNaissance
        {
            get { return this.departementNaissance; }
            set { this.departementNaissance = value; }
        }
       
        public string Arrondissement
        {
            get { return this.arrondissement; }
            set { this.arrondissement = value; }
        }
        public string Commune
        {
            get { return this.commune; }
            set { this.commune = value; }
        }


        public string Adresse
        {
            get { return this.adresse; }
            set { this.adresse = value; }
        }

        internal void ModifierMembre()
        {
            throw new NotImplementedException();
        }

        public string Telephone
        {
            get { return this.telephone; }
            set { this.telephone = value; }
        }
      
        public string Email
        {
            get { return this.email; }
            set { this.email = value; }
        }
        public string Nationalite
        {
            get { return this.nationalite; }
            set { this.nationalite = value; }

        }
        public string Nif
        {
            get { return this.nif; }
            set { this.nif = value; }
        }

        internal DataSet ListerMembres()
        {
            throw new NotImplementedException();
        }

        public string EtatCivil
        {
            get { return this.etatCivil; }
            set { this.etatCivil = value; }
        }
        public string NiveauEtude
        {
            get { return this.niveauEtude; }
            set { this.niveauEtude = value; }
        }
        public string DateMariage
        {
            get { return this.dateMariage; }
            set { this.dateMariage = value; }
        }
        public string NombreEnfant
        {
            get { return this.nombreEnfant; }
            set { this.nombreEnfant = value; }
        }
        public string Profession
        {
            get { return this.profession; }
            set { this.profession = value; }
        }
        public string EtreMembreBaptise
        {
            get { return this.etremembreBaptise; }
            set { this.etremembreBaptise = value; }
        }
        public string DateConversion
        {
            get { return this.dateConversion; }
            set { this.dateConversion = value; }
        }
        public string DateBapteme
        {
            get { return this.dateBapteme; }
            set { this.dateBapteme = value; }
        }
        public string NomEgliseSortante
        {
            get { return this.nomEgliseSortante; }
            set { this.nomEgliseSortante = value; }
        }
        public string NomPasteur
        {
            get { return this.nomPasteur; }
            set { this.nomPasteur = value; }
        }
        public string TelephonePasteur
        {
            get { return this.telephonePasteur; }
            set { this.telephonePasteur = value; }
        }
        public string ReferenceEglise
        {
            get { return this.referenceEglise; }
            set { this.referenceEglise = value; }
        }
        public string Photo
        {
            get { return this.photo; }
            set { this.photo = value; }
        }
        public string DateEnregistrement
        {
            get { return this.dateEnregistrement; }
            set { this.dateEnregistrement = value; }
        }
        public string Statut
        {
            get { return this.statut; }
            set { this.statut = value; }
        }

        public static object SelectedValue { get; internal set; }

        public static bool IsValidEmail(string email)
        {
            string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return System.Text.RegularExpressions.Regex.IsMatch(email, pattern);
        }

        public static bool IsEmailExiste(string email)
        {
            string chCon = "server= DJEY-COMPUTER; uid=sa; pwd=abc; Database=[DBSysEden]";

            // Requête pour vérifier si l'email existe
            string chReq = "SELECT COUNT(*) FROM tbmembre WHERE email = @Email";

            using (SqlConnection con = new SqlConnection(chCon))
            using (SqlCommand cmd = new SqlCommand(chReq, con))
            {
                // Ajout du paramètre pour éviter les injections SQL
                cmd.Parameters.AddWithValue("@Email", email);

                try
                {
                    con.Open();
                    int count = (int)cmd.ExecuteScalar();
                    return count > 0; // Retourne vrai si l'email existe
                }
                catch (Exception)
                {
                    Console.WriteLine("Erreur de connexion", "Erreur");
                    return false;
                }
            }
        }

        //public bool Nombremembre()
        //{
        //    string chCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
        //    string chReq = string.Format("select count(*) as code from membre");
        //    SqlConnection con = new SqlConnection(chCon);
        //    SqlCommand cmd = null;
        //    bool trouves = false;
        //    try
        //    {
        //        con.Open();
        //        cmd = new SqlCommand(chReq, con);
        //        SqlDataReader reader = cmd.ExecuteReader();
        //        if (reader.Read())
        //        {
        //            int nombre = int.Parse(reader["code"].ToString());



        //            trouves = true;
        //        }
        //        reader.Close();
        //        con.Close();
        //        return trouves;

        //    }
        //    catch (Exception)
        //    {
        //        return trouves;
        //    }

        //}

        public void creerMembre()
        {
            string chCon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;
            string chReq = @"
                INSERT INTO Membre (
                    code_membre, nom, prenom, sexe, date_naissance, adresse, telephone,
                    email, nationalite, Nif_sin, etat_civil, niveau_etude, date_mariage,
                    nombre_enfant, profession, etre_membre, date_conversion, date_bapteme,
                    nom_eglise_sortante, nom_pasteur, telephone_pasteur, reference_eglise,
                    photo, statut, date_enregistrement)
                VALUES (
                    @codeMembre, @nom, @prenom, @sexe, @dateNaissance, @adresse, @telephone,
                    @email, @nationalite, @nif, @etatCivil, @niveauEtude, @dateMariage,
                    @nombreEnfant, @profession, @etreMembreBaptise, @dateConversion, @dateBapteme,
                    @nomEgliseSortante, @nomPasteur, @telephonePasteur, @referenceEglise,
                    @photo, @statut, @dateEnregistrement)";

            using (var con = new SqlConnection(chCon))
            using (var cmd = new SqlCommand(chReq, con))
            {
                cmd.Parameters.AddWithValue("@codeMembre", codeMembre ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@nom", nom ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@prenom", prenom ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@sexe", sexe ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@dateNaissance", string.IsNullOrWhiteSpace(dateNaissance) ? (object)DBNull.Value : dateNaissance);
                cmd.Parameters.AddWithValue("@adresse", adresse ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@telephone", telephone ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@email", email ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@nationalite", nationalite ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@nif", nif ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@etatCivil", etatCivil ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@niveauEtude", niveauEtude ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@dateMariage", string.IsNullOrWhiteSpace(dateMariage) ? (object)DBNull.Value : dateMariage);
                cmd.Parameters.AddWithValue("@nombreEnfant", nombreEnfant ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@profession", profession ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@etreMembreBaptise", etremembreBaptise ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@dateConversion", string.IsNullOrWhiteSpace(dateConversion) ? (object)DBNull.Value : dateConversion);
                cmd.Parameters.AddWithValue("@dateBapteme", string.IsNullOrWhiteSpace(dateBapteme) ? (object)DBNull.Value : dateBapteme);
                cmd.Parameters.AddWithValue("@nomEgliseSortante", nomEgliseSortante ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@nomPasteur", nomPasteur ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@telephonePasteur", telephonePasteur ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@referenceEglise", referenceEglise ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@photo", photo ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@statut", statut ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@dateEnregistrement", dateEnregistrement ?? (object)DBNull.Value);

                con.Open();
                 cmd.ExecuteNonQuery();
            }
        }

        //public void modifierMembre(int idMembre, string codeMembre, string nom, string prenom, string sexe, string dateNaissance,string departementNaissance,string arrondissement, string commune, string adresse, string telephone, string email, string nif, string etatCivil, string niveauEtude, string dateMariage, string nombreEnfant, string profession, string etremembreBaptise, string dateConversion, string dateBapteme, string nomEgliseSortante, string nomPasteur, string telephonePasteur, string referenceEglise, string photo, string statut)
        //{
        //    string chCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
        //    string chReq = string.Format("UPDATE tbmembre SET idMembre = '{0}, codeMembre, nom, prenom, sexe, dateNaissance,departementNaissance, arrondissement, commune, adresse, telephone, email, nif, etatCivil, niveauEtude, dateMariage, nombreEnfant, profession, etreMembreBaptise, dateConversion, dateBapteme, nomEgliseSortante, nomPasteur, telephonePasteur, referenceEglise, photo, statut='{4}',' WHERE idPasteur ='{0}'", idMembre, codeMembre, nom, prenom, sexe, dateNaissance, adresse, telephone, email, nif, etatCivil, niveauEtude, dateMariage, nombreEnfant, profession, etremembreBaptise, dateConversion, dateBapteme, nomEgliseSortante, nomPasteur, telephonePasteur, referenceEglise, photo, statut);

        //    using (SqlConnection con = new SqlConnection(chCon))
        //    using (SqlCommand cmd = new SqlCommand(chReq, con))
        //    {
        //        try
        //        {
        //            con.Open();
        //            cmd.ExecuteNonQuery();
        //            Console.WriteLine("Modification effectuée avec succès !", "Information");
        //        }
        //        catch (Exception ex)
        //        {
        //            Console.WriteLine("Erreur de connexion : " + ex.Message, "Erreur");
        //        }
        //    }
        //}

        public bool Rechercher(int idMembre)
        {
            string chCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
            string chReq = string.Format("select *from membre where idMembre='{0}'", idMembre);
            SqlConnection con = new SqlConnection(chCon);
            SqlCommand cmd = null;
            bool trouve = false;
            try
            {
                con.Open();
                cmd = new SqlCommand(chReq, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    // Assigner les bons champs
                    this.idMembre = Convert.ToInt32(reader["idMembre"]); // si c’est un int
                    this.codeMembre = reader ["codeMembre"].ToString();
                    this.nom = reader ["nom"].ToString();
                    this.prenom = reader ["prenom"].ToString();
                    this.sexe = reader ["sexe"].ToString();
                    this.dateNaissance = reader ["dateNaissance"].ToString();

                    this.departementNaissance = reader ["departementNaissance"].ToString();
                    this.arrondissement = reader ["arrondissement"].ToString();
                    this.commune = reader ["commune"].ToString();

                    this.adresse = reader ["adresse"].ToString();
                    this.telephone = reader ["telephone"].ToString();
                    this.email = reader ["email"].ToString();
                    this.nationalite = reader ["nationalite"].ToString();
                    this.nif = reader ["nif"].ToString();
                    this.etatCivil = reader ["etatCivil"].ToString();
                    this.niveauEtude = reader ["niveauEtude"].ToString();
                    this.dateMariage = reader ["dateMariage"].ToString();
                    this.nombreEnfant = reader ["nombreEnfant"].ToString();
                    this.profession = reader  ["profession"].ToString();
                    this.etremembreBaptise = reader ["etremembreBaptise"].ToString();
                    this.dateConversion = reader ["dateConversion"].ToString();
                    this.dateBapteme = reader ["dateBapteme"].ToString();
                    this.nomEgliseSortante = reader ["nomEgliseSortante"].ToString();
                    this.nomPasteur = reader ["nomPasteur"].ToString();
                    this.telephonePasteur =reader ["telephonePasteur"].ToString();
                    this.referenceEglise = reader["referenceEglise"].ToString();
                    this.photo = reader ["photo"].ToString();
                    this.dateEnregistrement = reader["dateEnregistrement"].ToString();
                    this.statut = reader["statut"].ToString();

                    


                    trouve = true;
                }

                reader.Close();
                con.Close();
                return trouve;

            }
            catch (Exception)
            {
                return trouve;
            }

        }

        public DataSet ListerMembre()
        {
            SqlDataAdapter adapter;
            SqlConnection con;
            DataSet data = new DataSet();
            string strCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
            con = new SqlConnection(strCon);
            string command = string.Format("select *from membre");
            try
            {
                con.Open();
                adapter = new SqlDataAdapter(command, con);
                SqlCommandBuilder cmd = new SqlCommandBuilder(adapter);
                data = new DataSet();
                adapter.Fill(data, "");

                con.Close();
                return data;
            }
            catch (Exception)
            {
                Console.WriteLine("Erreur", "Erreur de connection");
                return data;
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }


        }


    }
}
