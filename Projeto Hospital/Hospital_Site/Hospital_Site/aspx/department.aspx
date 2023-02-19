﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="department.aspx.cs" Inherits="Hospital_Site.aspx.department" %>

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
                                    <li class="nav-item"><a class="nav-link" href="LoginC.aspx">Iniciar Sessão</a></li>
                                    <li class="nav-item"><a class="nav-link" href="LoginC.aspx">Criar Conta</a></li>
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
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content d-md-flex justify-content-between align-items-center">
                    <div class="mb-3 mb-md-0">
                        <h2>Department</h2>
                        <p>Belding years moveth earth green behold wherein</p>
                    </div>
                    <div class="page_link">
                        <a href="index.aspx">Home</a>
                        <a href="department.aspx">Department</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->



    <!--================ Service section start =================-->

    <div class="service-area area-padding-top">
        <div class="container">
            <div class="area-heading row">
                <div class="col-md-5 col-xl-4">
                    <h3>Awesome<br> Health Service</h3>
                </div>
                <div class="col-md-7 col-xl-8">
                    <p>Land meat winged called subdue without very light in all years sea appear midst forth image him third there set. Land meat winged called subdue without very light in all years sea appear</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="card-service text-center text-lg-left mb-4 mb-lg-0">
                        <span class="card-service__icon">
                            <i class="flaticon-brain"></i>
                        </span>
                        <h3 class="card-service__title">Neurology Service</h3>
                        <p class="card-service__subtitle">Land meat winged called subdue without a very light in all years sea appear Lesser bring fly first land set female best perform.</p>
                        <a class="card-service__link" href="#">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card-service text-center text-lg-left mb-4 mb-lg-0">
                        <span class="card-service__icon">
                            <i class="flaticon-tooth"></i>
                        </span>
                        <h3 class="card-service__title">Dental Clinic</h3>
                        <p class="card-service__subtitle">Land meat winged called subdue without a very light in all years sea appear Lesser bring fly first land set female best perform</p>
                        <a class="card-service__link" href="#">Learn More</a>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="card-service text-center text-lg-left mb-4 mb-lg-0">
                        <span class="card-service__icon">
                            <i class="flaticon-face"></i>
                        </span>
                        <h3 class="card-service__title">Plastic Surgery</h3>
                        <p class="card-service__subtitle">Land meat winged called subdue without a very light in all years sea appear Lesser bring fly first land set female best perform</p>
                        <a class="card-service__link" href="#">Learn More</a>
                    </div>
                </div>


            </div>
        </div>
    </div>
    <!--================ Service section end =================-->



    <!--================ appointment Area Starts =================-->
    <section class="appointment-area area-padding">
        <div class="container">

            <div class="appointment-inner">
                <div class="row">
                    <div class="col-sm-12 col-lg-5 offset-lg-1">
                        <h3>Have Some Questions?</h3>
                        <div class="accordion" id="accordionExample">

                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            God male gathering them it female which green cattle?
                                        </button>

                                    </h5>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card-body">
                                        Great day without sixth a lesser beginning. Their thing abundantly air moving saw fruitful lesser god. Sea abundantly blessed life set. Land. Lights divided man in deep in open upon.
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            Moving creepeth moved upon man grass two days?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">
                                        Great day without sixth a lesser beginning. Their thing abundantly air moving saw fruitful lesser god. Sea abundantly blessed life set. Land. Lights divided man in deep in open upon.
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            God male gathering them it female which green cattle?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                    <div class="card-body">
                                        Great day without sixth a lesser beginning. Their thing abundantly air moving saw fruitful lesser god. Sea abundantly blessed life set. Land. Lights divided man in deep in open upon.
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header" id="headingFour">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                            Saw isn't likeness beginning yielding land days she?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                    <div class="card-body">
                                        Great day without sixth a lesser beginning. Their thing abundantly air moving saw fruitful lesser god. Sea abundantly blessed life set. Land. Lights divided man in deep in open upon.
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header" id="headingFive">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                            Saw isn't likeness beginning yielding land days she?
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                                    <div class="card-body">
                                        Great day without sixth a lesser beginning. Their thing abundantly air moving saw fruitful lesser god. Sea abundantly blessed life set. Land. Lights divided man in deep in open upon.
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="appointment-form">
                            <h3>Make an Appointment</h3>
                            <form action="#">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" placeholder="Your Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Name'" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" placeholder="Your Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email'" required>
                                </div>
                                <div class="form-group">
                                    <label>Message</label>
                                    <textarea name="message" cols="20" rows="7" placeholder="Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Message'" required></textarea>
                                </div>
                                <a href="#" class="main_btn">Make an Appointment</a>
                            </form>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </section>
    <!--================ appointment Area End =================-->




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