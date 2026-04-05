using SysEden.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SysEden.Controleur
{
    public class ControleurPasteur
    {
        private Pasteur Pat;
        public ControleurPasteur()
        {
            Pat = new Pasteur();
        }

        public void EnregistrerPasteur(int idMembre, string dateNomination, string statut)
        {
            Pat = new Pasteur(idMembre, dateNomination, statut);
            Pat.creerPasteur();

        }

        public void modifierPasteur(int idMembre, string dateNomination, string statut)
        {

            this.Pat = new Pasteur(idMembre, dateNomination, statut);
            Pat.modifierPasteur(idMembre, dateNomination, statut);

        }

        //public bool RechercherPasteurt(int idPasteur)
        //{
        //    return (Pat.RechercherPasteur(idPasteur));
        //}


        public DataSet GetListerPasteur()
        {
            return (Pat.ListerPasteur());
        }



        public string GetDateNomination()
        {
            if (Pat != null)
                return Pat.dateNomination;
            else
                return null;

        }

        public string Getstatut()
        {
            if (Pat != null)
                return Pat.statut;
            else
                return null;

        }


    }
}

    