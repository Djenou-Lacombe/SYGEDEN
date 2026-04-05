<%@ Page Title="" Language="C#" MasterPageFile="~/Vue/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ListePasteur.aspx.cs" Inherits="SysEden.Vue.FormeListePasteur" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../SiteAssets/css/vendors/bootstrap.min.css" />
    <link rel="stylesheet" href="../SiteAssets/css/vendors/line-awesome.min.css" />
    <link rel="stylesheet" href="../SiteAssets/css/pages/layout.css" />
    <link rel="stylesheet" href="../SiteAssets/css/pages/patients.css" />
    <link rel="icon" href="../SiteAssets/images/covid-19.ico" />
    <script src="../SiteAssets/js/vendors/jquery.min.js"></script>
    <script src="../SiteAssets/js/vendors/bootstrap.bundle.min.js"></script>
    <script src="../SiteAssets/js/global.js"></script>
    <script src="../SiteAssets/js/membre.js"></script>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <nav class="navbar navbar-expand-lg shadow-sm fixed-top">
                    <a class="navbar-brand" href="#">
                        <img src="../SiteAssets/images/hospital-website.svg" />
                        <span>SysEden</span>
                    </a>
                    <div class="navbar-collapse">
                        <ul class="navbar-nav">


                             <!-- Profile -->
                <li class="nav-item">
                    <a class="nav-link profile-dropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="las la-user mr-2"></i>
                        <span class="d"><asp:Label ID="lbnomentete" runat="server" Text="..."></asp:Label></span>
                    </a>
                    <div class="dropdown">
                        <div class="dropdown-menu shadow-lg profile-dropdown-menu" aria-labelledby="profile-dropdown">
                            <a class="dropdown-item" href="#"><i class="las la-user mr-2"></i>profile</a>
                            <a class="dropdown-item" href="#"><i class="las la-cog mr-2"></i>settings</a>
                        </div>
                    </div>
                </li>

                        </ul>
                    </div>
                </nav>
            </header>
    <main>
                <div class="side-nav">
                    <ul class="list-group list-group-flush">
                        <a class="list-group-item" href="Accueil.aspx" data-toggle="tooltip" data-placement="bottom" title="Dashboard">
                            <i class="las la-shapes la-lw"></i><span>dashboard</span>


                        </a>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="patientsDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-user-injured la-lw"></i><span>Membres</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="patientsDropdown">
                                <a class="dropdown-item" href="DossierMembre.aspx">Ajout membre</a>
                                <a class="dropdown-item" href="ListeMembre.aspx">Liste membre</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="PasteurDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-user-md la-lw"></i><span>Pasteur</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="PasteurDropdown">
                                <a class="dropdown-item" href="Formeasteur.aspx">Ajout Pasteur</a>
                                <a class="dropdown-item" href="ListeDocteur.aspx">Liste Docteur</a>
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
                                <a class="dropdown-item" href="RapportListePasteur.aspx">Liste des Pasteur</a>
                                
                            </div>
                        </li>

                        <!-- Utiliser un <a> autour du LinkButton pour qu'il ait le même style -->
                <a class="list-group-item" href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" title="Se Déconnecter">
                  <span>
                        <asp:LinkButton ID="LinkDeconnexion" runat="server" OnClick="LinkDeconnexion_Click1" class="list-group-item" CssClass="auto-style1">Se Deconnecter</asp:LinkButton>
                    </span>
                </a>


                        <hr class="divider" />


                    </ul>
                </div>

                  <!-- Espace -->
     

                <div class="section pasteur-table-view">



                    <!-- ✅ Filtres à gauche, bouton à droite -->
                    <div class="row" style="margin-bottom: 20px; padding-top: 80px;">
    <div class="col-md-6 d-flex align-items-center">
        <!-- Champ recherche et bouton -->
        <asp:TextBox ID="txtnomrechercher" runat="server" 
            CssClass="form-control mr-2" 
            Placeholder="Idpasteur"
            Width="200px" />
        <asp:Button ID="btnRechercher" runat="server" 
            CssClass="btn btn-primary mr-3" 
            Text="Rechercher" 
            OnClick="btnRechercher_Click" />

        <!-- Dropdown Trier -->
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" 
                    id="dropdownMenuButton" data-toggle="dropdown" 
                    aria-haspopup="true" aria-expanded="false">
                Trier par</button>
            <div class="dropdown-menu shadow-lg" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href='<%= ResolveUrl("~/Vue/ListepasteurActif.aspx") %>'>Pasteur Actifs</a>
                <a class="dropdown-item" href='<%= ResolveUrl("~/Vue/ListepasteurInactif.aspx") %>'>Pasteur Inactifs</a>
            </div>
        </div>
    </div>

    <div class="col-md-6 text-right">
        <a href='<%= ResolveUrl("~/Vue/FormeMedecin.aspx") %>' class="btn btn-dark-red-f-gr" style="margin-top: 10px;">
            <i class="las la-plus-circle"></i> Ajoute pasteur
        </a>
    </div>
</div>


                    <asp:Label ID="Lb2" runat="server"></asp:Label>

                    <asp:GridView ID="GridViewMedecins" runat="server" AutoGenerateColumns="False"
                        CssClass="table table-hover table-striped table-bordered"
                        GridLines="None" BorderStyle="None" CellPadding="4"
                        OnSelectedIndexChanged="GridViewMedecins_SelectedIndexChanged" DataKeyNames="Id_Pasteur">
                        <Columns>
                            <asp:BoundField DataField="id_Pasteur" HeaderText="id_Pasteur" SortExpression="id_Membre" />
                            <asp:BoundField DataField="dateNomination" HeaderText="dateNomination" SortExpression="dateNomination" />
                             <asp:BoundField DataField="statut" HeaderText="Statut" />
                             <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <a class="btn btn-sm btn-primary"
                                       href='<%# "FormeEnregistrerPasteur.aspx?idPasteur=" + Eval("id_Pasteur") %>'>Voir Plus
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnect %>" SelectCommand="SELECT * FROM [tbpasteur]"></asp:SqlDataSource>

                </div>
                </main>
              </div>
    </form>
</body>
</html>
</asp:Content>
