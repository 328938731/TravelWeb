<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: AS
  Date: 2017/7/6
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="css/amazeui.css" />
    <link rel="stylesheet" href="css/other.min.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>地图功能</title>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>


<body>
<div class="login-box">

    <div class="logo-img">

        <h2>1、地址解析Geocoder</h2>

        //输入地址进行查询
        <input style="width:300px;" type="text" value="" id="address_1" />
        <input value="地址解析" type="button" onclick="fun_geocoder_getPoint();" />（getPoint：需要输入详细到街道的地址）</br>

        //反地址解析
        <span style="display:inline-block;line-height:20px;width:300px;font-size:14px;border-bottom:1px solid #ccc;" type="text" id="address_2"></span>
        <input value="反地址解析" type="button" onclick="fun_geocoder_getLocation();" />（getLocation：点击反地址解析后，点击地图返回地址。）</br>

        <h2>2、智能搜索Localsearch</h2>

        <input style="width:300px;" type="text" value="" id="keyword_1" /><input value="智能搜索" type="button" onclick="fun_search();" />（search：在指定城市或全国内搜索关键词。）</br>
        <input style="width:300px;" type="text" value="" id="keyword_2" /><input value="视野内搜索" type="button" onclick="fun_searchInBounds();" />（searchInBound：在可视范围内搜索关键词内容）</br>
        <div style="clear:both;margin:10px 0 0;"></div>
        <div style="width:800px;height:800px;border:1px solid gray;float:left;" id="container"></div>
        <div style="width:500px;height:430px;float:left;" id="results"></div>
        <div style="clear:both;"></div>
        <input type="button" onclick="map.clearOverlays();myLocalsearch.clearResults();" class="tm-button tm-button-wide" value="刷新" />  （清除地图上的覆盖物和检索结果）

    </div>

</div>

</body>
</html>

<script type="text/javascript">
    //以下两句话用来创建地图
    var map = new BMap.Map("container");    //创建地图容器
    map.centerAndZoom("武汉市",12);         //初始化地图。设置中心点和地图级别

    //添加鱼骨控件
    map.addControl(new BMap.NavigationControl());

    //获取各个id的value
    /*
     var value_address_1 = document.getElementById("address_1").value;
     var value_keyword_1 = document.getElementById("keyword_1").value;
     var value_keyword_2 = document.getElementById("keyword_2").value;
     var value_keyword_3_keywords = document.getElementById("keyword_3_keywords").value;
     var value_keyword_3_center_x = document.getElementById("keyword_3_center_x").value;
     var value_keyword_3_center_y = document.getElementById("keyword_3_center_y").value;
     var value_keyword_3_radius = document.getElementById("keyword_3_radius").value;
     */


    //创建地址解析的实例
    var myGeo = new BMap.Geocoder();
    //地址解析的函数
    function fun_geocoder_getPoint(){
        var value_address_1 = document.getElementById("address_1").value;
        myGeo.getPoint(value_address_1, function(point){
            if (point) {
                map.centerAndZoom(point, 15);
                map.addOverlay(new BMap.Marker(point));
            }
        }, "全国");
    }
    //反地址解析的函数
    function fun_geocoder_getLocation(){
        map.addEventListener("click", function(e){
            var pt = e.point;
            myGeo.getLocation(pt, function(rs){
                var addComp = rs.addressComponents;
                document.getElementById("address_2").innerHTML = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
            });
        });
    }

    //智能搜索Localsearch类
    var options = {renderOptions: {map: map, panel: "results"}};
    var myLocalsearch = new BMap.LocalSearch(map,options);
    //模糊查询search方法
    function fun_search(){
        var value_keyword_1 = document.getElementById("keyword_1").value;
        myLocalsearch.search(value_keyword_1);
    }
    //视野内搜索searchInBounds方法
    function fun_searchInBounds(){
        var value_keyword_2 = document.getElementById("keyword_2").value;
        myLocalsearch.searchInBounds(value_keyword_2, map.getBounds());
    }

</script>