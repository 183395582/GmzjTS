<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<div class="header header-topNav">
	<div class="topNav">
		<div class="wrapper clearfix">
			<div class="topNav_l">
				<ul>
					<li><a href=""><img
							src="${webRoot }static/images/icon/logo.png" width="100px" /></a></li>
					<li><a href="${webRoot }">首页 </a></li>
					<li><a href="">公墓/陵园</a></li>
					<li><a href="">殡仪服务</a></li>
					<li><a href="">风水堪舆</a></li>
					<li><a href="">百科 </a></li>
					<li><a href="">文章</a></li>
					<li><a href="">特色服务</a></li>
				</ul>
			</div>
			<!--登陆注册类-->
			<ul class="topNav_r clearfix">
				<li><a href="">登录</a></li>
				<li><a href="">注册</a></li>
				<li class="userBox hide"><p class="g9">
						你好，<span class="userName">xxxx</span>
					</p></li>
				<li class="exit line-r hide"><a href="">退出</a></li>
				<li class="service-peo noBag"><a href="javascript:;"
					class="servBtn">客户服务<span
						class="iconfont icon-iconfonticonfontjiantoucopy icon-up"></span><span
						class="iconfont icon-iconfonticonfontjiantou2 icon-down"></span></a>
					<div class="serviceBox">
						<div class="tit blue-f">咨询热线：40086-95522</div>
						<ul class="clearfix">
							<li><a href="#"><em
									class="iconfont icon-iconfonttuanduicheng"></em><span>关于我们</span></a></li>
							<li><a href="#"><em
									class="iconfont icon-iconfontweibiaoti5"></em><span>特色服务</span></a></li>
							<li><a href="#"><em
									class="iconfont icon-iconfontliuyanban"></em><span>客户留言</span></a></li>
						</ul>
						<div class="sm">
							<img src="${webRoot }static/images/pro/an-wx.jpg" class="fl" />
							<div class="tt fr pt15">
								扫描二维码 <br />关注官方微信
							</div>
						</div>
					</div></li>
			</ul>
		</div>
	</div>
</div>
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
				<li><a href="#">墓地风水</a></li>
				<li><a href="#">购墓指南</a></li>
				<li><a href="#">墓地咨询</a></li>
				<li><a href="#">预约看墓/购墓</a></li>
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
