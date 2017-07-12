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
            <form method="post" action="Servlet?method=route" class="am-form" data-am-validator>
                <input type="hidden" name="method" value="setRoute">
                <h2>1、地址解析Geocoder</h2>
                出发地：
                <input style="width:300px;" type="text" value="" id="address_start" name="address_start"/>
                <br>
                目的地：
                <input style="width:300px;" type="text" value="" id="address_end" name="address_end"/>
                <input class="am-btn am-btn-secondary" value="地址解析" type="button" onclick="fun_geocoder_getPointStart();fun_geocoder_getPointEnd();" />（getPoint：需要输入详细到街道的地址）</br>
                <input class="am-btn am-btn-secondary" value="导航" type="button" onclick="drivingSearch();" />
                <button class="am-btn am-btn-secondary"  type="submit" name="action">保存</button>
                <br>
                反地址解析
                <span style="display:inline-block;line-height:20px;width:300px;font-size:14px;border-bottom:1px solid #ccc;" type="text" id="address_2"></span>
                <input class="am-btn am-btn-secondary" value="反地址解析" type="button" onclick="fun_geocoder_getLocation();" />（getLocation：点击反地址解析后，点击地图返回地址。）
                </br>
                <h2>2、智能搜索Localsearch</h2>

        <input style="width:300px;" type="text" value="" id="keyword_1" />
                <input class="am-btn am-btn-secondary" value="智能搜索" type="button" onclick="fun_search();" />（search：在指定城市或全国内搜索关键词。）</br>
        <input style="width:300px;" type="text" value="" id="keyword_2" />
                <input class="am-btn am-btn-secondary" value="视野内搜索" type="button" onclick="fun_searchInBounds();" />（searchInBound：在可视范围内搜索关键词内容）</br>
        <div style="clear:both;margin:10px 0 0;"></div>
        <div style="width:800px;height:800px;border:1px solid gray;float:left;" id="container"></div>
        <div style="width:500px;height:430px;float:left;" id="panel"></div>
        <div style="width:500px;height:430px;float:left;" id="results"></div>
        <div style="clear:both;"></div>
        <input type="button" onclick="map.clearOverlays();myLocalsearch.clearResults();" class="tm-button tm-button-wide" value="刷新" />  （清除地图上的覆盖物和检索结果）

        </form>
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

    var driving = new BMap.DrivingRoute(map, {
        renderOptions: {
            map: map,
            panel: 'panel',
            enableDragging: true,
            onSearchComplete: function(results){
                if (driving.getStatus() == BMAP_STATUS_SUCCESS) {
                    // 地图覆盖物
                    addOverlays(results);
                    // 方案描述
                    addText(results);
                }
            }
        }

    });

    //地址解析的函数
    function fun_geocoder_getPointStart(){
        var value_address_1 = document.getElementById("address_start").value;
        myGeo.getPoint(value_address_1, function(point){
            if (point) {
                map.centerAndZoom(point, 15);
                map.addOverlay(new BMap.Marker(point));
            }
        }, "全国");
    }
    function fun_geocoder_getPointEnd(){
        var value_address_1 = document.getElementById("address_end").value;
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


    //获取多个路线
    function addText(results) {
        var plan = results.getPlan(0);
        // 获取方案中包含的路线
        var htmls = [];
        for (var i =0; i < plan.getNumRoutes(); i ++) {
            var route = plan.getRoute(i);
            for (var j =0; j < route.getNumSteps(); j ++) {
                var curStep = route.getStep(j);
                htmls.push((j +1) +'. '+ curStep.getDescription() +'<br />');
            }
        }
        var panel = document.getElementById('panel');
        panel.innerHTML = htmls.join('');
        panel.style.lineHeight ='1.4em';
        panel.style.fontSize ='12px';
    }

    function drivingSearch()
    {
        driving.search(document.getElementById("address_start").value,document.getElementById("address_end").value);
    }
</script>