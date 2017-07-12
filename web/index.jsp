<%--
  Created by IntelliJ IDEA.
  User: AS
  Date: 2017/7/7
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>主页</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                <!-- Magnific pop up style, http://dimsemenov.com/plugins/magnific-popup/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <div class="row">
        <div class="tm-left-right-container">
            <!-- Left column: logo and menu -->
            <div class="tm-blue-bg tm-left-column">
                <div class="tm-logo-div text-xs-center">
                    <img src="img/index_logo.png" alt="Logo">
                </div>
                <nav class="tm-main-nav">
                    <ul class="tm-main-nav-ul">
                        <li class="tm-nav-item">
                            <a onclick="window.location.href='http://localhost:8080/login.jsp'">登录/注册</a>

                        </li>
                        <li class="tm-nav-item">
                            <a href="#about" class="tm-nav-item-link">搜索</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#galleryone" class="tm-nav-item-link">热门产品</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#secondgallery" class="tm-nav-item-link">热门游记</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#thirdgallery" class="tm-nav-item-link">地图功能</a>
                        </li>
                        <li class="tm-nav-item">
                            <a href="#contact" class="tm-nav-item-link">分享</a>
                        </li>
                    </ul>
                </nav>
            </div> <!-- Left column: logo and menu -->


            <!-- Right column: content -->
            <div class="tm-right-column">
                <figure>
                    <img src="img/neaty-01.jpg" alt="Header image" class="img-fluid">
                </figure>

                <div class="tm-content-div">


                    <!-- About section -->
                    <section id="about" class="tm-section">
                        <div class="row">
                            <div class="col-lg-8 col-md-7 col-sm-12 col-xs-12 push-lg-4 push-md-5">
                                <header>
                                    <h2 class="tm-blue-text tm-section-title tm-margin-b-45">网页简介</h2>
                                </header>
                                <p>Sed turpis nunc, laoreet sit amet fermentum sed, euismod ac justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                                <p>Donec ut lectus semper, sollicitudin risus blandit, mattis felis. Nam non malesuada odio. Vestibulum vaius, arcu eget rutrum consequat, arcu lacus imperdiet arcu, id pulvinar arcu erat vel magna.</p>
                                <p>Ut commodo malesuada eros, quis consequat ante tincidunt ut. Suspendisse malesuada augue vitae nisi sollicitudin placerat.</p>
                                <a href="search.jsp" class="tm-button tm-button-wide">开始旅途</a>
                            </div>

                            <div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 pull-lg-8 pull-md-7 tm-about-img-container">
                                <img src="img/neaty-02.jpg" alt="Image" class="img-fluid">
                            </div>
                        </div>
                    </section>

                    <!-- Gallery One section -->
                    <section id="galleryone" class="tm-section">
                        <header><h2 class="tm-blue-text tm-section-title tm-margin-b-30">热门产品</h2></header>
                        <div class="tm-gallery-container tm-gallery-1">
                            <div class="tm-img-container tm-img-container-1">
                                <a href="img/neaty-03.jpg"><img src="img/neaty-03.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                            <div class="tm-img-container tm-img-container-1">
                                <a href="img/neaty-04.jpg"><img src="img/neaty-04.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                            <div class="tm-img-container tm-img-container-1">
                                <a href="img/neaty-05.jpg"><img src="img/neaty-05.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                            <div class="tm-img-container tm-img-container-1">
                                <a href="img/neaty-06.jpg"><img src="img/neaty-06.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                            <div class="tm-img-container tm-img-container-1">
                                <a href="img/neaty-07.jpg"><img src="img/neaty-07.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                        </div>
                    </section>

                    <!-- Second Gallery section -->
                    <section id="secondgallery" class="tm-section">
                        <header><h2 class="tm-blue-text tm-section-title tm-margin-b-30">热门游记</h2></header>
                        <div class="tm-gallery-container tm-gallery-2">
                            <div class="tm-img-container tm-img-container-2">
                                <a href="img/neaty-08.jpg"><img src="img/neaty-08.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                            <div class="tm-img-container tm-img-container-2">
                                <a href="img/neaty-09.jpg"><img src="img/neaty-09.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                            <div class="tm-img-container tm-img-container-2">
                                <a href="img/neaty-10.jpg"><img src="img/neaty-10.jpg" alt="Image" class="img-fluid tm-img-tn"></a>
                            </div>
                        </div>
                    </section>


                    <!-- Third Gallery section -->
                    <section id="thirdgallery" class="tm-section">
                        <header><h2 class="tm-blue-text tm-section-title tm-margin-b-30">地图功能</h2></header>
                        <a href="baiduMap.jsp"><img src="img/baiduMap.jpg"></a>
                    </section>

                    <!-- Contact Us section -->
                    <section id="contact" class="tm-section">
                        <header><h2 class="tm-blue-text tm-section-title tm-margin-b-30">分享</h2></header>

                        <div class="row">
                            <div class="col-lg-6">
                                <form action="#contact" method="post" class="contact-form">
                                    <div class="form-group">
                                        <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Title"  required/>
                                    </div>
                                    <div class="form-group">
                                        <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="site"  required/>
                                    </div>
                                    <div class="form-group">
                                        <textarea id="contact_message" name="contact_message" class="form-control" rows="9" placeholder="passage" required></textarea>
                                    </div>
                                    <button type="submit" class="float-right tm-button">分享</button>
                                </form>
                            </div>

                            <div class="col-lg-6 tm-contact-right">
                                <p>
                                    Nullam vivera fermentum purus id blandit. Phasellus lacus mi, porta vel sodales nec, faucibus non eros. Nulla at quam vel risus laoreet tincidunt in in sem.
                                </p>
                                <address>
                                    11/22 Etiam mauris erat,<br>
                                    Vestibulum eu augue nec, 10220<br>
                                    Nam consequat
                                </address>
                            </div>
                        </div>

                    </section>

                </div>

            </div> <!-- Right column: content -->
        </div>
    </div> <!-- row -->
</div> <!-- container -->

<!-- load JS files -->
<script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
<script src="js/jquery.magnific-popup.min.js"></script>     <!-- Magnific pop-up (http://dimsemenov.com/plugins/magnific-popup/) -->
<script src="js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
<script>

    $(document).ready(function(){

        // Single page nav
        $('.tm-main-nav').singlePageNav({
            'currentClass' : "active",
            offset : 20
        });

        // Magnific pop up
        $('.tm-gallery-1').magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image',
            gallery: {enabled:true}
            // other options
        });

        $('.tm-gallery-2').magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image',
            gallery: {enabled:true}
            // other options
        });

        $('.tm-gallery-3').magnificPopup({
            delegate: 'a', // child items selector, by clicking on it popup will open
            type: 'image',
            gallery: {enabled:true}
            // other options
        });

        $('.tm-current-year').text(new Date().getFullYear());
    });
</script>
</body>
</html>