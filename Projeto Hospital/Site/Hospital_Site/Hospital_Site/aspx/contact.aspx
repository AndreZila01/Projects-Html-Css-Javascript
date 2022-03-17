﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Hospital_Site.aspx.WebForm1" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="../img/favicon.png" type="image/png">
    <title>Medcare Medical</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/themify-icons.css">
    <link rel="stylesheet" href="../css/flaticon.css">
    <link rel="stylesheet" href="../vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="../vendors/animate-css/animate.css">
    <!-- main css -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/responsive.css">
    <script>
        var prevScrollpos = window.pageYOffset;
        window.onscroll = function() {
            var currentScrollPos = window.pageYOffset;
            if (prevScrollpos > currentScrollPos) {
                document.getElementById("navbar").style.top = "0";
            } else {
                document.getElementById("navbar").style.top = "-60px";
            }
            prevScrollpos = currentScrollPos;
        }
    </script>
</head>

<body>


    <!--================Header Menu Area =================-->
    <header class="testar" id="navbar">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index.aspx"><img src="../img/logo.png" alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="about-us.aspx">About</a></li>
                            <li class="nav-item"><a class="nav-link" href="department.aspx">Department</a></li>
                            <li class="nav-item"><a class="nav-link" href="doctors.aspx">Doctors</a></li>

                            <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="single-blog.aspx">Iniciar Sessão</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog.aspx">Criar Conta</a></li>
                                    <li class="nav-item"><a class="nav-link" href="element.aspx">element</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!--================Header Menu Area =================-->

    <br><br>
    <!--================Home Banner Area=================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content d-md-flex justify-content-between align-items-center">
                    <div class="mb-3 mb-md-0">
                        <h2>Contactos</h2>
                        <p>A encaminhar para um mundo mais verde!💚</p>
                    </div>
                    <div class="page_link">
                        <a href="index.aspx">Home</a>
                        <a href="contact.aspx">Contact</a>
                        <div>
                            <div>
                                <div class="float-center">
                                    <ul class="list header_social">
                                        <li class="spaceli"><a href="#"><i class="ti-facebook"></i></a></li>
                                        <li class="spaceli"><a target="_blank" href="https://twitter.com/ANDREcust123"><i class="ti-twitter-alt"></i></a></li>
                                        <li class="spaceli"><a target="_blank" href="https://www.linkedin.com/in/andr%C3%A9-cust%C3%B3dio-08522b181/"><i class="ti-linkedin"></i></a></li>
                                        <li class="spaceli"><a href="#"><i class="ti-skype"></i></a></li>
                                        <li class="spaceli"><a href="#"><i class="ti-vimeo-alt"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->


    <!-- ================ contact section start ================= -->
    <section class="contact-section area-padding">
        <div class="container">
            <div class="d-none d-sm-block mb-5 pb-4">
                <div id="map" style="height: 480px;"></div>
                <script>
                    function initMap() {
                        var locations = [
                            ['Gascoyne River', -25.431133217716333, 116.71445322728708, 3],
                            ['Staaten', -16.749593792198738, 143.0816407272871, 2],
                            ['Quandrong', -37.81218149161914, 144.4878907272871, 1],
                        ];

                        var map = new google.maps.Map(document.getElementById('map'), {
                            minZoom: 4,
                            zoom: 4,
                            center: new google.maps.LatLng(-25.570911213450664, 129.14864823273768),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        });

                        var infowindow = new google.maps.InfoWindow();

                        var marker, i;

                        for (i = 0; i < locations.length; i++) {
                            marker = new google.maps.Marker({
                                position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                                map: map,
                            });

                            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                                return function() {
                                    infowindow.setContent(locations[i][0]);
                                    infowindow.open(map, marker);

                                    marker.setAnimation(google.maps.Animation.BOUNCE);
                                    setTimeout(function() {
                                        marker.setAnimation(null);
                                    }, 1300);
                                }
                            })(marker, i));
                        }
                    }
                </script>
                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnT8QDKYeF-3St7w6C_Qyb2YT3FSP2Lys&callback=initMap"></script>

            </div>


            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Contacte-nos </h2>
                </div>
                <div class="col-lg-8">
                    <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" name="subject" id="subject" type="text" placeholder="Assunto">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control" name="name" id="name" type="text" placeholder="Nome e Apelido">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control" name="email" id="email" type="email" placeholder="email">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" placeholder="Menssage"></textarea>
                                </div>
                            </div>


                        </div>
                        <div class="form-group mt-3">
                            <button type="submit" class="button button-contactForm">Envia uma Menssage</button>
                        </div>
                    </form>


                </div>

                <div class="col-lg-4">
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-home"></i></span>
                        <div class="media-body">
                            <h3>
                                Quandong, Vitória, Australia
                            </h3>
                            <p>1752 C703</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3><a href="tel:454545654">00 (440) 9865 562</a></h3>
                            <p>Seg a Sexta 01am to 01am</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3><a href="mailto:support@colorlib.com">geralmedicare@medicare.com</a></h3>
                            <p>O nosso email, para enviar perguntas!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->



    <!--================ Start Brands Area =================-->
    <section class="brands-area background_one">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="owl-carousel brand-carousel">
                        <!-- single-brand -->
                        <div class="single-brand-item d-table">
                            <div class="d-table-cell">
                                <img src="../img/brand/1.png" alt="">
                            </div>
                        </div>
                        <!-- single-brand -->
                        <div class="single-brand-item d-table">
                            <div class="d-table-cell">
                                <img src="../img/brand/2.png" alt="">
                            </div>
                        </div>
                        <!-- single-brand -->
                        <div class="single-brand-item d-table">
                            <div class="d-table-cell">
                                <img src="../img/brand/3.png" alt="">
                            </div>
                        </div>
                        <!-- single-brand -->
                        <div class="single-brand-item d-table">
                            <div class="d-table-cell">
                                <img src="../img/brand/4.png" alt="">
                            </div>
                        </div>
                        <!-- single-brand -->
                        <div class="single-brand-item d-table">
                            <div class="d-table-cell">
                                <img src="../img/brand/5.png" alt="">
                            </div>
                        </div>
                        <!-- single-brand -->
                        <div class="single-brand-item d-table">
                            <div class="d-table-cell">
                                <img src="../img/brand/3.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Brands Area =================-->

    <!-- start footer Area -->
    <footer class="footer-area area-padding-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-sm-6 single-footer-widget">
                    <h4>Top Products</h4>
                    <ul>
                        <li><a href="#">Managed Website</a></li>
                        <li><a href="#">Manage Reputation</a></li>
                        <li><a href="#">Power Tools</a></li>
                        <li><a href="#">Marketing Service</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-sm-6 single-footer-widget">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#">Jobs</a></li>
                        <li><a href="#">Brand Assets</a></li>
                        <li><a href="#">Investor Relations</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-sm-6 single-footer-widget">
                    <h4>Features</h4>
                    <ul>
                        <li><a href="#">Jobs</a></li>
                        <li><a href="#">Brand Assets</a></li>
                        <li><a href="#">Investor Relations</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-sm-6 single-footer-widget">
                    <h4>Resources</h4>
                    <ul>
                        <li><a href="#">Guides</a></li>
                        <li><a href="#">Research</a></li>
                        <li><a href="#">Experts</a></li>
                        <li><a href="#">Agencies</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-md-6 single-footer-widget">
                    <h4>Noticias</h4>
                    <p>Podes confiar em nós. Enviamos apenas ofertas promocionais, ...</p>
                    <div class="form-wrap" id="mc_embed_signup">
                        <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
                            <input class="form-control" name="EMAIL" placeholder="O teu Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address'" required="" type="email" />
                            <button class="click-btn btn btn-default">
                <i class="ti-arrow-right"></i>
              </button>
                            <div style="position: absolute; left: -5000px;">
                                <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text" />
                            </div>

                            <div class="info"></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row footer-bottom d-flex justify-content-between">
                <p class="col-lg-8 col-sm-12 footer-text m-0">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;
                    <script>
                        document.write(new Date().getFullYear());
					</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib---</a>And changed by
                    <a target="_blank" href="https://github.com/AndreZila01" target="_blank">Andrezila</a>

                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
                <div class="col-lg-4 col-sm-12 footer-social">
                    <a href="#"><i class="fab fa-vimeo"></i></a>
                    <a href="#"><i class="fab fa-skype"></i></a>
                    <a target="_blank" href="https://www.linkedin.com/in/andr%C3%A9-cust%C3%B3dio-08522b181/"><i class="fab fa-linkedin"></i></a>
                    <a target="_blank" href="https://twitter.com/ANDREcust123"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- End footer Area -->



    <!--================Contact Success and Error message Area =================-->
    <div id="success" class="modal modal-message fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fas fa-times"></i>
          </button>
                    <h2>Thank you</h2>
                    <p>Your message is successfully sent...</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Modals error -->

    <div id="error" class="modal modal-message fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fas fa-times"></i>
          </button>
                    <h2>Sorry !</h2>
                    <p> Something went wrong </p>
                </div>
            </div>
        </div>
    </div>
    <!--================End Contact Success and Error message Area =================-->






    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-2.2.4.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/stellar.js"></script>
    <script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="../js/jquery.ajaxchimp.min.js"></script>
    <script src="../js/waypoints.min.js"></script>
    <script src="../js/mail-script.js"></script>
    <script src="../js/contact.js"></script>
    <script src="../js/jquery.form.js"></script>
    <script src="../js/jquery.validate.min.js"></script>
    <script src="../js/mail-script.js"></script>
    <script src="../js/theme.js"></script>
</body>


</html>