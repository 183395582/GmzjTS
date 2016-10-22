<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<title>公墓陵园</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="shortcut icon"
	href="<%=basePath%>static/images/icon/gm-favicon.ico">
<link href="<%=basePath%>static/css/bese.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>static/css/index.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="<%=basePath%>static/script/UI.js"></script>
<script type="text/javascript"
	src="<%=basePath%>static/script/commen.js"></script>
<jsp:include page="../comm/script.jsp" />

</head>
<body ng-app="myApp">
	<jsp:include page="comm.jsp" flush="true" />
	<!--header-end-->
	<div class="banner-box">
		<div class="wrapper pt10">
			<a href=""><img
				src="<%=basePath%>static/images/banner/ly-banner.jpg"></a>
		</div>
	</div>

	<div class="main-con">
		<div class="wrapper">
			<h2>
				<img src="<%=basePath%>static/images/icon/icon1.png" /> 尊享专区<span
					class="font-12">给逝者一个最高的敬畏</span>
			</h2>
			<div class="flexslider slider-box1" ng-controller="enjoyCtrl">
				<ul class="slides">
					<li>
						<div class="info-box row-fluid item-height">
							<div class="col-4 col item" ng-repeat="x in cemTypes">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											{{x.name}} <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">{{getCemName(x.cemId)}}</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>{{x.price}}</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="font-12 pt5 al">
											<div class="old-price gray-f">
												原价：
												<del>￥{{x.origPrice}}</del>
											</div>
										</div>
									</div>
									<div class="pt5 stand-ac">
										<span class="orangBtn btn"> {{x.feature}}</span>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="info-box row-fluid item-height">
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="font-12 pt5 al">
											<div class="old-price gray-f">
												原价：
												<del>￥92324</del>
											</div>
										</div>
									</div>
									<div class="pt5 stand-ac">
										<span class="orangBtn btn"> 位处中谭 ，福荫后人</span>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big o-f">
											专属贵宾区 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">参考价：暂无（请详询）</small>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
									</div>
									<div class="pt5 stand-ac">
										<span class="orangBtn btn"> 位处中谭 ，福荫后人</span>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="font-12 pt5 al">
											<div class="old-price gray-f">
												原价：
												<del>￥92324</del>
											</div>
										</div>
									</div>
									<div class="pt5 stand-ac">
										<span class="orangBtn btn"> 位处中谭 ，福荫后人</span>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big o-f">
											专属贵宾区 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">参考价：暂无（请详询）</small>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
									</div>
									<div class="pt5 stand-ac">
										<span class="orangBtn btn"> 位处中谭 ，福荫后人</span>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<h2>
				<img src="<%=basePath%>static/images/icon/icon2.png" /> 特惠墓型
			</h2>
			<div class="flexslider slider-box1">
				<ul class="slides">
					<li>
						<div class="info-box row-fluid">
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</li>
					<li>
						<div class="info-box row-fluid">
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-4 col item">
								<div class="img-box">
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl name-big">
											凤凰华庭 <span class="redBtn-line btn">认证</span>
										</h3>
										<div class="small-name fr">长松寺公墓</div>
										<div class="clear"></div>
									</div>
									<div class="price-box-big">
										<div class="money-small clearfix">
											<div class="tt fl">
												<small class="gray-f">特惠价：</small>￥<span>88343</span>
											</div>
											<div class="checkBox fr">
												<a href="" class="blueBtn btn">查看</a>
											</div>
										</div>
										<div class="clearfix font-12 pt5">
											<div class="old-price gray-f fl">
												原价：
												<del>￥92324</del>
											</div>
											<div class="fr gray-f-d">已有238人获得优惠</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</li>
				</ul>
			</div>
			<div class="fast-search">
				<h2>快速查找</h2>
				<div class="fastCon row-fluid">
					<div class="col col-3">
						<h3>
							<span class="iconfont icon-dingwei"></span>所在区域
						</h3>
						<ul class="list">
							<li><a href="#">锦江区 </a> <a href="#">成华区</a> <a href="#">武侯区</a>
								<a href="#">金牛区</a></li>
							<li><a href="#">温江区 </a> <a href="#">成华区</a> <a href="#">新都区</a>
								<a href="#">青白江区</a></li>
						</ul>
					</div>
					<div class="col col-3">
						<h3>
							<span class="iconfont icon-icon21"></span>价格区间
						</h3>
						<ul class="list">
							<li><a href="#">1万以下</a> <a href="#">1-2万 </a> <a href="#">2-5万
							</a> <a href="#">5-10万</a></li>
							<li><a href="#">10-20万 </a> <a href="#"> 20万以上</a></li>
						</ul>
					</div>
					<div class="col col-3">
						<h3>
							<span class="iconfont icon-icon23"></span>距离市区
						</h3>
						<ul class="list">
							<li><a href="#">110公里 </a> <a href="#">10-20公里</a> <a
								href="#">20-40公里</a> <a href="#">40-50公里</a></li>
							<li><a href="#">50公里以上 </a></li>
						</ul>
					</div>
				</div>
			</div>
			<h2 class="line">
				<span class="c-t">服务流程</span>
			</h2>
			<ul class="tips-nav clearfix">
				<li><a href="">
						<div class="w-bg">
							<span class="iconfont icon-icon15"></span>
						</div>
						<div class="tx">免费专业咨询</div>
				</a></li>
				<li><a href="">
						<div class="w-bg">
							<span class="iconfont icon-icon16"></span>
						</div>
						<div class="tx">免费设计看墓/购墓方案</div>
				</a></li>
				<li><a href="">
						<div class="w-bg">
							<span class="iconfont icon-icon17"></span>
						</div>
						<div class="tx">免费专车上门接送</div>
				</a></li>
				<li><a href="">
						<div class="w-bg">
							<span class="iconfont icon-icon18"></span>
						</div>
						<div class="tx">价格公开透明</div>
				</a></li>
				<li><a href="">
						<div class="w-bg">
							<span class="iconfont icon-icon19"></span>
						</div>
						<div class="tx">全程陪同指导</div>
				</a></li>
				<li><a href="">
						<div class="w-bg">
							<span class="iconfont icon-icon20"></span>
						</div>
						<div class="tx">签订合同/协议</div>
				</a></li>
			</ul>
			<h2>平台优惠</h2>
			<div class="flexslider slider-box1 flexslider2">
				<ul class="slides">
					<li>
						<div class="info-box row-fluid">
							<div class="col-3 col item">
								<div class="img-box">
									<span class="tips-icon-left-ly"><img
										src="<%=basePath%>static/images/icon/ly-icon1.png" /></span>
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f name">长松寺公墓</h3>
										<dl class="star fl star-ly">
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingfenxingban"></dd>
											<dd class="iconfont icon-pingjiaxingxing1"></dd>
											<dt>4.6</dt>
										</dl>
										<div class="approve-box fr">
											<span class="orangeBtn-line btn">认证</span>
										</div>
										<div class="clear"></div>
										<div class="adress ellipsis-f mt15">园区地址：成都市金牛区皇帝岛路192号
										</div>
									</div>
									<div class="price-box-big clearfix">
										<div class="money">
											<div class="tt">
												￥<span>88343</span>起
											</div>
											<p>已有53人获得优惠</p>
										</div>
										<div class="goTo">
											<a href="" class="blueBtn">我要团购</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-3 col item">
								<div class="img-box">
									<span class="tips-icon-left-ly"><img
										src="<%=basePath%>static/images/icon/ly-icon1.png" /></span>
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img2.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f name">长松寺公墓</h3>
										<dl class="star fl star-ly">
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingfenxingban"></dd>
											<dd class="iconfont icon-pingjiaxingxing1"></dd>
											<dt>4.6</dt>
										</dl>
										<div class="approve-box fr">
											<span class="orangeBtn-line btn">认证</span>
										</div>
										<div class="clear"></div>
										<div class="adress ellipsis-f mt15">园区地址：成都市金牛区皇帝岛路192号
										</div>
									</div>
									<div class="price-box-big clearfix">
										<div class="money">
											<div class="tt">
												￥<span>88343</span>起
											</div>
											<p>已有53人获得优惠</p>
										</div>
										<div class="goTo">
											<a href="" class="blueBtn">我要团购</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-3 col item">
								<div class="img-box">
									<span class="tips-icon-left-ly"><img
										src="<%=basePath%>static/images/icon/ly-icon1.png" /></span>
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img3.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f name">长松寺公墓</h3>
										<dl class="star fl star-ly">
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingfenxingban"></dd>
											<dd class="iconfont icon-pingjiaxingxing1"></dd>
											<dt>4.6</dt>
										</dl>
										<div class="approve-box fr">
											<span class="orangeBtn-line btn">认证</span>
										</div>
										<div class="clear"></div>
										<div class="adress ellipsis-f mt15">园区地址：成都市金牛区皇帝岛路192号
										</div>
									</div>
									<div class="price-box-big clearfix">
										<div class="money">
											<div class="tt">
												￥<span>88343</span>起
											</div>
											<p>已有53人获得优惠</p>
										</div>
										<div class="goTo">
											<a href="" class="blueBtn">我要团购</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="info-box row-fluid">
							<div class="col-3 col item">
								<div class="img-box">
									<span class="tips-icon-left-ly"><img
										src="<%=basePath%>static/images/icon/ly-icon1.png" /></span>
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f name">长松寺公墓</h3>
										<dl class="star fl star-ly">
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingfenxingban"></dd>
											<dd class="iconfont icon-pingjiaxingxing1"></dd>
											<dt>4.6</dt>
										</dl>
										<div class="approve-box fr">
											<span class="orangeBtn-line btn">认证</span>
										</div>
										<div class="clear"></div>
										<div class="adress ellipsis-f mt15">园区地址：成都市金牛区皇帝岛路192号
										</div>
									</div>
									<div class="price-box-big clearfix">
										<div class="money">
											<div class="tt">
												￥<span>88343</span>起
											</div>
											<p>已有53人获得优惠</p>
										</div>
										<div class="goTo">
											<a href="" class="blueBtn">我要团购</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-3 col item">
								<div class="img-box">
									<span class="tips-icon-left-ly"><img
										src="<%=basePath%>static/images/icon/ly-icon1.png" /></span>
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img2.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f name">长松寺公墓</h3>
										<dl class="star fl star-ly">
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingfenxingban"></dd>
											<dd class="iconfont icon-pingjiaxingxing1"></dd>
											<dt>4.6</dt>
										</dl>
										<div class="approve-box fr">
											<span class="orangeBtn-line btn">认证</span>
										</div>
										<div class="clear"></div>
										<div class="adress ellipsis-f mt15">园区地址：成都市金牛区皇帝岛路192号
										</div>
									</div>
									<div class="price-box-big clearfix">
										<div class="money">
											<div class="tt">
												￥<span>88343</span>起
											</div>
											<p>已有53人获得优惠</p>
										</div>
										<div class="goTo">
											<a href="" class="blueBtn">我要团购</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-3 col item">
								<div class="img-box">
									<span class="tips-icon-left-ly"><img
										src="<%=basePath%>static/images/icon/ly-icon1.png" /></span>
									<p class="img">
										<img src="<%=basePath%>static/images/pro/img3.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f name">长松寺公墓</h3>
										<dl class="star fl star-ly">
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingjiaxingxing"></dd>
											<dd class="iconfont icon-pingfenxingban"></dd>
											<dd class="iconfont icon-pingjiaxingxing1"></dd>
											<dt>4.6</dt>
										</dl>
										<div class="approve-box fr">
											<span class="orangeBtn-line btn">认证</span>
										</div>
										<div class="clear"></div>
										<div class="adress ellipsis-f mt15">园区地址：成都市金牛区皇帝岛路192号
										</div>
									</div>
									<div class="price-box-big clearfix">
										<div class="money">
											<div class="tt">
												￥<span>88343</span>起
											</div>
											<p>已有53人获得优惠</p>
										</div>
										<div class="goTo">
											<a href="" class="blueBtn">我要团购</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>

				</ul>
			</div>

			<div class="ly-lr-con clearfix">
				<div class="left-con">
					<h2>风水环境最好公墓</h2>
					<div class="info bor-top-bot clearfix mb20">
						<div class="img">
							<img src="<%=basePath%>static/images/pro/ly-img1.jpg" />
						</div>
						<div class="text">
							<div class="title clearfix">
								<h3 class="fl">九公山长城纪念林</h3>
								<dl class="star fl ml15">
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingfenxingban"></dd>
									<dd class="iconfont icon-pingjiaxingxing1"></dd>
									<dt>4.6</dt>
								</dl>
							</div>
							<p class="mt10">
								九公之地，处于京皇城正北，龙脉正统。北倚燕山山脉，西倚太行山山脉，东临潮白河，西临永定河，其南北轴线与明古长城相交，先天风水得天时地利之势，且势位至尊。
								九公之名归于区位内有九坐山峰，天然如龙之九子，与龙脉相携，而“公”亦有对长辈和年老之人尊称之意;“九” ...<a
									href="#">[详情]</a>
							</p>
							<div class="price-box mt20">
								<div class="pri">
									<span class="orange-f">￥<span class="num">88343</span>起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span> <span
										class="redBtn-line btn">团购</span>
								</div>
								<div class="goTo">
									<a href="" class="btn blueBtn">查看陵园</a>
								</div>
							</div>
						</div>
					</div>
					<div class="info-box row-fluid">
						<a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img1.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a> <a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img2.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a> <a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img3.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a>
					</div>
					<h2>服务最好公墓</h2>
					<div class="info bor-top-bot clearfix mb20">
						<div class="img">
							<img src="<%=basePath%>static/images/pro/ly-img2.jpg" />
						</div>
						<div class="text">
							<div class="title clearfix">
								<h3 class="fl">九公山长城纪念林</h3>
								<dl class="star fl ml15">
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingfenxingban"></dd>
									<dd class="iconfont icon-pingjiaxingxing1"></dd>
									<dt>4.6</dt>
								</dl>
							</div>
							<p class="mt10">
								九公之地，处于京皇城正北，龙脉正统。北倚燕山山脉，西倚太行山山脉，东临潮白河，西临永定河，其南北轴线与明古长城相交，先天风水得天时地利之势，且势位至尊。
								九公之名归于区位内有九坐山峰，天然如龙之九子，与龙脉相携，而“公”亦有对长辈和年老之人尊称之意;“九” ...<a
									href="#">[详情]</a>
							</p>
							<div class="price-box mt20">
								<div class="pri">
									<span class="orange-f">￥<span class="num">88343</span>起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span> <span
										class="redBtn-line btn">团购</span>
								</div>
								<div class="goTo">
									<a href="" class="btn blueBtn">查看陵园</a>
								</div>
							</div>
						</div>
					</div>
					<div class="info-box row-fluid">
						<a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img1.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a> <a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img2.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a> <a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img3.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a>
					</div>
					<h2>性价比最高公墓</h2>
					<div class="info bor-top-bot clearfix mb20">
						<div class="img">
							<img src="<%=basePath%>static/images/pro/ly-img3.jpg" />
						</div>
						<div class="text">
							<div class="title clearfix">
								<h3 class="fl">九公山长城纪念林</h3>
								<dl class="star fl ml15">
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingjiaxingxing"></dd>
									<dd class="iconfont icon-pingfenxingban"></dd>
									<dd class="iconfont icon-pingjiaxingxing1"></dd>
									<dt>4.6</dt>
								</dl>
							</div>
							<p class="mt10">
								九公之地，处于京皇城正北，龙脉正统。北倚燕山山脉，西倚太行山山脉，东临潮白河，西临永定河，其南北轴线与明古长城相交，先天风水得天时地利之势，且势位至尊。
								九公之名归于区位内有九坐山峰，天然如龙之九子，与龙脉相携，而“公”亦有对长辈和年老之人尊称之意;“九” ...<a
									href="#">[详情]</a>
							</p>
							<div class="price-box mt20">
								<div class="pri">
									<span class="orange-f">￥<span class="num">88343</span>起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span> <span
										class="redBtn-line btn">团购</span>
								</div>
								<div class="goTo">
									<a href="" class="btn blueBtn">查看陵园</a>
								</div>
							</div>
						</div>
					</div>
					<div class="info-box row-fluid">
						<a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img1.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a> <a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img2.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a> <a class="col-3 col item" href="">
							<div class="img-box">
								<p class="img">
									<img src="<%=basePath%>static/images/pro/img3.jpg" />
								</p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">长松寺公墓</h3>
									<dl class="star fr">
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingjiaxingxing"></dd>
										<dd class="iconfont icon-pingfenxingban"></dd>
										<dd class="iconfont icon-pingjiaxingxing1"></dd>
										<dt>4.6</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">88343</span>
										起
									</span> <span class="greenBtn-line btn">优惠</span> <span
										class="orangeBtn-line btn">认证</span>
								</div>
								<div class="adress ellipsis-f">园区地址：成都市金牛区皇帝岛路192号</div>
							</div>
						</a>
					</div>
				</div>
				<!--右侧内容-->
				<div class="sideBar">
					<h2 class="clearfix">
						<span class="l-t">墓地资讯</span> <a href="#" class="more-link-s fr">更多
							></a>
					</h2>
					<div class="info">
						<div class="title-img">
							<img src="<%=basePath%>static/images/pro/ly-img11.jpg" />
							<div class="t">中国传统治丧传统中国传统治丧传统中国传</div>
						</div>
						<ul class="list">
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传中国传统治</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
						</ul>
					</div>
					<h2 class="clearfix">
						<span class="l-t">优质墓地排行榜</span> <a href="#"
							class="more-link-s fr">更多 ></a>
					</h2>
					<div class="info">
						<div class="title-img">
							<div class="round-row">
								<div class="col col-40">
									<span class="red-bg rank-c">1</span> <img
										src="<%=basePath%>static/images/pro/ly-img13.jpg" />
								</div>
								<div class="col col-60">
									<div class="pl10">墓地风水</div>
									<div class="pl10 orange-f mt5">￥88343起</div>
									<div class="pl10 font-12 ellipsis-f">天然如龙之九子,中国传统治</div>
								</div>
							</div>
						</div>
						<ul class="list list-no">
							<li><span class="orange-bg rank-c">2</span><a href="#">中国传统治丧传统中国传统治丧传统中国传中国传统治</a></li>
							<li><span class="orange-bg rank-c">3</span><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><span class="blue-bg rank-c">4</span><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><span class="blue-bg rank-c">5</span><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><span class="blue-bg rank-c">6</span><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><span class="blue-bg rank-c">7</span><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><span class="blue-bg rank-c">8</span><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
						</ul>
					</div>
					<h2 class="clearfix">
						<span class="l-t">墓地风水</span> <a href="#" class="more-link-s fr">更多
							></a>
					</h2>
					<div class="info">
						<div class="title-img">
							<img src="<%=basePath%>static/images/pro/ly-img10.jpg" />
							<div class="t">中国传统治丧传统中国传统治丧传统中国传</div>
						</div>
						<ul class="list">
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传中国传统治</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
						</ul>
					</div>
					<div class="info-ad">
						<a href=""><img
							src="<%=basePath%>static/images/pro/ly-img7.jpg" /></a> <a href=""><img
							src="<%=basePath%>static/images/pro/ly-img8.jpg" /></a>
					</div>
				</div>
			</div>

			<!--购墓指南-->
			<div class="buy-guide">
				<h3>购墓指南</h3>
				<div class="row-fluid">
					<div class="item">
						<img src="<%=basePath%>static/images/pro/ly-img4.jpg" />
						<div class="txt">
							<h4>治丧需要注意的三点</h4>
							<p>治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧</p>
						</div>
					</div>
					<div class="item">
						<img src="<%=basePath%>static/images/pro/ly-img5.jpg" />
						<div class="txt">
							<h4>治丧需要注意的三点</h4>
							<p>治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧</p>
						</div>
					</div>
					<div class="item">
						<img src="<%=basePath%>static/images/pro/ly-img6.jpg" />
						<div class="txt">
							<h4>治丧需要注意的三点</h4>
							<p>治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧</p>
						</div>
					</div>
				</div>
			</div>
			<!--热门城市-->
			<div class="friend-link mt40">
				<h2>热门城市</h2>
				<div class="link-more link-bg">
					<a href="#">北京</a> <a href="#">上海</a> <a href="#">重庆</a> <a
						href="#">天津</a> <a href="#">广州</a> <a href="#">深圳</a> <a href="#">佛山</a>
					<a href="#">东莞</a> <a href="#">中山</a> <a href="#">韶关</a> <a
						href="#">珠海</a> <a href="#">汕头</a> <a href="#">江门</a> <a href="#">湛江</a>
					<a href="#">茂名</a>
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
					<img src="<%=basePath %>static/images/pro/an-wx.jpg" />
				</div>
				<p>至终守护 &nbsp; &nbsp; 温暖如家</p>
			</div>

		</div>
	</div>
	<div class="footer-bottom">
		<div class="wrapper">
			<p class="mb5">copyright2012-2016 公墓之家，ALLRights Reserved
				ICP备案：蜀ICP备140009697号-2</p>
			<img src="<%=basePath %>static/images/icon/footer.jpg" />
		</div>
	</div>
	<!--下拉菜单-->
	<link href="<%=basePath %>static/script/select/selectpick.css"
		rel="stylesheet" type="text/css" />
	<script type="text/javascript"
		src="<%=basePath %>static/script/select/selectpick.js"></script>
	<script type="text/javascript"
		src="<%=basePath %>static/script/jquery.flexslider-min.js"></script>
	<script>
			$(window).load(function() {
			  $('.slider-box1').flexslider({animation: "slide",controlNav:false,animationLoop: false,slideshow: false,});
			});
		</script>
</body>

	<script>
		var app = angular.module('myApp', []);
		
		app.controller('enjoyCtrl', function($scope, $http) {
		  $http.get("<%=basePath %>cemetery/getCemType4Enjoy")
		  .success(function (response) {
			  $scope.cemTypes = response.cemTypes;
		  });
		  
		  //通过公墓id获取公墓名称
		  $scope.getCemName = function (id) {
				$http.get("<%=basePath %>cemetery/getCemName?id="+id)
					.success(function (response) {
						$scope.cemName = response.cemName;
				});
				return $scope.cemName;
		    	}
		});
		
		/* //通过公墓id获取公墓名称
		app.filter('getCemName',['enjoyCtrl', function(enjoyCtrl) {
		    return function(id) {
		        return enjoyCtrl.getCemName(id);
		    };
		}]); */
	</script>

</html>
