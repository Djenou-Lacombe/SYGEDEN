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
        public Membre Mem;

        public ControleurMembre()
        {
            Mem = new Membre();
        }

        // =====================================================
        // ENREGISTRER MEMBRE
        // =====================================================
        public void EnregistrerMembre(
            string codeMembre, string nom, string prenom, string sexe,
            string dateNaissance, string departementNaissance,
            string arrondissement,
            string commune, string adresse, string telephone, string email,
            string nif, string etatCivil, string niveauEtude, string dateMariage,
            string nombreEnfant, string profession, string etreMembreBaptise,
            string dateConversion, string dateBapteme, string nomEgliseSortante,
            string nomPasteur, string telephonePasteur, string referenceEglise,
            string photo, string statut)
        {
            Mem = new Membre();

            Mem.CodeMembre = codeMembre;
            Mem.Nom = nom;
            Mem.Prenom = prenom;
            Mem.Sexe = sexe;
            Mem.DateNaissance = dateNaissance;
            Mem.DepartementNaissance = departementNaissance;
            Mem.Arrondissement = arrondissement;
            Mem.Commune = commune;
            Mem.Adresse = adresse;
            Mem.Telephone = telephone;
            Mem.Email = email;
            Mem.Nif = nif;
            Mem.EtatCivil = etatCivil;
            Mem.NiveauEtude = niveauEtude;
            Mem.DateMariage = dateMariage;
            Mem.NombreEnfant = nombreEnfant;
            Mem.Profession = profession;
            Mem.EtreMembreBaptise = etreMembreBaptise;
            Mem.DateConversion = dateConversion;
            Mem.DateBapteme = dateBapteme;
            Mem.NomEgliseSortante = nomEgliseSortante;
            Mem.NomPasteur = nomPasteur;
            Mem.TelephonePasteur = telephonePasteur;
            Mem.ReferenceEglise = referenceEglise;
            Mem.Photo = photo;
            Mem.Statut = statut;

            // 🔹 Création du membre
            Mem.creerMembre();

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
            Mem = new Membre();

            Mem.IdMembre = idMembre;
            Mem.CodeMembre = codeMembre;
            Mem.Nom = nom;
            Mem.Prenom = prenom;
            Mem.Sexe = sexe;
            Mem.DateNaissance = dateNaissance;
            Mem.DepartementNaissance = departementNaissance;
            Mem.Arrondissement = arrondissement;
            Mem.Commune = commune;
            Mem.Adresse = adresse;
            Mem.Telephone = telephone;
            Mem.Email = email;
            Mem.Nif = nif;
            Mem.EtatCivil = etatCivil;
            Mem.NiveauEtude = niveauEtude;
            Mem.DateMariage = dateMariage;
            Mem.NombreEnfant = nombreEnfant;
            Mem.Profession = profession;
            Mem.EtreMembreBaptise = etreMembreBaptise;
            Mem.DateConversion = dateConversion;
            Mem.DateBapteme = dateBapteme;
            Mem.NomEgliseSortante = nomEgliseSortante;
            Mem.NomPasteur = nomPasteur;
            Mem.TelephonePasteur = telephonePasteur;
            Mem.ReferenceEglise = referenceEglise;
            Mem.Photo = photo;
            Mem.Statut = statut;

            Mem.ModifierMembre();
        }

        // =====================================================
        // RECHERCHER
        // =====================================================
        public bool RechercherMembre(int idMembre)
        {
            return Mem.Rechercher(idMembre);
        }

        // =====================================================
        // LISTER
        // =====================================================
        public DataSet GetListerMembre()
        {
            return Mem.ListerMembres();
        }

        // =====================================================
        // GETTERS
        // =====================================================
        public string GetNom() => Mem?.Nom;
        public string GetPrenom() => Mem?.Prenom;
        public string GetSexe() => Mem?.Sexe;
        public string GetDateNaissance() => Mem?.DateNaissance;
        public string GetPaysNaissance() => Mem?.DepartementNaissance;
        public string GetArrondissement() => Mem?.Arrondissement;
        public string GetCommune() => Mem?.Commune;
        public string GetAdresse() => Mem?.Adresse;
        public string GetTelephone() => Mem?.Telephone;
        public string GetEmail() => Mem?.Email;
        public string GetNationalite() => Mem?.Nationalite;
        public string GetNif() => Mem?.Nif;
        public string GetEtatCivil() => Mem?.EtatCivil;
        public string GetNiveauEtude() => Mem?.NiveauEtude;
        public string GetDateMariage() => Mem?.DateMariage;
        public string GetNombreEnfant() => Mem?.NombreEnfant;
        public string GetProfession() => Mem?.Profession;
        public string GetEtreMembreBaptise() => Mem?.EtreMembreBaptise;
        public string GetDateConversion() => Mem?.DateConversion;
        public string GetDateBapteme() => Mem?.DateBapteme;
        public string GetNomEgliseSortante() => Mem?.NomEgliseSortante;
        public string GetNomPasteur() => Mem?.NomPasteur;
        public string GetTelephonePasteur() => Mem?.TelephonePasteur;
        public string GetReferenceEglise() => Mem?.ReferenceEglise;
        public string GetPhoto() => Mem?.Photo;
        public string GetDateEnregistrement() => Mem?.DateEnregistrement;
        public string GetStatut() => Mem?.Statut;
    }


}


