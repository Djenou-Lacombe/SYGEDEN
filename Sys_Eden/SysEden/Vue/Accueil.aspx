<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="SysEden.Vue.Accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
<head runat="server">
    <title></title>
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
                                <a class="nav-link profile-dropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="las la-user mr-2"></i>
                                    <span class="d">
                                        <asp:Label ID="lbnomentete" runat="server" 
                                            Text="..."></asp:Label></span>
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
                    <ul class="list-group list-group-flush" style="left: 0px; top: 102px">
                        <a class="list-group-item" href="Accueil.aspx" data-toggle="tooltip" data-placement="bottom" title="Dashboard">
                            <i class="las la-shapes la-lw"></i><span>dashboard</span>


                        </a>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="patientsDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-user-injured la-lw"></i><span>Patients</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="patientsDropdown">
                                <a class="dropdown-item" href="Patient.aspx">Ajouter patient</a>
                                <a class="dropdown-item" href="ListePatient.aspx">Liste Patient</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="medecinsDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-user-md la-lw"></i><span>Medecins</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="medecinsDropdown">
                                <a class="dropdown-item" href="FormeMedecin.aspx">Ajouter Medecin</a>
                                <a class="dropdown-item" href="ListeMedecin.aspx">Liste Medecin</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="rdvDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-calendar-check la-lw"></i><span>Rendez-vous</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="rdvDropdown">
                                <a class="dropdown-item" href="ListeRendezVousADM.aspx">Liste Rendez-vous</a>
                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle list-group-item" href="#" id="rapportsDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="las la-file-alt la-lw"></i><span>Rapports</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="rapportsDropdown">
                                <a class="dropdown-item" href="RapportListeDesPatient.aspx">Liste des patients</a>
                                <a class="dropdown-item" href="RapportListeMedecin.aspx">Liste des Medecins</a>
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

                <div class="main-content">
                    <div class="container-fluid">

                        <div class="section">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5 class="page-title"></h5>
                                </div>
                            </div>
                        </div>

                        <div class="section welcome-section">
                            <div class="section-content">
                                <div class="card-deck">
                                    <div class="card welcome-content-card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6 welcome-text-wrapper align-self-center">
                                                    <h5>
                                                        <asp:Label ID="lbnom" runat="server" Text="..."></asp:Label>
                                                    </h5>
                                                    <p>Bienvenue sur POWERFULMED</p>
                                                </div>
                                                <div class="col-md-6 welcome-img-wrapper">
                                                    <img src="../SiteAssets/images/hello.svg" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card app-stats-card">
                                        <div class="card-body">
                                            <div class="row text-center">
                                                <div class="col-md-4">
                                                    <i class="las la-user-injured la-3x align-self-center"></i>
                                                    <p>total patients</p>
                                                    <h4><a href="">
                                                        <asp:Label ID="lbnombrePatient" runat="server" Text=""></asp:Label></a></h4>
                                                </div>
                                                <div class="col-md-4">
                                                    <i class="las la-user-md la-3x align-self-center"></i>
                                                    <p>total Medecins</p>
                                                    <h4><a href="">
                                                        <asp:Label ID="lbnombreMedecin" runat="server" Text=""></asp:Label></a></h4>
                                                    </a></h4>
                                               
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- .card-deck -->
                            </div>
                            <!-- .section-content -->
                        </div>
                        <!-- .welcome-section -->

                        <div class="section functionality-section">
                            <div class="section-content">
                                <div class="card-deck">



                                    <a class="card text-center" href="FormeMedecin.aspx">
                                        <div class="card-title">
                                            <div class="icon-wrapper"><i class="las la-user-md"></i></div>
                                        </div>
                                        <div class="card-body">
                                            <p>Ajouter un Medecin</p>
                                        </div>
                                    </a>

                                    <a class="card text-center" href="Patient.aspx">
                                        <div class="card-title">
                                            <div class="icon-wrapper"><i class="las la-user-plus"></i></div>
                                        </div>
                                        <div class="card-body">
                                            <p>Ajouter un Patient</p>
                                        </div>
                                    </a>

                                    <a class="card text-center" href="FormeAdm.aspx">
                                        <div class="card-title">
                                            <div class="icon-wrapper"><i class="las la-user-lock"></i></div>
                                        </div>
                                        <div class="card-body">
                                            <p>Ajouter un ADM</p>
                                        </div>
                                    </a>




                                </div>
                            </div>
                        </div>

                        <div class="section card-summaries">
                            <div class="section-content">

                                <div class="card-deck">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Total Enregistrement</h5>
                                        </div>
                                        <div class="card-body">
                                            <canvas id="recent-activity-chart"></canvas>
                                        </div>
                                    </div>
                                    <asp:HiddenField ID="hfTotalLabels" runat="server" />
                                    <asp:HiddenField ID="hfTotalData" runat="server" />

                                    <asp:HiddenField ID="hfLabels" runat="server" />
                                    <asp:HiddenField ID="hfData" runat="server" />

                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Rendez-vous par jour</h5>
                                        </div>
                                        <div class="card-body">
                                            <canvas id="bookings-chart"></canvas>
                                        </div>
                                    </div>

                                </div>

                                <div class="card-deck" style="margin-top: 1rem;">

                                    <div class="card">
                                        <div class="card-header">
                                            <h5>Principaux traitements</h5>
                                        </div>
                                        <div class="card-body">
                                            <ol type="1">
                                                <li>Consultation</li>
                                                <li>Détartrage</li>
                                                <li>Traitement de canal</li>
                                                <li>Blanchiment</li>
                                                <li>Transplantations</li>
                                                <li>Césarienne</li>
                                                <li>Radiographies</li>
                                            </ol>
                                        </div>
                                        <div class="card-footer">
                                        </div>
                                    </div>








                                </div>
                                <!-- second card-deck -->

                                <!-- third card-deck -->

                            </div>
                            <!-- .section-content -->
                        </div>
                        <!-- .card-summaries -->



                    </div>
                    <!-- .container-fluid -->
                </div>
                <!-- .main-content -->
            </main>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var labels = [<%= hfLabels.Value %>];
                var data = [<%= hfData.Value %>];

                var ctx = document.getElementById('bookings-chart').getContext('2d');
                new Chart(ctx, {
                    type: 'bar', // ou 'line' si tu préfères
                    data: {
                        labels: labels,
                        datasets: [{
                            label: 'Nombre de rendez-vous',
                            data: data,
                            backgroundColor: 'rgba(54, 162, 235, 0.5)',
                            borderColor: 'rgba(54, 162, 235, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: true,
                        scales: {
                            y: {
                                beginAtZero: true,
                                precision: 0
                            }
                        }
                    }
                });
            });

            // Chart Total Enregistrement
            var ctx1 = document.getElementById("recent-activity-chart").getContext("2d");
            var totalChart = new Chart(ctx1, {
                type: 'bar',
                data: {
                    labels: [<%= hfTotalLabels.Value %>],
            datasets: [{
                label: 'Total',
                data: [<%= hfTotalData.Value %>],
                backgroundColor: ['#36a2eb', '#ff6384', '#4bc0c0']
            }]
        }
    });
        </script>

    </form>
</body>
</html>
