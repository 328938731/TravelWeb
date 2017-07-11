<%--
  Created by IntelliJ IDEA.
  User: AS
  Date: 2017/7/11
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>search</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <script src="js/jquery.min.js"></script>
    <script src="js/login.js"></script>
</head>
<body>
<div class="index-banner">
    <div class="header-top">
        <div class="wrap">
            <div class="logo">
                <a href="index.html"><img src="img/tm-neaty-logo.png" alt=""/></a>
            </div>
            <div class="menu">
                <a href="#" class="right_bt" id="activator"><img src="images/nav_icon.png" alt=""></a>
                <div class="box" id="box">
                    <div class="box_content_center">
                        <div class="menu_box_list">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li class="active"><a href="about.html">About</a></li>
                                <li><a href="blog.jsp">Blog</a></li>
                                <li><a href="gallery.html">Gallery</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                        <a class="boxclose" id="boxclose"><img src="images/close.png" alt=""></a>
                    </div>
                </div>
                <script type="text/javascript">
                    var $ = jQuery.noConflict();
                    $(function() {
                        $('#activator').click(function(){
                            $('#box').animate({'top':'0px'},500);
                        });
                        $('#boxclose').click(function(){
                            $('#box').animate({'top':'-700px'},500);
                        });
                    });
                    $(document).ready(function(){

                        //Hide (Collapse) the toggle containers on load
                        $(".toggle_container").hide();

                        //Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
                        $(".trigger").click(function(){
                            $(this).toggleClass("active").next().slideToggle("slow");
                            return false; //Prevent the browser jump to the link anchor
                        });

                    });
                </script>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="wmuSlider example1">
        <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
                <div class="cont span_2_of_3">
                    <h1>Photos, illustrations by<br> Creatives all over the world.</h1>
                    <div class="search_box">
                        <form>
                            <input type="text" value="People Walking" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'People Walking';}"><input type="submit" value="">
                        </form>
                    </div>
                </div>
            </div>
        </article>
        <article style="position: absolute; width: 100%; opacity: 0;">
            <div class="banner-wrap">
                <div class="cont span_2_of_3">
                    <h1>Photos, illustrations by<br> Creatives all over the world.</h1>
                </div>
            </div>
        </article>
    </div>
    <script src="js/jquery.wmuSlider.js"></script>
    <script>
        $('.example1').wmuSlider();
    </script>
</div>
<div class="main">
    <div class="content-bottom">
        <h2 class="m_2">Browse by Category</h2>
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_5 span_1_of_5">
                    <ul class="list1">
                        <li><a href="abstract.html">Abstract</a></li>
                        <li><a href="abstract.html">Animals/Wildlife</a></li>
                        <li><a href="abstract.html">The Arts</a></li>
                        <li><a href="abstract.html">Backgrounds/Textures</a></li>
                        <li><a href="abstract.html">Beauty/Fashion</a></li>
                        <li><a href="abstract.html">Buildings/Landmarks</a></li>
                    </ul>
                </div>
                <div class="col_1_of_5 span_1_of_5">
                    <ul class="list1">
                        <li><a href="abstract.html">Business/Finance</a></li>
                        <li><a href="abstract.html">Celebrities</a></li>
                        <li><a href="abstract.html">Editorial</a></li>
                        <li><a href="abstract.html">Education</a></li>
                        <li><a href="abstract.html">Food and Drink</a></li>
                        <li><a href="abstract.html">Healthcare/Medical</a></li>
                    </ul>
                </div>
                <div class="col_1_of_5 span_1_of_5">
                    <ul class="list1">
                        <li><a href="abstract.html">Holidays</a></li>
                        <li><a href="abstract.html">Illustrations/Clip-Art</a></li>
                        <li><a href="abstract.html">Industrial</a></li>
                        <li><a href="abstract.html">Interiors</a></li>
                        <li><a href="abstract.html">Miscellaneous</a></li>
                        <li><a href="abstract.html">Model Released Only</a></li>
                    </ul>
                </div>
                <div class="col_1_of_5 span_1_of_5">
                    <ul class="list1">
                        <li><a href="abstract.html">Nature</a></li>
                        <li><a href="abstract.html">Objects</a></li>
                        <li><a href="abstract.html">Parks/Outdoor</a></li>
                        <li><a href="abstract.html">People</a></li>
                        <li><a href="abstract.html">Religion</a></li>
                        <li><a href="abstract.html">Science</a></li>
                    </ul>
                </div>
                <div class="col_1_of_5 span_1_of_5">
                    <ul class="list1">
                        <li><a href="abstract.html">Signs/Symbols</a></li>
                        <li><a href="abstract.html">Sports/Recreation</a></li>
                        <li><a href="abstract.html">Technology</a></li>
                        <li><a href="abstract.html">Transportation</a></li>
                        <li><a href="abstract.html">Vectors</a></li>
                        <li><a href="abstract.html">Vintage</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>