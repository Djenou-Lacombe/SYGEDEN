<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SysEden.Default" %>


<!DOCTYPE html>
<html lang="fr">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Église EDEN</title>

     <!-- basic -->
      <meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="viewport" content="width=device-width, initial-scale=1" />
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1" /><meta name="viewport" content="initial-scale=1, maximum-scale=1" />
      <!-- site metas -->
      <meta name="keywords" /><meta name="description" /><meta name="author" />
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css2/bootstrap.min.css" />
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css2/style.css" /><link rel="stylesheet" type="text/css" href="css/conexion.css" />
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css" />
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css" />
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Poppins:400,700&amp;display=swap" rel="stylesheet" />
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css" /><link rel="stylesheet" href="css/owl.theme.default.min.css" /><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen" /><link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            color: #66FFFF;
        }
    </style>

    <!-- CSS EXTERNE -->
    <link href="Assets/css/Style.css" rel="stylesheet" />
      <!-- Vendor CSS Files -->
      <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
      <link href="assets/vendor/aos/aos.css" rel="stylesheet">
      <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
      <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
      <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
     <!-- Main CSS File -->
      <link href="assets/css/Style.css" rel="stylesheet">
</head>

<body>
<form id="form1" runat="server">

<!-- ================= HEADER ================= -->
<header>
  <div class="logo-container">
    <img src="../assetsimg/logo EDEN.png" />
    <h1>Église EDEN</h1>
  </div>

  <nav>
    <button type="button" id="menuBtn">☰ Menu</button>

    <div id="menuDropdown" class="dropdown">
      <a href="#accueil">Accueil</a>
      <a href="#image">Images</a>
      <a href="#video">Vidéos</a>
      <a href="#radio">Radio</a>
      <a href="#don">Don</a>
      <a href="#priere">Prière</a>
      <a href="#contact">Contact</a>
    </div>

    <div class="menu-links">
      <a href="#accueil">Accueil</a>
      <a href="#image">Images</a>
      <a href="#video">Vidéos</a>
      <a href="#radio">Radio</a>
      <a href="#don">Don</a>
      <a href="#priere">Prière</a>
      <a href="#contact">Contact</a>
    </div>
  </nav>
</header>


    <%-- <nav id="navmenu" class="navmenu">
          <ul>
            <li class="dropdown"><a href="#"><span class="auto-style1"><strong>Inscription</strong></span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
              <ul>
                <li class="dropdown"><a href="#"><span>Membre</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                  <ul>
                    <li><a href="InscriptionMembre.aspx">Inscrire</a></li>
                    <li><a href="LoginMembre.aspx">Se connecter</a></li>
                  </ul>
                </li>
                 <li class="dropdown"><a href="#"><span>Pasteur</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                  <ul>
                    <li><a href="InscriptionMedecin.aspx">Inscrire</a></li>
                    <li><a href="LoginPasteur.aspx">Se connecter</a></li>
                  </ul>
                </li>
                 <li class="dropdown"><a href="#"><span>Administration</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                  <ul>
                    <li><a href="LoginAdm.aspx">Se connecter</a></li>
                  </ul>
                </li>
              </ul>
            </li>

          </ul>
        </nav><!-- .nav-menu -->--%>

      <!-- treatment section start -->
      <div class="treatment_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <h1 class="treatment_taital">Nos Ouvriers</h1>
               </div>
            </div>
            <div class="treatment_section_2">
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">01</h1>
                  <h2 class="care_text">Adoratteurs</h2>
                  <p class="treatment_text">Ajouter les fonctionnalites d'un adorateur, adoratrice.</p>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">02</h1>
                  <h2 class="care_text">Padteur</h2>
                  <p class="treatment_text_1">Foction des pasteurs.</p>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">03</h1>
                  <h2 class="care_text">Diacre</h2>
                  <p class="treatment_text_1">Fonction diacre ce qu'on faire</p>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">04</h1>
                  <h2 class="care_text">Musicien</h2>
                  <p class="treatment_text_1">Fonction musiciens.</p>
               </div>
            </div>
         </div>
         </div>
      </div>
      <!-- treatment section end -->
      <section class="section-padding bg-light">
    <div class="container">
        <h2 class="text-center mb-5">Nos Ouvriers</h2>
        <div class="row g-4">

            <div class="col-md-3">
                <div class="card worker-card text-center">
                    <img src="images/IMG-1.jpg" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">Daniel</h5>
                        <p class="card-text">Adorateur</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card worker-card text-center">
                    <img src="images/img-2.png" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">Julner</h5>
                        <p class="card-text">Diacre</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card worker-card text-center">
                    <img src="images/img-3.png" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">Raymond</h5>
                        <p class="card-text">Pasteur</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card worker-card text-center">
                    <img src="images/img-3.png" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title">Thelus</h5>
                        <p class="card-text">Musicien</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

    <section class="testimonial-section py-5">
    <div class="container">
        <h2 class="text-center mb-5 fw-bold">TÉMOIGNAGES</h2>

        <div id="temoignageCarousel" 
             class="carousel slide carousel-fade" 
             data-bs-ride="carousel" 
             data-bs-interval="4000">

            <!-- Indicateurs -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#temoignageCarousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#temoignageCarousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#temoignageCarousel" data-bs-slide-to="2"></button>
            </div>

            <div class="carousel-inner">

                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <div class="testimonial-box mx-auto">
                        <div class="quote-icon">❝</div>
                        <h5 class="fw-bold text-primary">Delicat</h5>
                        <small>22 ans</small>
                        <p>
                            Après une période difficile, Dieu m’a restauré.
                            L’Église EDEN est un véritable soutien spirituel.
                        </p>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item">
                    <div class="testimonial-box mx-auto">
                        <div class="quote-icon">❝</div>
                        <h5 class="fw-bold text-primary">Marie D.</h5>
                        <small>42 ans</small>
                        <p>
                            La prière collective a transformé ma vie.
                            Je rends gloire à Dieu pour cette communauté.
                        </p>
                    </div>
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item">
                    <div class="testimonial-box mx-auto">
                        <div class="quote-icon">❝</div>
                        <h5 class="fw-bold text-primary">Ruth</h5>
                        <small>25 ans</small>
                        <p>
                            Mon fils a été restauré après la prière.
                            Dieu agit puissamment à EDEN.
                        </p>
                    </div>
                </div>

            </div>

            <!-- Flèches -->
            <button class="carousel-control-prev" type="button" data-bs-target="#temoignageCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon bg-dark rounded-circle p-3"></span>
            </button>

            <button class="carousel-control-next" type="button" data-bs-target="#temoignageCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon bg-dark rounded-circle p-3"></span>
            </button>

        </div>
    </div>
</section>
<!-- ================= HERO ================= -->
<section id="accueil" class="hero-section d-flex align-items-center">
    <div class="container text-center">
        <h1 class="display-4 fw-bold text-white">Bienvenue à l’Église EDEN</h1>
        <p class="lead text-white">Un lieu de foi, de prière et de restauration spirituelle.</p>
        <a href="#contact" class="btn btn-primary btn-lg mt-3">Nous contacter</a>
    </div>
</section>

<!-- ================= IMAGE ================= -->
<section id="image" class="form-section">
  <div class="form-card">
    <h3>Galerie Photos</h3>
    <img src="../assets/img/01.jpg" style="width:60%" />
    <img src="../asses/img/02.jpg" style="width:60%;margin-top:7px" />
  </div>
</section>

<!-- ================= VIDEO ================= -->
<section id="video" class="form-section">
  <div class="form-card">
    <h3>Vidéos de l’Église</h3>
    <video width="100%" controls>
      <source src="../assets/video/eglise.mp4" type="video/mp4" />
    </video>
  </div>
</section>

<!-- ================= RADIO ================= -->
<section id="radio" class="form-section">
  <div class="form-card" style="text-align:center">
    <h3>🎧 Radio EDEN – En direct</h3>

    <p>
      Écoutez la Radio officielle de l’Église EDEN.<br>
      <strong>Diffusion en direct 24h/24</strong>
    </p>

    <a href="https://zeno.fm/radio/radio-eden65/" 
       target="_blank" 
       class="btn"
       style="display:inline-block;margin-top:15px">
      ▶ Écouter la radio en direct
    </a>

    <span class="onair-badge">🔴 ON AIR</span>

    <audio controls autoplay style="width:100%;margin-top:15px">
      <source src="https://VOTRE_LIEN_STREAM_RADIO.mp3" type="audio/mpeg">
    </audio>

    <p style="margin-top:10px;font-size:13px;color:#666">
      Cliquez sur ▶ pour écouter la radio
    </p>
  </div>
</section>

    <section class="section-padding">
    <div class="container">
        <h2 class="text-center mb-5">Témoignages</h2>
        <div class="row g-4">

            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"Dieu a transformé ma vie après la prière."</p>
                    <h6>Marie D.</h6>
                </div>
            </div>

            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"Après l’adoration, Dieu m’a accordé la guérison."</p>
                    <h6>Delicat</h6>
                </div>
            </div>

            <div class="col-md-4">
                <div class="testimonial-card">
                    <p>"Mon fils a été restauré par la grâce divine."</p>
                    <h6>Ruth</h6>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- ================= DON ================= -->
<section id="don" class="form-section">
  <div class="form-card">
    <h3>Soutenir l’œuvre de Dieu</h3>

    <asp:TextBox ID="txtNomDon" runat="server" placeholder="Nom complet" />
    <asp:TextBox ID="txtMontantDon" runat="server" TextMode="Number" placeholder="Montant" />

    <asp:DropDownList ID="ddlTypeDon" runat="server">
      <asp:ListItem Text="Type de don" Value="" />
      <asp:ListItem>Dîme</asp:ListItem>
      <asp:ListItem>Offrande</asp:ListItem>
      <asp:ListItem>Action de grâce</asp:ListItem>
    </asp:DropDownList>

    <h4>Mode de paiement</h4>
    <div class="payment-methods">
      <div class="payment-method" onclick="selectPayment('MonCash',this)">
        <img src="../assets/img/paiement/moncash.png" />
      </div>
      <div class="payment-method" onclick="selectPayment('Natcash',this)">
        <img src="../assets/img/paiement/natcash.jpg" />
      </div>
      <div class="payment-method" onclick="selectPayment('Carte',this)">
        <img src="../asseets/img/paiement/mastercard PNG.png" />
      </div>
      <div class="payment-method" onclick="selectPayment('Virement',this)">
        <img src="../assets/img/paiement/banque.png" />
      </div>
    </div>

    <asp:HiddenField ID="hfModePaiement" runat="server" />

    <!-- Formulaires spécifiques à chaque paiement -->
    <div id="formMonCash" class="payment-form" style="display:none;">
      <asp:TextBox ID="txtNumMonCash" runat="server" placeholder="Numéro MonCash" />
    </div>

    <div id="formNatCash" class="payment-form" style="display:none;">
      <asp:TextBox ID="txtNumNatCash" runat="server" placeholder="Numéro NatCash" />
    </div>

    <div id="formCarte" class="payment-form" style="display:none;">
      <asp:TextBox ID="txtNumCarte" runat="server" placeholder="Numéro Carte" />
      <asp:TextBox ID="txtDateExp" runat="server" placeholder="Date d'expiration (MM/AA)" />
      <asp:TextBox ID="txtCVC" runat="server" placeholder="CVC" TextMode="Password" />
    </div>

    <div id="formVirement" class="payment-form" style="display:none;">
      <asp:TextBox ID="txtNumCompte" runat="server" placeholder="Numéro de compte bancaire" />
      <asp:TextBox ID="txtBanque" runat="server" placeholder="Nom de la banque" />
    </div>

    <asp:Button ID="btnDon" runat="server" Text="Envoyer le don" 
        OnClick="EnvoyerDon" CssClass="asp-btn" />
  </div>
</section>

<script>
  function selectPayment(type, element) {
    // Enregistrer le mode de paiement choisi dans le HiddenField
    document.getElementById('<%= hfModePaiement.ClientID %>').value = type;

    // Cacher tous les formulaires de paiement
    var forms = document.querySelectorAll('.payment-form');
    forms.forEach(f => f.style.display = 'none');

    // Afficher le formulaire correspondant au mode choisi
    if(type === 'MonCash') document.getElementById('formMonCash').style.display = 'block';
    else if(type === 'NatCash') document.getElementById('formNatCash').style.display = 'block';
    else if(type === 'Carte') document.getElementById('formCarte').style.display = 'block';
    else if(type === 'Virement') document.getElementById('formVirement').style.display = 'block';

    // Ajouter un effet de sélection visuelle
    document.querySelectorAll('.payment-method').forEach(pm => pm.classList.remove('selected'));
    element.classList.add('selected');
  }
</script>

<style>
  .payment-methods { display:flex; gap:10px; margin-bottom:10px; }
  .payment-method { cursor:pointer; border:2px solid transparent; padding:5px; border-radius:5px; transition:0.3s; }
  .payment-method.selected { border-color:#007BFF; background-color:#E6F0FF; }
  .payment-form { margin-top:10px; }
  .payment-form input { display:block; width:100%; margin-bottom:8px; padding:8px; border-radius:4px; border:1px solid #ccc; }
</style>

<!-- ================= PRIÈRE ================= -->
<section id="priere" class="form-section">
  <div class="form-card">
    <h3>Demande de prière</h3>

    <asp:TextBox ID="txtNomPriere" runat="server" placeholder="Nom complet" />
    <asp:TextBox ID="txtEmailPriere" runat="server" placeholder="Email" />
    <asp:TextBox ID="txtMessagePriere" runat="server" 
        TextMode="MultiLine" Rows="4" placeholder="Votre demande" />

    <asp:Button ID="btnPriere" runat="server" Text="Envoyer" 
        OnClick="EnvoyerPriere" CssClass="asp-btn" />
  </div>
</section>

<!-- ================= CONTACT ================= -->
<section id="contact" class="form-section">
  <div class="form-card">
    <h3>Contactez-nous</h3>
    <input placeholder="Nom" />
    <input placeholder="Email" />
    <textarea rows="4" placeholder="Message"></textarea>
    <button type="button"
        onclick="window.location.href='mailto:djeycomputer020.com?subject=Contact Site EDEN'">
        Envoyer
    </button>
  </div>
</section>

<!-- ================= FOOTER ================= -->
<footer>
© 2026 Église EDEN – Tous droits réservés
</footer>

</form>

<!-- ================= JAVASCRIPT ================= -->
<script src="Assets/js/script.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>