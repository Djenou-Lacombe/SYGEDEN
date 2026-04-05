using SysEden.Model;
using SysEden.Service;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


namespace SysEden.Controleur
{
    public class ControleurMembre
    {
        public Membre Pat;
        private object pat;

        public ControleurMembre()
        {
            Pat = new Membre();
        }

        // =====================================================
        // ENREGISTRER MEMBRE
        // =====================================================
        public void EnregistrerMembre(
            int idMembre, string codeMembre, string nom, string prenom, string sexe,
            string dateNaissance, string departementNaissance,
            string arrondissement,
            string commune, string adresse, string telephone, string email,
            string nif, string etatCivil, string niveauEtude, string dateMariage,
            string nombreEnfant, string profession, string etreMembreBaptise,
            string dateConversion, string dateBapteme, string nomEgliseSortante,
            string nomPasteur, string telephonePasteur, string referenceEglise,
            string photo, string statut)
        {
            Pat = new Membre();

            Pat.IdMembre = idMembre;
            Pat.CodeMembre = codeMembre;
            Pat.Nom = nom;
            Pat.Prenom = prenom;
            Pat.Sexe = sexe;
            Pat.DateNaissance = dateNaissance;
            Pat.DepartementNaissance = departementNaissance;
            Pat.Arrondissement = arrondissement;
            Pat.Commune = commune;
            Pat.Adresse = adresse;
            Pat.Telephone = telephone;
            Pat.Email = email;
            Pat.Nif = nif;
            Pat.EtatCivil = etatCivil;
            Pat.NiveauEtude = niveauEtude;
            Pat.DateMariage = dateMariage;
            Pat.NombreEnfant = nombreEnfant;
            Pat.Profession = profession;
            Pat.EtreMembreBaptise = etreMembreBaptise;
            Pat.DateConversion = dateConversion;
            Pat.DateBapteme = dateBapteme;
            Pat.NomEgliseSortante = nomEgliseSortante;
            Pat.NomPasteur = nomPasteur;
            Pat.TelephonePasteur = telephonePasteur;
            Pat.ReferenceEglise = referenceEglise;
            Pat.Photo = photo;
            Pat.Statut = statut;

            // 🔹 Création du membre
            Pat.CreerMembre();

            // 🔹 Envoi du mail après enregistrement
            try
            {
                if (!string.IsNullOrEmpty(email))
                {
                    MailService.EnvoyerMail(
                        email,
                        "Bienvenue à l'Église EDEN",
                        $"Bonjour {prenom},<br/>Votre inscription a été effectuée avec succès.<br/>Que Dieu vous bénisse."
                    );
                }
            }
            catch (Exception ex)
            {
                // Ici tu peux logger l'erreur ou afficher un message
                // mais tu ne bloques pas l'enregistrement
                Console.WriteLine("Erreur lors de l'envoi du mail: " + ex.Message);
            }
        }
        // =====================================================
        // MODIFIER MEMBRE
        // =====================================================
        public void ModifierMembre(
            int idMembre, string codeMembre, string nom, string prenom, string sexe,
            string dateNaissance,
            string departementNaissance,
            string arrondissement,
            string commune,
            string adresse, string telephone, string email,
            string nif, string etatCivil, string niveauEtude, string dateMariage,
            string nombreEnfant, string profession, string etreMembreBaptise,
            string dateConversion, string dateBapteme, string nomEgliseSortante,
            string nomPasteur, string telephonePasteur, string referenceEglise,
            string photo, string statut)
        {
            Pat = new Membre();

            Pat.IdMembre = idMembre;
            Pat.CodeMembre = codeMembre;
            Pat.Nom = nom;
            Pat.Prenom = prenom;
            Pat.Sexe = sexe;
            Pat.DateNaissance = dateNaissance;
            Pat.DepartementNaissance = departementNaissance;
            Pat.Arrondissement = arrondissement;
            Pat.Commune = commune;
            Pat.Adresse = adresse;
            Pat.Telephone = telephone;
            Pat.Email = email;
            Pat.Nif = nif;
            Pat.EtatCivil = etatCivil;
            Pat.NiveauEtude = niveauEtude;
            Pat.DateMariage = dateMariage;
            Pat.NombreEnfant = nombreEnfant;
            Pat.Profession = profession;
            Pat.EtreMembreBaptise = etreMembreBaptise;
            Pat.DateConversion = dateConversion;
            Pat.DateBapteme = dateBapteme;
            Pat.NomEgliseSortante = nomEgliseSortante;
            Pat.NomPasteur = nomPasteur;
            Pat.TelephonePasteur = telephonePasteur;
            Pat.ReferenceEglise = referenceEglise;
            Pat.Photo = photo;
            Pat.Statut = statut;

            Pat.ModifierMembre();
        }

        // =====================================================
        // RECHERCHER
        // =====================================================
        public bool RechercherMembre(int idMembre)
        {
            return Pat.Rechercher(idMembre);
        }

        // =====================================================
        // LISTER
        // =====================================================
        public DataSet GetListerMembre()
        {
            return Pat.ListerMembres();
        }

        // =====================================================
        // GETTERS
        // =====================================================
        public string GetNom() => Pat?.Nom;
        public string GetPrenom() => Pat?.Prenom;
        public string GetSexe() => Pat?.Sexe;
        public string GetDateNaissance() => Pat?.DateNaissance;
        public string GetPaysNaissance() => Pat?.DepartementNaissance;
        public string GetArrondissement() => Pat?.Arrondissement;
        public string GetCommune() => Pat?.Commune;
        public string GetAdresse() => Pat?.Adresse;
        public string GetTelephone() => Pat?.Telephone;
        public string GetEmail() => Pat?.Email;
        public string GetNationalite() => Pat?.Nationalite;
        public string GetNif() => Pat?.Nif;
        public string GetEtatCivil() => Pat?.EtatCivil;
        public string GetNiveauEtude() => Pat?.NiveauEtude;
        public string GetDateMariage() => Pat?.DateMariage;
        public string GetNombreEnfant() => Pat?.NombreEnfant;
        public string GetProfession() => Pat?.Profession;
        public string GetEtreMembreBaptise() => Pat?.EtreMembreBaptise;
        public string GetDateConversion() => Pat?.DateConversion;
        public string GetDateBapteme() => Pat?.DateBapteme;
        public string GetNomEgliseSortante() => Pat?.NomEgliseSortante;
        public string GetNomPasteur() => Pat?.NomPasteur;
        public string GetTelephonePasteur() => Pat?.TelephonePasteur;
        public string GetReferenceEglise() => Pat?.ReferenceEglise;
        public string GetPhoto() => Pat?.Photo;
        public string GetDateEnregistrement() => Pat?.DateEnregistrement;
        public string GetStatut() => Pat?.Statut;
    }


}


