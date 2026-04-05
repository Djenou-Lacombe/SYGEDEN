<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccueilPasteur.aspx.cs" Inherits="SysEden.Vue.AccueilPasteur" %>

<!DOCTYPE html> 
<html> 
<head runat="server"> 
    <title>Tableau de bord Pasteur - SysEden</title> 

    <link rel="stylesheet" href="../SiteAssets/css/vendors/bootstrap.min.css" /> 
    <link rel="stylesheet" href="../SiteAssets/css/vendors/line-awesome.min.css" /> 
    <script src="../SiteAssets/js/vendors/Chart.bundle.min.js"></script> 
</head> 

<body> 
<form id="form1" runat="server"> 

<div class="container mt-4"> 

    <!-- 🔵 Bienvenue --> 
    <div class="card shadow mb-4"> 
        <div class="card-body"> 
            <h4> 
                Bienvenue Pasteur 
                <asp:Label ID="lbNomPasteur" runat="server"></asp:Label> 
            </h4> 
            <p>Que Dieu vous guide dans votre ministère aujourd'hui 🙏</p> 
        </div> 
    </div> 

    <!-- 🔵 Statistiques --> 
    <div class="row text-center"> 

        <div class="col-md-3"> 
            <div class="card bg-primary text-white shadow"> 
                <div class="card-body"> 
                    <i class="las la-users la-2x"></i> 
                    <h5>Nombre total de membres</h5> 
                    <h3><asp:Label ID="lblTotalMembre" runat="server"></asp:Label></h3> 
                </div> 
            </div> 
        </div> 

        <div class="col-md-3"> 
            <div class="card bg-success text-white shadow"> 
                <div class="card-body"> 
                    <i class="las la-praying-hands la-2x"></i> 
                    <h5>Total Pasteurs</h5> 
                    <h3><asp:Label ID="lblTotalPasteur" runat="server"></asp:Label></h3> 
                </div> 
            </div> 
        </div> 

        <div class="col-md-3"> 
            <div class="card bg-warning text-white shadow"> 
                <div class="card-body"> 
                    <i class="las la-calendar la-2x"></i> 
                    <h5>Rendez-vous aujourd'hui</h5> 
                    <h3><asp:Label ID="lblRdvAujourdhui" runat="server"></asp:Label></h3> 
                </div> 
            </div> 
        </div> 

        <div class="col-md-3"> 
            <div class="card bg-info text-white shadow"> 
                <div class="card-body"> 
                    <i class="las la-bible la-2x"></i> 
                    <h5>Activités de la semaine</h5>
                    <h3><asp:Label ID="lblActivites" runat="server"></asp:Label></h3> 
                </div> 
            </div> 
        </div> 

    </div> 

    <!-- 🔵 Rendez-vous du jour --> 
    <div class="card shadow mt-4"> 
        <div class="card-header"> 
            <h5>Rendez-vous du jour</h5> 
        </div> 
        <div class="card-body"> 

            <asp:GridView ID="GridViewRdv" 
                runat="server" 
                AutoGenerateColumns="False" 
                CssClass="table table-bordered table-striped"> 

                <Columns> 
                    <asp:BoundField DataField="nomMembre" HeaderText="Membre" /> 
                    <asp:BoundField DataField="dateRendezVous" HeaderText="Date" /> 
                    <asp:BoundField DataField="heureRendezVous" HeaderText="Heure" /> 
                </Columns> 

            </asp:GridView> 

        </div> 
    </div> 

    <!-- 🔵 Graphique --> 
    <div class="card shadow mt-4"> 
        <div class="card-header"> 
            <h5>Répartition des membres</h5> 
        </div> 
        <div class="card-body"> 
            <canvas id="chartMembres"></canvas> 
        </div> 
    </div> 

</div> 

</form> 
</body> 
</html>
