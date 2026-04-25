<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormeAdm.aspx.cs" Inherits="SysEden.Vue.FormeAdm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- CSS -->
    <link rel="stylesheet" href="../SiteAssets/css/vendors/bootstrap.min.css" />
    <link rel="stylesheet" href="../SiteAssets/css/vendors/line-awesome.min.css" />
    <link rel="stylesheet" href="../SiteAssets/css/pages/layout.css" />
    <link rel="stylesheet" href="../SiteAssets/css/pages/dashboard.css" />
    <link rel="stylesheet" href="../SiteAssets/css/vendors/Chart.min.css" />

    <!-- Favicon -->
    <link rel="icon" href="../SiteAssets/images/covid-19.ico" />

    <!-- JS -->
    <script src="../SiteAssets/js/vendors/jquery.min.js"></script>
    <script src="../SiteAssets/js/vendors/bootstrap.bundle.min.js"></script>
    <script src="../SiteAssets/js/global.js"></script>
    <script src="../SiteAssets/js/vendors/Chart.bundle.min.js"></script>
    <script src="../SiteAssets/js/dashboard.js"></script>

    <title>Ajouter Administrateur</title>

</head>

<body>
    <form id="form1" runat="server">

    <div>

        <header>
            <nav class="navbar navbar-expand-lg shadow-sm fixed-top">
                <a class="navbar-brand" href="">
                    <img src="../SiteAssets/images/hospital-website.svg" />
                    <span>POWERFULMED</span>
                </a>

                <div class="navbar-collapse">
                    <ul class="navbar-nav">

                        <!-- Profile -->
                        <li class="nav-item">
                            <a class="nav-link profile-dropdown" href="#" role="button" data-toggle="dropdown">
                                <i class="las la-user mr-2"></i>
                                <span class="d">
                                    <asp:Label ID="lbnomentete" runat="server" Text="..."></asp:Label>
                                </span>
                            </a>

                            <div class="dropdown">
                                <div class="dropdown-menu shadow-lg profile-dropdown-menu">
                                    <a class="dropdown-item" href="#">
                                        <i class="las la-user mr-2"></i>profile
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="las la-cog mr-2"></i>settings
                                    </a>
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

                    <li>
                        <a class="list-group-item" href="Accueil.aspx">
                            <i class="las la-shapes la-lw"></i>
                            <span>dashboard</span>
                        </a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle list-group-item" href="#" data-toggle="dropdown">
                            <i class="las la-user-injured la-lw"></i><span>Patients</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="DossierPatient.aspx">Ajout patient</a>
                            <a class="dropdown-item" href="ListePatient.aspx">Liste Patient</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle list-group-item" href="#" data-toggle="dropdown">
                            <i class="las la-user-md la-lw"></i><span>Medecins</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="FormeMedecin.aspx">Ajout Medecin</a>
                            <a class="dropdown-item" href="ListeMedecin.aspx">Liste Medecin</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle list-group-item" href="#" data-toggle="dropdown">
                            <i class="las la-calendar-check la-lw"></i><span>Rendez-vous</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="ListeRendezVous.aspx">Liste Rendez-vous</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle list-group-item" href="#" data-toggle="dropdown">
                            <i class="las la-file-alt la-lw"></i><span>Rapports</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="RapportListeDesPatient.aspx">Liste des patients</a>
                            <a class="dropdown-item" href="RapportListeMedecin.aspx">Liste des Medecins</a>
                            <a class="dropdown-item" href="RapportListeRendezVous.aspx">Liste des Rendez-vous</a>
                        </div>
                    </li>

                    <!-- Déconnexion -->
                    <li>
                        <asp:LinkButton
                            ID="LinkDeconnexion"
                            runat="server"
                            CssClass="list-group-item"
                            OnClick="LinkDeconnexion_Click1">
                            Se Deconnecter
                        </asp:LinkButton>
                    </li>

                    <hr class="divider" />

                </ul>
            </div>

            <div class="main-content">
                <div class="container-fluid">

                    <div class="section">
                        <h5 class="page-title"></h5>
                    </div>

                    <div class="section profile-section">
                        <div class="card container">

                            <div class="card-header">
                                <h5>Nouveau Adm</h5>
                            </div>

                            <div class="card-body">

                                <div class="row">
                                    <div class="col-lg-2 col-md-4">
                                        <img class="rounded-circle" src="../SiteAssets/images/doctor.svg" />
                                    </div>
                                </div>

                                <div class="user-details-form">

                                    <div class="form-row">

                                        <div class="form-group col-sm-6">
                                            <label>Code Utilisateur</label>
                                            <asp:TextBox ID="txtcode" class="form-control" runat="server" Enabled="False"></asp:TextBox>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <label>Prenom</label>
                                            <asp:TextBox ID="txtprenom" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <label>Nom</label>
                                            <asp:TextBox ID="txtnom" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <label>Privilege</label>
                                            <asp:DropDownList ID="cmbPrivilege" class="form-control" runat="server">
                                                <asp:ListItem>Directeur Générale</asp:ListItem>
                                                <asp:ListItem>Administrateur Médicale</asp:ListItem>
                                                <asp:ListItem>Administrateur Financière</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <label>Nom Utilisateur</label>
                                            <asp:TextBox ID="txtnomuser" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <label>Mot de passe</label>
                                            <asp:TextBox ID="txtmotpasse" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                        </div>

                                        <div class="form-group col-sm-6">
                                            <label>Status</label>
                                            <asp:TextBox ID="txtStatus" class="form-control" runat="server" Enabled="False">Actif</asp:TextBox>
                                        </div>

                                    </div>

                                    <div class="form-group col-sm-6">

                                        <asp:Button ID="btnEnregistrer" CssClass="btn btn-dark-red-f-gr mt-4" runat="server"
                                            Text="Enregistrer" OnClick="btnEnregistrer_Click" />

                                        <asp:Button ID="btnAnnuler" CssClass="btn btn-dark-red-f-gr mt-4" runat="server"
                                            Text="Annuler" OnClick="btnAnnuler_Click" />

                                        <asp:Label ID="lmessage" runat="server"></asp:Label>

                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </div>

        </main>

    </div>

    </form>
</body>
</html>