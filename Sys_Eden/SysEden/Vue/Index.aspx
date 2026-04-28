<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SysEden.Vue.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accueil</title>
    <!-- basic -->
      <meta charset="utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta name="viewport" content="width=device-width, initial-scale=1" />
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1" /><meta name="viewport" content="initial-scale=1, maximum-scale=1" />
      <!-- site metas -->
      <meta name="keywords" /><meta name="description" /><meta name="author" />
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css" /><link rel="stylesheet" type="text/css" href="css/conexion.css" />
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
    </head>
          <!-- Vendor CSS Files -->
      <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
      <link href="assets/vendor/aos/aos.css" rel="stylesheet">
      <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
      <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
      <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
     <!-- Main CSS File -->
      <link href="assets/css/main.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <form method="post" action="./Index.aspx" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="5bCu7m1DFbdoAiJHKrSlWpP6Hki5Z+mjVE0HTpVr8iPLfRhcJmafKuvb3l1isdkm0Q98KEIGgEOi0ylVfPlD5T8T/j9L+QD2jdhQTAZ1OOU=" />
</div>

    <div>
    <!-- header top section start -->
      <div class="header_top_section">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <div class="header_top_main">
                     <div class="call_text"><a href="#"><span class="padding_right0"><i class="fa fa-phone" aria-hidden="true"></i></span>Telephone: (+509) 47607935</a></div>
                     <div class="call_text_2"><a href="#"><span class="padding_right0"><i class="fa fa-envelope" aria-hidden="true"></i></span> djeycomputer020@gmail.com</a></div>
                     <div class="call_text_1"><a href="#"><span class="padding_right0"><i class="fa fa-map-marker" aria-hidden="true"></i></span> Localisationtion</a></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- header top section end -->
      <!-- header section start -->
      <div class="header_section">
         <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
               <a class="navbar-brand"href="index.html"><img src="images/logo.png"></a>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ml-auto">
                     <li class="nav-item active">
                        <a class="nav-link" href="index.html">Accueil</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="about.html">Image</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="treatment.html">Video</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="pasteur.html">Radio</a>
                     </li>
                      <li class="nav-item">
                        <a class="nav-link" href="pasteur.html">Donation</a>
                     </li>
                      <li class="nav-item">
                        <a class="nav-link" href="pasteur.html">Priere</a>
                     </li>
                      <li class="nav-item">
                        <a class="nav-link" href="pasteur.html">A propos de nous</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="contact.html">Contactez-Nous</a>
                     </li>

                      <div id="menuDropdown" class="dropdown">
      
                  </ul>
                  <form class="form-inline my-2 my-lg-0">
                  </form>
               </div>
            </nav>
            <div class="custom_bg">
               <div class="custom_menu">
                  <ul>
                     <li class="active"><a href="index.html">Accueil</a></li>
                     <li><a href="about.html">Image </a></li>
                     <li><a href="treatment.html">Video</a></li>
                     <li><a href="pasteur.html">Radio</a></li>
                      <li><a href="about.html">Donation</a></li>
                     <li><a href="treatment.html">Priere</a></li>
                     <li><a href="pasteur.html">A propos de nous</a></li>
                     <li><a href="contact.html">Contactez-nous</a></li>
                  </ul>
               </div>

<nav id="navmenu" class="navmenu">
          <ul>
            <li class="dropdown"><a href="#"><span class="auto-style1"><strong>Inscription</strong></span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
              <ul>
                <li class="dropdown"><a href="#"><span>Membre</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                  <ul>
                    <li><a href="InscriptionMembre.aspx">Inscrire</a></li>
                    <li><a href="LoginMembre.aspx">Se connecter</a></li>
                  </ul>
                </li>
                 <li class="dropdown"><a href="#"><span>pasteur</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                  <ul>
                    <li><a href="InscriptionPasteur.aspx">Inscrire</a></li>
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
        </nav><!-- .nav-menu -->

            </div>
         </div>
         <!-- header section end -->
         <!-- banner section start --> 
         <div class="banner_section layout_padding">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <h1 class="banner_taital">Bienvenue à Eglise EDEN</h1>
                     <p class="banner_text">Nous vous accueillons sur notre site officiel, dédié à vous informer et à vous accompagner dans la vie spirituele. Vous y trouverez toutes les informations utiles sur nos services, nos équipes .</p>
                  </div>
               </div>
            </div>
         </div>
         <!-- banner section end -->
      </div>
      <!-- header section end -->
      <!-- appointment section start -->
      <div class="appointment_section">
         <div class="container">
            <div class="appointment_box">
             
            </div>
         </div>
      </div>
      <!-- appointment section end -->
      <!-- about section start -->
      <div class="about_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <h1 class="about_taital">À propos de Eglise EDEN</h1>
                  <p class="about_text">EDEN est une institution chretienne moderne et engagé, dédié à offrir des chretienne de qualité, accessibles et centrés sur le Membre.

Nos équipes de priere, hautement qualifiées, travaillent chaque jour avec professionnalisme et bienveillance pour assurer une prise en charge complète et personnalisée. Grâce à des équipements de pointe et à une approche innovante, nous répondons aux besoin de priere.

Chez EDEN, nous plaçons l’humain au cœur de notre mission, avec des valeurs fortes : écoute, excellence, éthique et confiance.</p>
                  
                 
               </div>
               <div class="col-md-6">
                  <div class="about_img"><img src="images/about-img.png"></div>
               </div>
            </div>
         </div>
      </div>
      <!-- about section end -->
      <!-- treatment section start -->
      <div class="treatment_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <h1 class="treatment_taital">Spécialités médicales</h1>
               </div>
            </div>
            <div class="treatment_section_2">
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">01</h1>
                  <h2 class="care_text">Cardiologie</h2>
                  <p class="treatment_text">La cardiologie est la spécialité médicale dédiée au diagnostic et au traitement des maladies du cœur et des vaisseaux sanguins, comme l’hypertension, les troubles du rythme cardiaque ou l’insuffisance cardiaque.</p>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">02</h1>
                  <h2 class="care_text">Chirurgie Générale</h2>
                  <p class="treatment_text_1">La chirurgie générale regroupe plusieurs types d’interventions, notamment au niveau de l’abdomen (appendicite, hernie, vésicule biliaire) ou des tissus mous. Elle est assurée par des chirurgiens spécialisés selon les besoins du Membre.</p>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">03</h1>
                  <h2 class="care_text">Neurologie</h2>
                  <p class="treatment_text_1">La neurologie se concentre sur le diagnostic et le traitement des troubles du système nerveux, comme les AVC, l’épilepsie, la sclérose en plaques ou la maladie de Parkinson.</p>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <h1 class="number_text">04</h1>
                  <h2 class="care_text">Orthopédie</h2>
                  <p class="treatment_text_1">L’orthopédie prend en charge les troubles de l’appareil locomoteur : os, articulations, ligaments, muscles et tendons. Elle traite les fractures, les déformations, l’arthrose, etc.</p>
               </div>
            </div>
         </div>
         </div>
      </div>
      <!-- treatment section end -->
      <!-- membre section start -->
      <div class="membre_section">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <h1 class="membre_taital">Nos spécialistes</h1>
               </div>
            </div>
            <div class="membre_section_2">
               <div id="my_slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/IMG-1.jpg"></div>
                                 <h4 class="humour_text">Edner <br><span class="mbbs_text">Cardiologue</span></h4>
                                
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/img-2.png"></div>
                                 <h4 class="humour_text">Jonathan<br><span class="mbbs_text">Neurologue</span></h4>
                                 
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/img-3.png"></div>
                                 <h4 class="humour_text">Djenou<br><span class="mbbs_text">Orthopédiste</span></h4>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/IMG-1.jpg"></div>
                                 <h4 class="humour_text">Humour <br><span class="mbbs_text">MBBS</span></h4>
                                 <div class="social_icon">
                                    <ul>
                                       <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/img-2.png"></div>
                                 <h4 class="humour_text">Jenni <br><span class="mbbs_text">MBBS</span></h4>
                                 <div class="social_icon">
                                    <ul>
                                       <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/img-3.png"></div>
                                 <h4 class="humour_text">Morco <br><span class="mbbs_text">MBBS</span></h4>
                                 <div class="social_icon">
                                    <ul>
                                       <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/IMG-1.jpg"></div>
                                 <h4 class="humour_text">Humour <br><span class="mbbs_text">MBBS</span></h4>
                                 <div class="social_icon">
                                    <ul>
                                       <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/img-2.png"></div>
                                 <h4 class="humour_text">Jenni <br><span class="mbbs_text">MBBS</span></h4>
                                 <div class="social_icon">
                                    <ul>
                                       <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-4">
                              <div class="membre_box">
                                 <div class="image_1"><img src="images/img-3.png"></div>
                                 <h4 class="humour_text">Morco <br><span class="mbbs_text">MBBS</span></h4>
                                 <div class="social_icon">
                                    <ul>
                                       <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                       <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                  </a>
                  <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                  </a>
               </div>
            </div>
         </div>
      </div>
      <!-- membre section end -->
      <!-- testimonial section start -->
      <div class="testimonial_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <h1 class="testimonial_taital">Témoignages</h1>
               </div>
            </div>
            <div class="customer_section_2">
               <div class="row">
                  <div class="col-md-12">
                      <div class="box_main">
                        <div id="main_slider" class="carousel slide" data-ride="carousel">
                           <div class="carousel-inner">
                              <div class="carousel-item active">
                                 <div class="customer_main">
                                    <div class="customer_right">
                                       <h3 class="customer_name">Marie D. <span class="quick_icon"><img src="images/quick-icon.png"></span></h3>
                                       <p class="default_text">42 ans</p>
                                       <p class="enim_text">J’ai été prise en charge aux urgences de POWERFULMED pour une douleur thoracique. L’équipe a réagi très vite, avec beaucoup de professionnalisme. Grâce au cardiologue, mon problème a été détecté à temps. Merci pour votre humanité !</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="carousel-item">
                                 <div class="customer_main">
                                    <div class="customer_right">
                                       <h3 class="customer_name">Delicat<span class="quick_icon"><img src="images/quick-icon.png"></span></h3>
                                       <p class="default_text">22 ans</p>
                                       <p class="enim_text">Après une opération orthopédique complexe, j’ai retrouvé ma mobilité. Le suivi post-opératoire a été exceptionnel. Les médecins, les infirmiers… tout le monde a été attentif et rassurant. Je recommande l’hôpital POWERFULMED sans hésiter.</p>
                                    </div>
                                 </div>
                              </div>
                              <div class="carousel-item">
                                 <div class="customer_main">
                                    <div class="customer_right">
                                       <h3 class="customer_name">Ruth <span class="quick_icon"><img src="images/quick-icon.png"></span></h3>
                                       <p class="default_text">25 ans</p>
                                       <p class="enim_text">Mon fils a été hospitalisé en pédiatrie pendant une semaine. Le personnel a été doux, attentionné et très compétent. Ils ont pris soin de lui comme si c’était leur propre enfant. Merci à toute l’équipe !</p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
                           <i class="fa fa-angle-left"></i>
                           </a>
                           <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
                           <i class="fa fa-angle-right"></i>
                           </a>
                        </div>
                     </div>
                  </div>
                </div>
            </div>
         </div>
      </div>
      <!-- testimonial section end -->
      <!-- contact section start -->
      <div class="contact_section layout_padding">
         <div class="container-fluid">
            <div class="contact_section_2">
               <div class="row">
                  <div class="col-md-6">
                     <h1 class="contact_taital">Get In Touch</h1>
                     <form action="">
                        <div class="mail_section_1">
                           <input type="text" class="mail_text" placeholder="Nom" name="Nom">
                           <input type="text" class="mail_text" placeholder="Numéro de téléphone" name="Numéro de téléphone"> 
                           <input type="text" class="mail_text" placeholder="Email" name="Email">
                           <textarea class="massage-bt" placeholder="Massage" rows="5" id="comment" name="Massage"></textarea>
                           <div class="send_bt"><a href="#">Envoyer</a></div>
                        </div>
                     </form>
                  </div>
                  <div class="col-md-6 padding_left_15">
                     <div class="map_main">
                        <div class="map-responsive">
                           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2030.2683495677022!2d-72.27959295685328!3d18.526189288938596!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8eb9e62be0a58269%3A0xfb18e78b22199ffd!2sInstitution%20Mixte%20Saint%20Joseph%20De%20Pv!5e1!3m2!1sfr!2sht!4v1758450982134!5m2!1sfr!2sht" width="600" height="600" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""></iframe>
                                    
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- contact section end -->
      <!-- footer section start -->
      <div class="footer_section">
         <div class="container">
            <div class="input_bt">
               <input type="text" class="mail_bt" placeholder="Entrez votre e-mail" name="Entrez votre e-mail">
               <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
            </div>
            <div class="footer_section_2">
               <div class="row">
                  <div class="col-lg-3 col-sm-6">
                     <h3 class="footer_taital">Address</h3>
                     <div class="location_main">
                        <ul>
                           <li>
                              <a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>
                              <span class="padding_15">EGLISE  EDEN</span></a>
                           </li>
                           <li>
                              <a href="#"><i class="fa fa-phone" aria-hidden="true"></i>
                              <span class="padding_15">Appeler : (+509) 31850136</span></a>
                           </li>
                           <li>
                              <a href="#"><i class="fa fa-envelope" aria-hidden="true"></i>
                              <span class="padding_15">Email : djeycomputer020@gmail.com</span></a>
                           </li>
                        </ul>
                     </div>
                     <div class="footer_social_icon">
                        <ul>
                           <li>
                              <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                           </li>
                           <li>
                              <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                           </li>
                           <li>
                              <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                           </li>
                           <li>
                              <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                           </li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                     <h3 class="footer_taital">Lien utile</h3>
                     <div class="footer_menu">
                        <ul>
                           <li class="active">
                              <a href="index.html">Home</a>
                           </li>
                           <li>
                              <a href="about.html">About</a>
                           </li>
                           <li>
                              <a href="pasteur.html">pasteur</a>
                           </li>
                           <li>
                              <a href="treatment.html">Treatment</a>
                           </li>
                           <li>
                              <a href="contact.html">Contactez-Nous</a>
                           </li>
                        </ul>
                     </div>
                  </div>
                 
                 
               </div>
            </div>
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">2025 Tous droits réservés. Conçu par POWERFULMED Distribution par PowerfulTech</p>
         </div>
      </div>
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>  
      <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
      <script>
         $('#datepicker').datepicker({
             uiLibrary: 'bootstrap'
         });
      </script> 
      <script>
         $('#timepicker').timepicker({
             uiLibrary: 'bootstrap'
         });
      </script>
    </div>
    
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="73A677CE" />
</div></form>

<!-- Visual Studio Browser Link -->
<script type="application/json" id="__browserLink_initializationData">
    {"appName":"Chrome","requestId":"e48a9653495f4a69bac2d965d04f2d6f"}
</script>
<script type="text/javascript" src="http://localhost:1798/a0f11bf0b9b04f249505f997d708f1ce/browserLink" async="async"></script>
<!-- End Browser Link -->
    </div>
    </form>
      <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>
    </body>
    </html>