<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<jsp:include page="../comm/topNav.jsp"/>
<div class="header header-logoSearch">
	<div class="logo-search">
		<div class="wrapper clearfix">
			<div class="logo pt15">
				<a href=""><img src="${webRoot }static/images/icon/ly-logo.png" /></a>
			</div>
			<div class="city-box">
				<jsp:include page="../comm/city.jsp"/>
			</div>
			<div class="searchBox">
				<div class="select-list">
					<select id="select-opt">
						<option>陵园墓地</option>
						<option value="1">陵园墓地1</option>
						<option value="2">陵园墓地2</option>
						<option value="3" selected>陵园墓地3</option>
						<option value="4">陵园墓地4</option>
					</select>
				</div>
				<div class="input-text">
					<input class="form-control" type="search" placeholder="请输入你是搜索的关键词" />

				</div>
				<div class="search-btn">
					<input type="button" value="搜索" class="searchBtn" />
				</div>
			</div>
			<div class="phone-number blue-f clearfix">
				<span class="iconfont icon-iconfontdianhua icon-dh"></span>
				<div class="info">
					<p>全国24小时服务热线</p>
					<p class="nu">4001234567</p>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="header header-meun">
	<!--菜单-->
	<div class="navMenu">
		<div class="wrapper">
			<ul class="clearfix">
				<li id="index"><a href="${webRoot }cemetery/index">首页</a></li>
				<li id="fullCemetery"><a href="${webRoot }cemetery/fullCemetery">墓地大全</a></li>
				<li id="map4Cemetery"><a href="${webRoot }cemetery/map4Cemetery">地图选墓</a></li>
				<li id="geomancy"><a href="${webRoot }cemetery/geomancy">墓地风水</a></li>
				<li id="buyingGuide"><a href="${webRoot }cemetery/buyingGuide">购墓指南</a></li>
				<li id="cemRefer"><a href="${webRoot }cemetery/cemRefer">墓地咨询</a></li>
				<li id="appointment"><a href="${webRoot }cemetery/appointment">预约看墓/购墓</a></li>
				<li><a href="#">平台优惠</a></li>
			</ul>
		</div>
	</div>
	<!--右侧-->
	<div class="rightNav">
		<div class="navBox">
			<div class="centerItem">
				<ul>
					<li class="itemH"><a href="javascript:;"><em
							class="iconfont icon-iconfontkefu"></em>客服</a>
						<div class="tags">
							<div class="tagsBox">24小时在线</div>
						</div></li>
					<li class="itemH"><a href="javascript:;"><em
							class="iconfont icon-iconfontweixin"></em>微信</a>
						<div class="tags tags-ma">
							<div class="tagsBox">
								<img src="${webRoot }static/images/pro/an-wx.jpg" class="img" />
							</div>
						</div></li>
					<li class="itemH"><a href="javascript:;"><em
							class="iconfont icon-iconfontdianhua"></em>电话</a>
						<div class="tags">
							<div class="tagsBox">4001234567</div>
						</div></li>
				</ul>
			</div>
			<div class="backToTop">
				<a href="javascript:void(0);"><em
					class="iconfont icon-iconfontgotop"></em></a>
			</div>
		</div>
	</div>
</div>

<!--下拉菜单-->
<script>
	$(window).load(function() {
		//下拉选择
		$("#select-opt").selectpick({container:'.select-list',onSelect:function(value,text){
			enAble();}
		});
		
	  	$('.slider-box1').flexslider({animation: "slide",controlNav:false,animationLoop: false,slideshow: false,});
	});
	//菜单选中效果
	$("#"+"${page}").addClass("curr");
	
	function processScore(){
		$(".score").each(function(){
			handleScore(this);
		});
	}
</script>
