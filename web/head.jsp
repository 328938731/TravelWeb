<%--
  Created by IntelliJ IDEA.
  User: AS
  Date: 2017/7/11
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
<script src="js/hover_pack.js"></script>
<head>
    <div class="index-banner1">
        <div class="header-top">
            <div class="wrap">
                <div class="logo">
                    <a href="index.jsp"><img src="img/tm-neaty-logo.png" alt=""/></a>
                </div>
                <div class="menu">
                    <a href="#" class="right_bt" id="activator"><img src="images/nav_icon.png" alt=""></a>
                    <div class="box" id="box">
                        <div class="box_content_center1">
                            <div class="menu_box_list1">
                                <ul>
                                    <li><a href="index.jsp">主页</a></li>
                                    <li><a href="search.jsp">搜索</a></li>
                                    <li><a href="hotProduct.jsp">热门产品</a></li>
                                    <li><a href="hotShare.jsp">热门分享</a></li>
                                    <li><a href="baiduMap.jsp">地图功能</a></li>
                                    <li><a href="404.jsp">发布分享</a></li>
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
    </div>
</head>
<body>

</body>
</html>
