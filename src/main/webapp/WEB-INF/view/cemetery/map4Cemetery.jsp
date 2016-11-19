<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../mytags.jsp"%>
<html lang="zh">
<head>
<title>墓地大全</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta name="description" content="">
<meta name="keywords" content="">
<jsp:include page="../comm/script.jsp" />
<jsp:include page="../comm/css.jsp" />
<script type="text/javascript" src="${webRoot }static/script/tm.pagination.js"></script>
<script type="text/javascript" src="${webRoot }static/js/cemetery.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=yaDRGoon5YoRzAAwH781yUgn"></script>
<script type="text/javascript" src="http://developer.baidu.com/map/custom/stylelist.js"></script>
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
	<jsp:include page="comm.jsp" flush="true" />

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
					<div class="areSlect">
						<div class="title">所在区域</div>
						<ul class="clearfix">
							<li class="curr"><a href="#">不限</a></li>
							<li><a href="">武侯区</a></li>
							<li><a href="">锦江区</a></li>
							<li><a href="">成华区</a></li>
							<li><a href="">金牛区</a></li>
							<li><a href="">温江区</a></li>
							<li><a href="">龙泉驿区</a></li>
							<li><a href="">青白江区</a></li>
							<li><a href="">新都区</a></li>
							<li><a href="">双流县</a></li>
							<li><a href="">金堂县</a></li>
							<li><a href="">郫县</a></li>
							<li><a href="">大邑县</a></li>
							<li><a href="">浦江县</a></li>
							<li><a href="">都江堰市</a></li>
							<li><a href="">邛崃市</a></li>
							<li><a href="">崇州市</a></li>
						</ul>
					</div>
					<div class="mt20 side-list">
						<div class="listMore-scroll">
							<div class="item">
								<div class="num orange-bg">1</div>
								<div class="info">
									<div class="title clearfix">
										<a href="#" class="name">青城山味江陵园</a>
										<div class="t-f">
											<span class="orangeBtn-line btn">认证</span> <span
												class="redBtn-line btn">团购</span>
										</div>
										<a href="" class="camera-icon"><i
											class="iconfont icon-dingwei"></i></a>
									</div>
									<div class="ds-g">成都市都江堰伟江区</div>
									<div class="price">
										￥88343 <span>起</span>
									</div>
									<div class="ar">
										<a href="">查看资料 > </a>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="num orange-bg">2</div>
								<div class="info">
									<div class="title clearfix">
										<a href="#" class="name">青城山味江陵园</a>
										<div class="t-f">
											<span class="orangeBtn-line btn">认证</span> <span
												class="redBtn-line btn">团购</span>
										</div>
										<a href="" class="camera-icon"><i
											class="iconfont icon-dingwei"></i></a>
									</div>
									<div class="ds-g">成都市都江堰伟江区</div>
									<div class="price">
										￥88343 <span>起</span>
									</div>
									<div class="ar">
										<a href="">查看资料 > </a>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="num orange-bg">3</div>
								<div class="info">
									<div class="title clearfix">
										<a href="#" class="name">青城山味江陵园</a>
										<div class="t-f">
											<span class="orangeBtn-line btn">认证</span> <span
												class="redBtn-line btn">团购</span>
										</div>
										<a href="" class="camera-icon"><i
											class="iconfont icon-dingwei"></i></a>
									</div>
									<div class="ds-g">成都市都江堰伟江区</div>
									<div class="price">
										￥88343 <span>起</span>
									</div>
									<div class="ar">
										<a href="">查看资料 > </a>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="num blue-bg">4</div>
								<div class="info">
									<div class="title clearfix">
										<a href="#" class="name">青城山味江陵园</a>
										<div class="t-f">
											<span class="orangeBtn-line btn">认证</span> <span
												class="redBtn-line btn">团购</span>
										</div>
										<a href="" class="camera-icon"><i
											class="iconfont icon-dingwei"></i></a>
									</div>
									<div class="ds-g">成都市都江堰伟江区</div>
									<div class="price">
										￥88343 <span>起</span>
									</div>
									<div class="ar">
										<a href="">查看资料 > </a>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="num blue-bg">5</div>
								<div class="info">
									<div class="title clearfix">
										<a href="#" class="name">青城山味江陵园</a>
										<div class="t-f">
											<span class="orangeBtn-line btn">认证</span> <span
												class="redBtn-line btn">团购</span>
										</div>
										<a href="" class="camera-icon"><i
											class="iconfont icon-dingwei"></i></a>
									</div>
									<div class="ds-g">成都市都江堰伟江区</div>
									<div class="price">
										￥88343 <span>起</span>
									</div>
									<div class="ar">
										<a href="">查看资料 > </a>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="num blue-bg">6</div>
								<div class="info">
									<div class="title clearfix">
										<a href="#" class="name">青城山味江陵园</a>
										<div class="t-f">
											<span class="orangeBtn-line btn">认证</span> <span
												class="redBtn-line btn">团购</span>
										</div>
										<a href="" class="camera-icon"><i
											class="iconfont icon-dingwei"></i></a>
									</div>
									<div class="ds-g">成都市都江堰伟江区</div>
									<div class="price">
										￥88343 <span>起</span>
									</div>
									<div class="ar">
										<a href="">查看资料 > </a>
									</div>
								</div>
							</div>
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
	<div class="footer">
		<div class="wrapper clearfix">
			<div class="col-fl tips-note">
				<dl>
					<dt>平台功能</dt>
					<dd>
						<a href="#">天使服务</a>
					</dd>
					<dd>
						<a href="#">生前契约 </a>
					</dd>
					<dd>
						<a href="#">在线告别式 </a>
					</dd>
					<dd>
						<a href="#">二维码扫墓</a>
					</dd>
					<dd>
						<a href="#">特色服务</a>
					</dd>
				</dl>
				<dl>
					<dt>服务指南</dt>
					<dd>
						<a href="#">服务预约流程</a>
					</dd>
					<dd>
						<a href="#">在线告别式 </a>
					</dd>
					<dd>
						<a href="#">二维码扫墓</a>
					</dd>
					<dd>
						<a href="#">特色服务</a>
					</dd>
				</dl>
				<dl>
					<dt>商家合作</dt>
					<dd>
						<a href="#">合作流程</a>
					</dd>
					<dd>
						<a href="#">合作政策</a>
					</dd>
					<dd>
						<a href="#">商家评级体系</a>
					</dd>
				</dl>
			</div>
			<div class="col-fl media-box">
				<div class="weixin media-icon">
					<em class="iconfont icon-weixin"></em> 微信公众号
				</div>
				<div class="weixin media-icon">
					<em class="iconfont icon-weibo"></em> 官方微博
				</div>
			</div>
			<div class="col-fl e-wm">
				<div class="img">
					<img src="images/pro/an-wx.jpg" />
				</div>
				<p>至终守护 &nbsp; &nbsp; 温暖如家</p>
			</div>

		</div>
	</div>
	<div class="footer-bottom">
		<div class="wrapper">
			<p class="mb5">copyright2012-2016 公墓之家，ALLRights Reserved
				ICP备案：蜀ICP备140009697号-2</p>
			<img src="images/icon/footer.jpg" />
		</div>
	</div>
	<!--下拉菜单-->
	<link href="${webRoot }static/script/select/selectpick.css"
		rel="stylesheet" type="text/css" />
	<script type="text/javascript"
		src="${webRoot }static/script/select/selectpick.js"></script>
	<script type="text/javascript">
		//下拉选择
		$("#select-opt").selectpick({
			container : '.select-list',
			onSelect : function(value, text) {
				enAble();
			}
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
	</script>
	<script type="text/javascript">
		function GetQueryString(name) {
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
			var r = window.location.search.substr(1).match(reg);
			if (r != null)
				return unescape(r[2]);
			return null;
		}
		var pi = GetQueryString("point");
		var map = new BMap.Map("l-map");
		// 百度地图API功能	
		function initMap() {
			// 百度地图API功能
			var point = null
			if (pi == null || pi == "") {
				point = new BMap.Point(104.145982, 30.698948);
			} else {
				point = new BMap.Point(pi.split(",")[0], pi.split(",")[1]);
			}
			map.centerAndZoom(point, 12);
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
			var marker = new BMap.Marker(point);// 创建标注
			map.addOverlay(marker); // 将标注添加到地图中
			marker.enableDragging(); // 不可拖拽

			marker
					.addEventListener(
							"dragging",
							function(e) {
								window.opener.document.getElementById('span').textContent = e.point.lng
										+ ", " + e.point.lat;
								window.opener.document
										.getElementById('coordinate').value = e.point.lng
										+ ", " + e.point.lat;
							})
			var bdary = new BMap.Boundary();
			bdary.get('${region}', function(rs) { //获取行政区域
				var count = rs.boundaries.length;
				for (var i = 0; i < count; i++) {
					var ply = new BMap.Polygon(rs.boundaries[i], {
						strokeWeight : 4,
						strokeColor : "#007fff",
						strokeStyle : "dashed"
					}); //建立多边形覆盖物
					ply.setFillColor();
					map.addOverlay(ply); //添加覆盖物

					map.setViewport(ply.getPath()); //调整视野         
				}
			});

		}
		initMap();
	</script>
</body>

</html>
