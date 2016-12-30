<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../mytags.jsp"%>
<html lang="zh">
<head>
<title>地图选墓</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name="description" content="">
<meta name="keywords" content="">
<jsp:include page="../comm/script.jsp" />
<jsp:include page="../comm/css.jsp" />

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=yaDRGoon5YoRzAAwH781yUgn"></script>
<script type="text/javascript" src="http://developer.baidu.com/map/custom/stylelist.js"></script>
<script type="text/javascript" src="${webRoot }static/script/slimscroll/jquery.slimscroll.js"></script>
<style type="text/css">
body, html, #allmap {
	width: 100%;
	height: 100%;
	margin: 0;
	font-family: "微软雅黑";
}

#l-map {
	height: 100%;
	width: 100%;
}

#r-result {
	position: absolute;
	top: 0px;
	left: 80%;
}
</style>
</head>
<body>
	<jsp:include page="layout-top.jsp" flush="true" />

	<div class="main-con">
		<div class="wrapper">
			<div class="mapBox clearfix">
				<div class="btnscoll">
					<div id="btnshow">
						<i class="iconfont icon-jiantou-copy"></i>
					</div>
					<div id="btnhide" style="display: none;">
						<i class="iconfont icon-jiantou-copy1"></i>
					</div>
				</div>
				<div class="side-slect">
					<form action="${webRoot }cemetery/map4Cemetery" >
					<div class="areSlect">
						<div class="title">所在区域</div>
						<ul class="clearfix">
							<ul class="clearfix hov-bg">
								<li <c:if test="${regionno == null }">class="curr"</c:if>>
									<a href="javascript:;" onclick="GoPage('', this)">不限 </a>
									<input type="hidden" name="" value=""/>
								</li>
								<c:forEach items="${sessionScope.regions }" var="region" varStatus="vs">
									<li <c:if test="${regionno == region.no }">class="curr"</c:if>>
										<a href="javascript:;" onclick="GoPage('regionno', this)">${region.name } </a>
										<input type="hidden" name="<c:if test="${regionno == region.no }">regionno</c:if>" value="${region.no }"/>
									</li>
								</c:forEach>
							</ul>
						</ul>
					</div>
					</form>
					<div class="mt20 side-list">
						<div class="listMore-scroll" id="cemetery-list">
						</div>
					</div>

				</div>
				<div class="main-map">
					<div id="l-map"></div>
					<div id="r-result"></div>
					<input type="hidden" id="point" value="${point }">
				</div>
			</div>


			<!--友情链接-->
			<div class="friend-link mt40">
				<h2>友情链接</h2>
				<div class="link-more">
					<a href="#">四川殡葬 </a> <a href="#">绵阳殡葬</a> <a href="#">重庆殡葬</a> <a
						href="#">开阳殡葬</a> <a href="#">西安殡葬</a> <a href="#">舟山殡葬</a> <a
						href="#">淮海殡葬</a> <a href="#">北海殡葬</a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../comm/footer.jsp"/>
	<script type="text/javascript">
		Handlebars.registerHelper("compare",function(v){
			if(v < 3){
				//满足添加继续执行
				return "orange-bg";
			}else{
				//不满足条件执行{{else}}部分
				return "blue-bg";
			}
		});
		Handlebars.registerHelper("addOne",function(v){
			return parseInt(v) + 1;
		});
		//联动下拉菜单交互
		$('.listMore-scroll').slimscroll({
			opacity : 1,
			size : 4/*,railVisible:true*/,
			color : '#707070',
			railColor : '#e3e3e3',
			railVisible : true,
			railOpacity : 1
		});
		//侧边点击
		//点击收缩和展示按钮来显示隐藏二级菜单

		$("#btnshow").bind("click", function() {
			$(".side-slect").css("display", "none");
			$(".main-map").css("margin-left", 0);
			$(this).parents(".btnscoll").css("left", 0);
			$("#btnhide").show();
			$("#btnshow").hide();
		});
		$("#btnhide").bind("click", function() {
			$(".side-slect").css("display", "block");
			$(".main-map").css("margin-left", 360);
			$(this).parents(".btnscoll").css("left", 360);
			$("#btnhide").hide();
			$("#btnshow").show();
		});
		
		function GoPage(name, e){
			$(e).next().attr("name", name);
			$(e).parent().siblings().find("input").attr("name", "");
			$("form").submit();
		}
	</script>
	<script type="text/javascript">
		var data_info;
		function getCoordinates(){
			var regionno = GetQueryString("regionno");
			data_info = new Array();
			$.get("${webRoot}cemetery/getCemeterys?type_equalTo=01&regionno_equalTo="+regionno, function(data){
				var result = eval(data);
				var num = 0;
				$(result).each(function(index) {
					if(this.coordinate != '' && this.coordinate != null){
						var point_info = new Array(4);
						point_info[0] = this.coordinate.split(",")[0];
						point_info[1] = this.coordinate.split(",")[1];
						point_info[2] = this.name;
						point_info[3] = this.address;
						point_info[4] = this.id;
						data_info[num] = point_info;
						num ++;
					}
				});
				var template = Handlebars.compile($("#cemetery-template").html());
				var data = {"cemeterys" : result};
				$('#cemetery-list').html(template(data));
			});
		}
		var map = new BMap.Map("l-map");
		// 百度地图API功能
		function initMap() {
			// 百度地图API功能
			map.centerAndZoom(new BMap.Point(104.146583,30.69504), 13);
			var top_left_control = new BMap.ScaleControl({
				anchor : BMAP_ANCHOR_TOP_LEFT
			});// 左上角，添加比例尺
			var top_left_navigation = new BMap.NavigationControl(); //左上角，添加默认缩放平移控件
			var top_right_navigation = new BMap.NavigationControl({
				anchor : BMAP_ANCHOR_TOP_RIGHT,
				type : BMAP_NAVIGATION_CONTROL_SMALL
			}); //右上角，仅包含平移和缩放按钮
			map.addControl(top_left_control);
			map.addControl(top_left_navigation);
			map.addControl(top_right_navigation);
			map.enableScrollWheelZoom(); //启用滚轮放大缩小，默认禁用
			map.enableContinuousZoom(); //启用地图惯性拖拽，默认禁用
			setTimeout("addPolyline()", 1000);
		}
		
	    //向地图中添加线函数
	    function addPolyline(){
	    	for(var i = 0; i < data_info.length; i++){
				//var myIcon = new BMap.Icon("", new BMap.Size(25,25));
				var marker = new BMap.Marker(new BMap.Point(data_info[i][0], data_info[i][1]));  // 创建标注
				var content = "<div><h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+data_info[i][2]+"</h4>"
				+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+data_info[i][3]+"</p></div>";
				addClickHandler(content, marker);
				map.addOverlay(marker); // 将标注添加到地图中
				marker.enableDragging();// 不可拖拽
			}
		}
	    
	    function cemeterSearch(id){
			if (id != null && id != ""){
				for(var i=0; i<data_info.length; i++){
					if (data_info[i][4] == id) {
						map.clearOverlays();
						var new_point = new BMap.Point(data_info[i][0], data_info[i][1]);
						var marker = new BMap.Marker(new_point);  // 创建标注
						marker.setAnimation(BMAP_ANIMATION_BOUNCE);
						map.addOverlay(marker);              // 将标注添加到地图中
						map.panTo(new_point);
						
						var opts = {
								  width : 200,     // 信息窗口宽度
								  height: 100,     // 信息窗口高度
								  title : data_info[i][2]  // 信息窗口标题
								}
						var infoWindow = new BMap.InfoWindow("地址：" + data_info[i][3], opts);  // 创建信息窗口对象 
						marker.addEventListener("click", function(){          
							map.openInfoWindow(infoWindow, new_point); //开启信息窗口
						});
					}
				}
			}
		}
	    
		function addClickHandler(content, marker){
			marker.addEventListener("click",function(e){
				openInfo(content, e)}
			);
		}
		function openInfo(content, e){
			var p = e.target;
			var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
			var infoWindow = new BMap.InfoWindow(content);  // 创建信息窗口对象 
			infoWindow.setWidth(200);
		    infoWindow.setHeight(150);
			map.openInfoWindow(infoWindow, point); //开启信息窗口
		}
		initMap();
		getCoordinates();
		
	</script>
	<script type="text/javascript" src="${webRoot }static/script/tm.pagination.js"></script>
	<script type="text/javascript" src="${webRoot }static/js/cemetery.js"></script>
	<script id="cemetery-template" type="text/x-handlebars-template">
	{{#each cemeterys}}
         <div class="item">
			<div class="num {{#compare @index}}{{/compare}}">{{#addOne @index}}{{/addOne}}</div>
			<div class="info">
				<div class="title clearfix">
					<a href="#" class="name">{{name }}</a>
					<div class="t-f">
						<span class="orangeBtn-line btn">认证</span> 
						<span class="redBtn-line btn">团购</span>
					</div>
					<a class="camera-icon" href="javascript:cemeterSearch({{id}})">
						<i class="iconfont icon-dingwei"></i>
					</a>
				</div>
				<div class="ds-g">${cemtery.address }</div>
				<div class="price">
					￥{{price }} <span>起</span>
				</div>
				<div class="ar">
					<a href="">查看资料 > </a>
				</div>
			</div>
		</div> 
    {{/each}}
	</script>
</body>

</html>
