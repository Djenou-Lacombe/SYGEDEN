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
                        <asp:TextBox ID="txtCodeMembre" CssClass="form-control" runat="server" readonly="true" />
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
                        <label for="ddlSexe" class="form-control-label">Sexe</label>
                        <asp:DropDownList ID="ddlSexe" runat="server" CssClass="form-control" Width="100%">
                            <asp:ListItem Value="">-- Sélectionner --</asp:ListItem>
                            <asp:ListItem Value="Féminin">Féminin</asp:ListItem>
                            <asp:ListItem Value="Masculin">Masculin</asp:ListItem>
                        </asp:DropDownList>
                      </div>                            

                      <div class="form-group mt-2">
                        <label>Date de naissance</label>
                        <asp:TextBox ID="txtDateNaissance" CssClass="form-control" runat="server" TextMode="Date" />
                      </div>

                      <!-- Lieu de naissance -->
                      <div class="form-group mt-2">
                          <label>Lieu de naissance</label>

                          <!-- Pays -->
                          <asp:DropDownList ID="ddlPays" runat="server" CssClass="form-select mb-2" Width="100%"
                              onchange="chargerDepartements()">
                              <asp:ListItem Value="">-- Pays --</asp:ListItem>
                              <asp:ListItem Value="Haïti">Haïti</asp:ListItem>
                              <asp:ListItem Value="France">France</asp:ListItem>
                              <asp:ListItem Value="Canada">Canada</asp:ListItem>
                          </asp:DropDownList>

                          <!-- Département -->
                          <asp:DropDownList ID="ddlDepartement" runat="server" CssClass="form-select mb-2" Width="100%"
                              onchange="chargerArrondissements()">
                              <asp:ListItem Value="">-- Département --</asp:ListItem>
                          </asp:DropDownList>

                          <!-- Arrondissement -->
                          <asp:DropDownList ID="ddlArrondissement" runat="server" CssClass="form-select mb-2" Width="100%"
                              onchange="chargerCommunes()">
                              <asp:ListItem Value="">-- Arrondissement --</asp:ListItem>
                          </asp:DropDownList>

                          <!-- Commune -->
                          <asp:DropDownList ID="ddlCommune" runat="server" CssClass="form-select" Width="100%">
                              <asp:ListItem Value="">-- Commune --</asp:ListItem>
                          </asp:DropDownList>
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
                        <asp:DropDownList ID="ddlEtatCivil" runat="server" CssClass="form-select" Width="100%">
                            <asp:ListItem Value="">-- Sélectionner --</asp:ListItem>
                            <asp:ListItem Value="Célibataire">Célibataire</asp:ListItem>
                            <asp:ListItem Value="Marié">Marié</asp:ListItem>
                            <asp:ListItem Value="Divorcé">Divorcé</asp:ListItem>
                            <asp:ListItem Value="Veuf">Veuf</asp:ListItem>
                        </asp:DropDownList>
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
                        <asp:DropDownList ID="ddlMembreBaptise" runat="server" CssClass="form-select" Width="100%">
                            <asp:ListItem Value="">-- Sélectionner --</asp:ListItem>
                            <asp:ListItem Value="Oui">Oui</asp:ListItem>
                            <asp:ListItem Value="Non">Non</asp:ListItem>
                        </asp:DropDownList>
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
                        <asp:DropDownList ID="ddlStatut" runat="server" CssClass="form-select" Width="100%">
                            <asp:ListItem Value="">-- Sélectionner --</asp:ListItem>
                            <asp:ListItem Value="Actif">Actif</asp:ListItem>
                            <asp:ListItem Value="Inactif">Inactif</asp:ListItem>
                        </asp:DropDownList>
                      </div>
                    </div>

                  </div><%-- fin .row --%>

                  <div class="mt-3">
                    <asp:Button ID="btnEnregistrer" runat="server" Text="Enregistrer" CssClass="btn btn-success" OnClick="btnEnregistrer_Click" />
                    <asp:Button ID="btnAnnuler" runat="server" Text="Annuler" CssClass="btn btn-danger" CausesValidation="false"
                        OnClientClick="resetForm(); return false;" />
                  </div>

              </div><%-- fin .card-body --%>
            </div><%-- fin .card --%>

         <div id="toastBox" style="position: fixed; top: 20px; right: 20px; z-index: 9999;"></div>

        <script>
            function showToast(type, message) {

                var toast = document.createElement("div");

                // styles de base
                toast.style.minWidth = "250px";
                toast.style.marginBottom = "10px";
                toast.style.padding = "15px 20px";
                toast.style.borderRadius = "8px";
                toast.style.color = "#fff";
                toast.style.fontWeight = "500";
                toast.style.boxShadow = "0 5px 15px rgba(0,0,0,0.2)";
                toast.style.opacity = "0";
                toast.style.transition = "all 0.5s";

                // couleurs selon type
                if (type === "success") {
                    toast.style.background = "#28a745";
                    message = "✅ " + message;
                } else if (type === "error") {
                    toast.style.background = "#dc3545";
                    message = "❌ " + message;
                } else {
                    toast.style.background = "#ffc107";
                    toast.style.color = "#000";
                    message = "⚠️ " + message;
                }

                toast.innerHTML = message;

                document.getElementById("toastBox").appendChild(toast);

                // animation entrée
                setTimeout(() => {
                    toast.style.opacity = "1";
                    toast.style.transform = "translateX(-10px)";
                }, 100);

                // suppression après 3s
                setTimeout(() => {
                    toast.style.opacity = "0";
                    setTimeout(() => {
                        toast.remove();
                    }, 500);
                }, 3000);
            }
        </script>
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
                     "Provence-Alpes-Côte d'Azur": {
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

             /* Récupère le select rendu par asp:DropDownList via son ClientID */
             function getDDL(aspId) {
                 // ASP.NET rend l'ID sous forme "ctl00_ContentPlaceHolder1_<ID>"
                 // On utilise un sélecteur partiel pour être robuste
                 return document.querySelector('[id$="' + aspId + '"]');
             }

             function chargerDepartements() {
                 const pays = getDDL('ddlPays').value;
                 const ddlDept = getDDL('ddlDepartement');
                 const ddlArr = getDDL('ddlArrondissement');
                 const ddlCom = getDDL('ddlCommune');

                 ddlDept.innerHTML = '<option value="">-- Département --</option>';
                 ddlArr.innerHTML = '<option value="">-- Arrondissement --</option>';
                 ddlCom.innerHTML = '<option value="">-- Commune --</option>';

                 if (data[pays]) {
                     for (let d in data[pays]) {
                         ddlDept.innerHTML += `<option value="${d}">${d}</option>`;
                     }
                 }
             }

             function chargerArrondissements() {
                 const pays = getDDL('ddlPays').value;
                 const dept = getDDL('ddlDepartement').value;
                 const ddlArr = getDDL('ddlArrondissement');
                 const ddlCom = getDDL('ddlCommune');

                 ddlArr.innerHTML = '<option value="">-- Arrondissement --</option>';
                 ddlCom.innerHTML = '<option value="">-- Commune --</option>';

                 if (data[pays] && data[pays][dept]) {
                     for (let a in data[pays][dept]) {
                         ddlArr.innerHTML += `<option value="${a}">${a}</option>`;
                     }
                 }
             }

             function chargerCommunes() {
                 const pays = getDDL('ddlPays').value;
                 const dept = getDDL('ddlDepartement').value;
                 const arr = getDDL('ddlArrondissement').value;
                 const ddlCom = getDDL('ddlCommune');

                 ddlCom.innerHTML = '<option value="">-- Commune --</option>';

                 if (data[pays] && data[pays][dept] && data[pays][dept][arr]) {
                     data[pays][dept][arr].forEach(c => {
                         ddlCom.innerHTML += `<option value="${c}">${c}</option>`;
                     });
                 }
             }

             function resetForm() {
                 document.querySelectorAll('input[type=text], input[type=email], input[type=date], input[type=number]')
                     .forEach(el => el.value = '');
                 document.querySelectorAll('select').forEach(el => el.selectedIndex = 0);
             }
         </script>

    </main>

</asp:Content>
