<%@ Page Title="" Language="C#" MasterPageFile="~/Vue/AdminMaster.Master" AutoEventWireup="true" CodeBehind="FormeRechercheMembre.aspx.cs" Inherits="SysEden.Vue.FormeRechercheMembre" %>

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
    <link rel="stylesheet" href="../SiteAssets/css/pages/membre.css" />
    <link rel="icon" href="../SiteAssets/img/img 03" />
    <script src="../SiteAssets/js/vendors/jquery.min.js"></script>
    <script src="../SiteAssets/js/vendors/bootstrap.bundle.min.js"></script>
    <script src="../SiteAssets/js/global.js"></script>
    <script src="../SiteAssets/js/membre.js"></script>
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
    <div class="section patients-table-view">

        <!-- Formulaire de recherche -->
        <div class="row" style="margin-bottom: 20px; padding-top: 80px;">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Rechercher un membre</h4>
                    </div>
                    <div class="card-body">
                        <div class="row g-3">
                            <div class="col-md-3">
                                <asp:TextBox ID="txtRechercheCode" CssClass="form-control" Placeholder="Code membre"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtRechercheNom" CssClass="form-control" Placeholder="Nom"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="txtRecherchePrenom" CssClass="form-control" Placeholder="Prénom"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="btnRechercher" runat="server" CssClass="btn btn-primary" Text="Rechercher" OnClick="btnRechercher_Click" />
                                <asp:Button ID="btnReinitialiser" runat="server" CssClass="btn btn-secondary" Text="Réinitialiser" OnClick="btnReinitialiser_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- GridView pour afficher les résultats -->
        <asp:GridView ID="GridViewRechercherMembre" runat="server" AutoGenerateColumns="False"
            CssClass="table table-hover table-striped table-bordered"
            GridLines="None" BorderStyle="None" CellPadding="4"
            OnSelectedIndexChanged="GridViewMembre_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="codeMembre" HeaderText="Code Membre" />
                <asp:BoundField DataField="nom" HeaderText="Nom" />
                <asp:BoundField DataField="prenom" HeaderText="Prénom" />
                <asp:BoundField DataField="sexe" HeaderText="Sexe" />
                <asp:BoundField DataField="adresse" HeaderText="Adresse" />
                <asp:BoundField DataField="telephone" HeaderText="Téléphone" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="statut" HeaderText="Statut" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <a class="btn btn-sm btn-primary" href='<%# "FormeEnregistrerMembre.aspx?codeMembre=" + Eval("codeMembre") %>'>Voir Plus</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <!-- SqlDataSource -->
        <asp:SqlDataSource ID="SqlDataSourceMembre" runat="server"
            ConnectionString="<%$ ConnectionStrings:DBSysEdenConnectionString2 %>"
            SelectCommand="SELECT * FROM tbmembre"></asp:SqlDataSource>

    </div>
</main>

        </div>
    </form>
</body>
</html>
</asp:Content>
