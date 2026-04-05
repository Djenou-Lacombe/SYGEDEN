<%@ Page Title="" Language="C#" MasterPageFile="~/Vue/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FormeEnregistrerMembre.aspx.cs" Inherits="SysEden.Vue.FormeEnregistrerMembre" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>

              <div class="card">
              <div class="card-header">
                <h4 class="fw-bold">Formulaire d'enregistrement d'un membre</h4>
              </div>
              <div class="card-body">
               
                  <div class="row g-3">
                    <!-- Colonne 1 -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label>Code du membre</label>
                        <asp:TextBox ID="txtCodeMembre" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Nom</label>
                        <asp:TextBox ID="txtNom" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Prénom</label>
                        <asp:TextBox ID="txtPrenom" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Sexe</label>
                        <select class="form-select" name="sexe" required>
                          <option value="">-- Sélectionner --</option>
                          <option value="Masculin">Masculin</option>
                          <option value="Féminin">Féminin</option>
                        </select>
                      </div>
                      <div class="form-group mt-2">
                        <label>Date de naissance</label>
                        <asp:TextBox ID="txtDateNaissance" CssClass="form-control" runat="server" TextMode="Date" />
                      </div>
                                            <!-- Pays -->
                        <div class="form-group mt-2">
                            <label>Lieu de naissance</label>
                            <select class="form-select mb-2" id="pays" name="pays" onchange="chargerDepartements()">
                                <option value="">-- Pays --</option>
                                <option value="Haïti">Haïti</option>
                                <option value="France">France</option>
                                <option value="Canada">Canada</option>
                            </select>

                            <!-- Département -->
                            <select class="form-select mb-2" id="departement" name="departement" onchange="chargerArrondissements()">
                                <option value="">-- Département --</option>
                            </select>

                            <!-- Arrondissement -->
                            <select class="form-select mb-2" id="arrondissement" name="arrondissement" onchange="chargerCommunes()">
                                <option value="">-- Arrondissement --</option>
                            </select>

                            <!-- Commune -->
                            <select class="form-select" id="commune" name="commune">
                                <option value="">-- Commune --</option>
                            </select>
                        </div>
                      <div class="form-group mt-2">
                        <label>Adresse</label>
                        <asp:TextBox ID="txtAdresse" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Téléphone</label>
                        <asp:TextBox ID="txtTelephone" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Email</label>
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" />
                      </div>
                    </div>

                    <!-- Colonne 2 -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label>Nationalité</label>
                        <asp:TextBox ID="txtNationalite" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>NIF</label>
                        <asp:TextBox ID="txtNIF" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>État civil</label>
                        <select class="form-select" name="etatCivil">
                          <option value="">-- Sélectionner --</option>
                          <option value="Célibataire">Célibataire</option>
                          <option value="Marié">Marié</option>
                          <option value="Divorcé">Divorcé</option>
                          <option value="Veuf">Veuf</option>
                        </select>
                      </div>
                      <div class="form-group mt-2">
                        <label>Niveau d'études</label>
                        <asp:TextBox ID="txtNiveauEtude" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Date de mariage</label>
                        <asp:TextBox ID="txtDateMariage" CssClass="form-control" runat="server" TextMode="Date" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Nombre d'enfants</label>
                        <asp:TextBox ID="txtNombreEnfant" CssClass="form-control" runat="server" TextMode="Number" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Profession</label>
                        <asp:TextBox ID="txtProfession" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Membre baptisé</label>
                        <select class="form-select" name="etremembreBaptise">
                          <option value="">-- Sélectionner --</option>
                          <option value="Oui">Oui</option>
                          <option value="Non">Non</option>
                        </select>
                      </div>
                    </div>

                    <!-- Colonne 3 -->
                    <div class="col-12 col-md-4">
                      <div class="form-group">
                        <label>Date de conversion</label>
                        <asp:TextBox ID="txtDateConversion" CssClass="form-control" runat="server" TextMode="Date" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Date de baptême</label>
                        <asp:TextBox ID="txtDateBapteme" CssClass="form-control" runat="server" TextMode="Date" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Nom de l'église sortante</label>
                        <asp:TextBox ID="txtNomEgliseSortante" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Nom du pasteur</label>
                        <asp:TextBox ID="txtNomPasteur" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Téléphone du pasteur</label>
                        <asp:TextBox ID="txtTelephonePasteur" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Référence d'église</label>
                        <asp:TextBox ID="txtReferenceEglise" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Photo</label>
                        <asp:FileUpload ID="fuPhoto" CssClass="form-control" runat="server" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Date d'enregistrement</label>
                        <asp:TextBox ID="txtDateEnregistrement" CssClass="form-control" runat="server" TextMode="Date" />
                      </div>
                      <div class="form-group mt-2">
                        <label>Statut</label>
                        <select class="form-select" name="statut">
                          <option value="">-- Sélectionner --</option>
                          <option value="Actif">Actif</option>
                          <option value="Inactif">Inactif</option>
                        </select>
                      </div>
                    </div>

                  <div class="mt-3">
                    <button class="btn btn-success" type="submit">Enregistrer</button>
                    <button type="reset" class="btn btn-danger">Annuler</button>
                  </div>

              </div>
            </div>
         <script>
             /* Données complètes pour Haïti, France, Canada */
             const data = {
                 "Haïti": {
                     "Ouest": {
                         "Port-au-Prince": ["Delmas", "Tabarre", "Pétion-Ville", "Carrefour", "Cité Soleil"],
                         "Croix-des-Bouquets": ["Croix-des-Bouquets", "Ganthier", "Thomazeau"],
                         "Léogâne": ["Léogâne", "Grand-Goâve", "Petit-Goâve"]
                     },
                     "Nord": {
                         "Cap-Haïtien": ["Cap-Haïtien", "Limonade", "Quartier-Morin"],
                         "Limbé": ["Limbé", "Bas-Limbé"],
                         "Saint-Raphaël": ["Saint-Raphaël", "Dondon", "Pignon"]
                     },
                     "Artibonite": {
                         "Gonaïves": ["Gonaïves", "Ennery", "L'Estère"],
                         "Saint-Marc": ["Saint-Marc", "Verrettes", "La Chapelle"],
                         "Dessalines": ["Dessalines", "Desdunes"]
                     },
                     "Sud": {
                         "Les Cayes": ["Les Cayes", "Torbeck", "Camp-Perrin"],
                         "Aquin": ["Aquin", "Saint-Louis-du-Sud"]
                     }
                 },

                 "France": {
                     "Île-de-France": {
                         "Paris": ["Montmartre", "La Défense", "Latin"],
                         "Versailles": ["Versailles", "Viroflay"]
                     },
                     "Provence-Alpes-Côte d’Azur": {
                         "Marseille": ["Vieux-Port", "La Joliette"],
                         "Nice": ["Nice", "Cagnes-sur-Mer"]
                     }
                 },

                 "Canada": {
                     "Québec": {
                         "Montréal": ["Plateau-Mont-Royal", "Ville-Marie", "Rosemont"],
                         "Québec": ["Sainte-Foy", "Charlesbourg"]
                     },
                     "Ontario": {
                         "Toronto": ["Downtown", "North York", "Scarborough"]
                     }
                 }
             };

             /* Charger les départements selon le pays sélectionné */
             function chargerDepartements() {
                 const pays = document.getElementById("pays").value;
                 const departement = document.getElementById("departement");
                 const arrondissement = document.getElementById("arrondissement");
                 const commune = document.getElementById("commune");

                 departement.innerHTML = '<option value="">-- Département --</option>';
                 arrondissement.innerHTML = '<option value="">-- Arrondissement --</option>';
                 commune.innerHTML = '<option value="">-- Commune --</option>';

                 if (data[pays]) {
                     for (let d in data[pays]) {
                         departement.innerHTML += `<option value="${d}">${d}</option>`;
                     }
                 }
             }

             /* Charger les arrondissements selon le département sélectionné */
             function chargerArrondissements() {
                 const pays = document.getElementById("pays").value;
                 const dept = document.getElementById("departement").value;
                 const arrondissement = document.getElementById("arrondissement");
                 const commune = document.getElementById("commune");

                 arrondissement.innerHTML = '<option value="">-- Arrondissement --</option>';
                 commune.innerHTML = '<option value="">-- Commune --</option>';

                 if (data[pays] && data[pays][dept]) {
                     for (let a in data[pays][dept]) {
                         arrondissement.innerHTML += `<option value="${a}">${a}</option>`;
                     }
                 }
             }

             /* Charger les communes selon l'arrondissement sélectionné */
             function chargerCommunes() {
                 const pays = document.getElementById("pays").value;
                 const dept = document.getElementById("departement").value;
                 const arr = document.getElementById("arrondissement").value;
                 const commune = document.getElementById("commune");

                 commune.innerHTML = '<option value="">-- Commune --</option>';

                 if (data[pays] && data[pays][dept] && data[pays][dept][arr]) {
                     data[pays][dept][arr].forEach(c => {
                         commune.innerHTML += `<option value="${c}">${c}</option>`;
                     });
                 }
             }
</script>


    </main>

</asp:Content>
