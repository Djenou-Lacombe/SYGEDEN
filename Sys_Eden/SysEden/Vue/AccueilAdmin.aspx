<%@ Page Title="" Language="C#" MasterPageFile="~/Vue/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AccueilAdmin.aspx.cs" Inherits="SysEden.Vue.AccueilAdmin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <main>
<div class="container">
          <div class="page-inner">
            <div
              class="d-flex align-items-left align-items-md-center flex-column flex-md-row pt-2 pb-4"
            >
              <div>
                <h3 class="fw-bold mb-3">Dashboard</h3>
                <h6 class="op-7 mb-2">Tableau de bord</h6>
              </div>
              <div class="ms-md-auto py-2 py-md-0">
                <a href="#" class="btn btn-primary btn-round">Se Conecter</a>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6 col-md-3">
                <div class="card card-stats card-round">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-icon">
                        <div
                          class="icon-big text-center icon-primary bubble-shadow-small"
                        >
                          <i class="fas fa-users"></i>
                        </div>
                      </div>

                        <div class="col col-stats ms-3 ms-sm-0">
                        <div class="numbers">
                          <p class="card-category">Membres</p>
                          <h4 class="card-title">1303</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <div class="card card-stats card-round">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-icon">
                        <div
                          class="icon-big text-center icon-success bubble-shadow-small"
                        >
                          <i class="fas fa-luggage-cart"></i>
                        </div>
                      </div>


                        <div class="col col-stats ms-3 ms-sm-0">
                        <div class="numbers">
                          <p class="card-category">Pasteur</p>
                          <h4 class="card-title">3</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <div class="card card-stats card-round">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-icon">
                        <div
                          class="icon-big text-center icon-success bubble-shadow-small"
                        >
                          <i class="fas fa-luggage-cart"></i>
                        </div>
                      </div>



                        
                      <div class="col col-stats ms-3 ms-sm-0">
                        <div class="numbers">
                          <p class="card-category">Groupes</p>
                          <h4 class="card-title">15</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <div class="card card-stats card-round">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-icon">
                        <div
                          class="icon-big text-center icon-secondary bubble-shadow-small"
                        >
                          <i class="far fa-check-circle"></i>
                        </div>
                      </div>

                        
                        <div class="col col-stats ms-3 ms-sm-0">
                        <div class="numbers">
                          <p class="card-category">Diacres</p>
                          <h4 class="card-title">13</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <div class="card card-stats card-round">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-icon">
                        <div
                          class="icon-big text-center icon-success bubble-shadow-small"
                        >
                          <i class="fas fa-luggage-cart"></i>
                        </div>
                      </div>

                        <div class="col col-stats ms-3 ms-sm-0">
                        <div class="numbers">
                          <p class="card-category">Services</p>
                          <h4 class="card-title">33</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <div class="card card-stats card-round">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-icon">
                        <div
                          class="icon-big text-center icon-success bubble-shadow-small"
                        >
                          <i class="fas fa-luggage-cart"></i>
                        </div>
                      </div>

                        <div class="col col-stats ms-3 ms-sm-0">
                        <div class="numbers">
                          <p class="card-category"></p>
                          <h4 class="card-title">14</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-md-3">
                <div class="card card-stats card-round">
                  <div class="card-body">
                    <div class="row align-items-center">
                      <div class="col-icon">
                        <div
                          class="icon-big text-center icon-success bubble-shadow-small"
                        >
                          <i class="fas fa-luggage-cart"></i>
                        </div>
                      </div>
                      

                      <div class="col col-stats ms-3 ms-sm-0">
                        <div class="numbers">
                          <p class="card-category">Chorales</p>
                          <h4 class="card-title">6</h4>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row align-items-stretch">

    <!-- COLONNE GAUCHE -->
    <div class="col-lg-7 col-md-12 mb-4">
        <div class="card card-round h-100">
            <div class="card-header">
                <div class="card-head-row">
                    <div class="card-title">User Statistics</div>
                    <div class="card-tools">
                        <a href="#" class="btn btn-label-success btn-round btn-sm me-2">
                            <span class="btn-label">
                                <i class="fa fa-pencil"></i>
                            </span>
                            Export
                        </a>
                        <a href="#" class="btn btn-label-info btn-round btn-sm">
                            <span class="btn-label">
                                <i class="fa fa-print"></i>
                            </span>
                            Print
                        </a>
                    </div>
                </div>
            </div>

            <div class="card-body">
                <div class="chart-container" style="min-height: 375px">
                    <canvas id="statisticsChart"></canvas>
                </div>
                <div id="myChartLegend"></div>
            </div>
        </div>
    </div>


    <!-- COLONNE DROITE -->
    <div class="col-lg-5 col-md-12 mb-4 d-flex">

        <div class="eden-card w-100">

            <div id="edenCarousel"
                 class="carousel slide"
                 data-bs-ride="carousel"
                 data-bs-interval="3000">

                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <img src="../SiteUtilisateur/img/01.jpg" class="d-block w-100">
                        <div class="eden-text">
                            <h4>Bienvenue à EDEN</h4>
                            <p>Plateforme de gestion de l'église</p>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../SiteUtilisateur/img/02.jpg" class="d-block w-100">
                        <div class="eden-text">
                            <h4>Organisation</h4>
                            <p>Gestion des membres et groupes</p>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../SiteUtilisateur/img/03.jpg" class="d-block w-100">
                        <div class="eden-text">
                            <h4>Vie Spirituelle</h4>
                            <p>Suivi et accompagnement pastoral</p>
                        </div>
                    </div>

                </div>

                <!-- Flèches -->
                <button class="carousel-control-prev"
                        type="button"
                        data-bs-target="#edenCarousel"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>

                <button class="carousel-control-next"
                        type="button"
                        data-bs-target="#edenCarousel"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>

            </div>

        </div>

    </div>

</div>




                <style>
body{
    background:#f4f6f9;
    font-family:Arial, sans-serif;
}

/* ===== CARTE BLANCHE (celle à droite) ===== */
.eden-card{
    width:600px;              /* largeur de la forme blanche */
    height:700px;             /* hauteur agrandie */
    margin:40px auto;
    background:white;
    border-radius:25px;
    box-shadow:0 30px 60px rgba(0,0,0,0.2);
    overflow:hidden;
    display:flex;
    flex-direction:column;
}

/* IMAGE */
.eden-card .carousel-item img{
    width:100%;
    height:550px;            /* image plus grande */
    object-fit:cover;
}

/* TEXTE EN DESSOUS */
.eden-text{
    background:#0033a0;
    color:white;
    padding:30px;
    text-align:center;
    flex:1;
    display:flex;
    flex-direction:column;
    justify-content:center;
}

.eden-text h4{
    font-size:28px;
    margin-bottom:10px;
}

@media (max-width:992px){
    .eden-card{
        width:95%;
        height:auto;
    }

    .eden-card .carousel-item img{
        height:3500px;
    }
}
</style>





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 <!-- End Custom template -->
    </div>
    <!--   Core JS Files   -->
    <script src="../assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="../assets/js/core/popper.min.js"></script>
    <script src="../assets/js/core/bootstrap.min.js"></script>

    <!-- jQuery Scrollbar -->
    <script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

    <!-- Chart JS -->
    <script src="../assets/js/plugin/chart.js/chart.min.js"></script>

    <!-- jQuery Sparkline -->
    <script src="../assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

    <!-- Chart Circle -->
    <script src="../assets/js/plugin/chart-circle/circles.min.js"></script>

    <!-- Datatables -->
    <script src="../assets/js/plugin/datatables/datatables.min.js"></script>

    <!-- Bootstrap Notify -->
    <script src="../assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

    <!-- jQuery Vector Maps -->
    <script src="../assets/js/plugin/jsvectormap/jsvectormap.min.js"></script>
    <script src="../assets/js/plugin/jsvectormap/world.js"></script>

    <!-- Sweet Alert -->
    <script src="../assets/js/plugin/sweetalert/sweetalert.min.js"></script>

    <!-- Kaiadmin JS -->
    <script src="../assets/js/kaiadmin.min.js"></script>

    <!-- Kaiadmin DEMO methods, don't include it in your project! -->
    <script src="../assets/js/setting-demo.js"></script>
    <script src="../assets/js/demo.js"></script>     

   

   
   </main>
</asp:Content>
