<%@ Page Title="" Language="C#" MasterPageFile="~/Vue/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ListeMembre.aspx.cs" Inherits="SysEden.Vue.FormeListeMembre" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main> 

    <div class="side-nav">
                    <ul class="list-group list-group-flush" style="left: 0px; top: 102px">
                        <a class="list-group-item" href="Accueil.aspx" data-toggle="tooltip" data-placement="bottom" title="Dashboard">
                            <i class="las la-shapes la-lw"></i><span>dashboard</span>


                        </a>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="membreDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-user-injured la-lw"></i><span>Patients</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="membresDropdown">
                                <a class="dropdown-item" href="membre.aspx">Ajoute membre</a>
                                <a class="dropdown-item" href="ListeMembre.aspx">Liste membre</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="pasteurDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-user-md la-lw"></i><span>Pasteur</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="medecinsDropdown">
                                <a class="dropdown-item" href="FormeEnregitrerPasteur.aspx">Créer Pasteur</a>
                                <a class="dropdown-item" href="ListePasteur.aspx">Liste Pasteur</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="rdvDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-calendar-check la-lw"></i><span>Rendez-vous</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="rdvDropdown">
                                <a class="dropdown-item" href="ListeRendezVous.aspx">Liste Rendez-vous</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="rapportsDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-file-alt la-lw"></i><span>Rapports</span>
                            </a>
                           <div class="dropdown-menu" aria-labelledby="rapportsDropdown">
                                <a class="dropdown-item" href="RapportListeDesMembre.aspx">Liste des Membres</a>
                                <a class="dropdown-item" href="RapportListePasteur.aspx">Liste des Pasteurs</a>
                                <a class="dropdown-item" href="RapportListeRendezVous.aspx">Liste des Rendez-vous</a>
                            </div>
                        </li>

                        <!-- Utiliser un <a> autour du LinkButton pour qu'il ait le même style -->
                <a class="list-group-item" href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" title="Se Déconnecter">
                  <span>
                        <asp:LinkButton ID="LinkDeconnexion" runat="server" OnClick="LinkDeconnexion_Click1" class="list-group-item">Se Deconnecter</asp:LinkButton>
                    </span>
                </a>


                        <hr class="divider" />


                    </ul>
                </div>

                <div class="section patients-table-view">

                    <!-- ✅ Filtres à gauche, bouton à droite -->
                    <div class="row" style="margin-bottom: 20px; padding-top: 80px;">
                        <div class="row">
    <div class="col-md-6 d-flex align-items-center">
        <!-- Bouton Trier par -->
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Trier par</button>
            <div class="dropdown-menu shadow-lg" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href='<%= ResolveUrl("~/Vue/ListeMembre.aspx") %>'>Liste Membre</a>
                <a class="dropdown-item" href='<%= ResolveUrl("~/Vue/ListeMembreActif.aspx") %>'>Membre Actif</a>
                <a class="dropdown-item" href='<%= ResolveUrl("~/Vue/ListeMembreInactif.aspx") %>'>Membre Inactif</a>
            </div>
        </div>

        <!-- Espace -->
        <div style="width: 20px;"></div>

        <!-- Formulaire de recherche ASP.NET -->
        <asp:Panel runat="server" CssClass="d-flex align-items-center">
            <asp:TextBox ID="txtnomrechercher" runat="server" CssClass="form-control mr-2" Placeholder="Nom membre" Width="179px" />
            <asp:Button ID="btnRechercher" runat="server" CssClass="btn btn-primary" Text="Rechercher" OnClick="btnRechercher_Click" />
        </asp:Panel>
    </div>
</div>

                        <div class="col-md-6 text-right">
                            <button class="btn btn-dark-red-f-gr" style="margin-top: 10px;">
                                <a class="dropdown-item" href='<%= ResolveUrl("~/Vue/Membre.aspx") %>'><i class="las la-plus-circle"></i>Ajout Membre</a>
                            </button>
                        </div>
                    </div>

                    <asp:Label ID="Lb2" runat="server"></asp:Label>

                    <asp:GridView ID="GridViewPatients" runat="server" AutoGenerateColumns="False"
                        CssClass="table table-hover table-striped table-bordered"
                        GridLines="None" BorderStyle="None" CellPadding="4"
                        OnSelectedIndexChanged="GridViewPatients_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="code_Membre" HeaderText="CodeMembre" />
                            <asp:BoundField DataField="nom" HeaderText="Nom" />
                            <asp:BoundField DataField="prenom" HeaderText="Prenom" />
                            <asp:BoundField DataField="sexe" HeaderText="Sexe" />
                            <asp:BoundField DataField="adresse" HeaderText="Adresse" />
                            <asp:BoundField DataField="telephone" HeaderText="Téléphone" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="statut" HeaderText="Statut" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <a class="btn btn-sm btn-primary"
                                       href='<%# "ListerMembre.aspx?Membre=" + Eval("codeMembre") %>'>Voir Plus
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:dbConnect %>"
                        SelectCommand="SELECT * FROM [tbmembre]"></asp:SqlDataSource>

                </div>
</main>

</asp:Content>
