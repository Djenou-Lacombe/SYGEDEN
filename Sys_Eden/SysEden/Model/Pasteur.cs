using SysEden.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace SysEden.Model
{
    public class Pasteur
    {
        string strCon = ConfigurationManager.ConnectionStrings["dbConnect"].ConnectionString;

        public int idMembre;
        public string dateNomination;
        public string statut;
        internal string photo;

        public Pasteur(int idMembre, string dateNomination, string statut)
        {

           
            this.idMembre = idMembre;
            this.dateNomination = dateNomination;
            this.statut = statut;
        }
       
        public Pasteur() : this(0, null, null) { }

        public int IdMembre
        {
            get { return idMembre; }
            set { idMembre = value; }
        }
        public string DateNomination
        {
            get { return dateNomination; }
            set { dateNomination = value; }
        }
        public string Statut
        {
            get { return statut; }
            set { statut = value; }
        }

        public static bool IsValidEmail(string email)
        {
            string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email, pattern);
        }

        public static bool IsEmailExiste(string email)
        {
            string chCon = "server= DJEY-COMPUTER; uid=sa; pwd=abc; Database=[DBSysEden]";

            // Requête pour vérifier si l'email existe
            string chReq = "SELECT COUNT(*) FROM tbpasteur WHERE email = @Email";

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

        public bool NombrePasteur()
        {
            string chCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
            string chReq = string.Format("select count(*) as code from pasteur");
            SqlConnection con = new SqlConnection(chCon);
            SqlCommand cmd = null;
            bool trouves = false;
            try
            {
                con.Open();
                cmd = new SqlCommand(chReq, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    int nombre = int.Parse(reader["code"].ToString());



                    trouves = true;
                }
                reader.Close();
                con.Close();
                return trouves;

            }
            catch (Exception)
            {
                return trouves;
            }

        }

        public void creerPasteur()
        {
            string chCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
           
            string chReq = string.Format("Insert into pasteur(idPasteur, idMembre, dateNomination, statut) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}' '{11}')", idMembre, dateNomination, statut);

            SqlConnection con = new SqlConnection(chCon);
            SqlCommand cmd = new SqlCommand(chReq, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Console.WriteLine("Imformation", "Enregistrement effectue avec succes!");
                con.Close();

            }
            catch (Exception)
            {
                Console.WriteLine("erreur", "erreur de connection");
            }

        }

        public void modifierPasteur(int idmembre, string dateNomination, string statut)
        {
            string chCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
            string chReq = string.Format("UPDATE tbpasteur SET idpasteur='{1}',idMembre='{2}',dateNomination='{3}',statut='{4}',' WHERE idPasteur='{0}'", idMembre, dateNomination, statut);

            using (SqlConnection con = new SqlConnection(chCon))
            using (SqlCommand cmd = new SqlCommand(chReq, con))
            {
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Console.WriteLine("Modification effectuée avec succès !", "Information");
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Erreur de connexion : " + ex.Message, "Erreur");
                }
            }
        }

        public bool Rechercher(int idPasteur)
        {
            string chCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
            string chReq = string.Format("select *from pasteur where idPasteur='{0}'", idPasteur);
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
                    this.dateNomination = reader["dateNomination"].ToString();
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

        public DataSet ListerPasteur()
        {
            SqlDataAdapter adapter;
            SqlConnection con;
            DataSet data = new DataSet();
            string strCon = "server = DJEY-COMPUTER; uid = sa; pwd = abc; Database = DBSysEden";
            con = new SqlConnection(strCon);
            string command = string.Format("select *from pasteur");
            try
            {
                con.Open();
                adapter = new SqlDataAdapter(command, con);
                SqlCommandBuilder cmd = new SqlCommandBuilder(adapter);
                data = new DataSet();
                adapter.Fill(data, "pasteur");

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
