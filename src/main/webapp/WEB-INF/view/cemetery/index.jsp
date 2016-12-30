<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../mytags.jsp"%>
<html lang="zh">
	<head>
		<title>公墓陵园</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="X-UA-Compatible" content="IE=8">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<jsp:include page="../comm/script.jsp"/>
		<jsp:include page="../comm/css.jsp"/>

	</head>
	<body ng-app="myApp">
		<jsp:include page="layout-top.jsp" flush="true" />
		<div class="banner-box">
			<div class="wrapper pt10">
				<a href=""><img
					src="${webRoot }static/images/banner/ly-banner.jpg"></a>
			</div>
		</div>
	
		<div class="main-con" ng-controller="indexCtrl">
			<div class="wrapper">
				<h2>
					<img src="${webRoot }static/images/icon/icon1.png" /> 尊享专区<span
						class="font-12">给逝者一个最高的敬畏</span>
				</h2>
				<div class="flexslider slider-box1">
					<ul class="slides">
						<li>
							<div class="info-box row-fluid item-height">
								<div class="col-4 col item" ng-repeat="x in enjoyMX.slice(0, 4)">
									<div class="img-box">
										<p class="img">
											<img src="${webRoot }static/images/pro/img1.jpg" />
										</p>
									</div>
									<div class="text-box">
										<div class="title-box clearfix">
											<h3 class="fl name-big">
												{{x.name}} <span class="redBtn-line btn">认证</span>
											</h3>
											<div class="small-name fr">{{x.cemeteryName}}</div>
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
								<div class="col-4 col item" ng-repeat="x in enjoyMX.slice(4, 8)">
									<div class="img-box">
										<p class="img">
											<img src="${webRoot }static/images/pro/img1.jpg" />
										</p>
									</div>
									<div class="text-box">
										<div class="title-box clearfix">
											<h3 class="fl name-big">
												{{x.name}} <span class="redBtn-line btn">认证</span>
											</h3>
											<div class="small-name fr">{{x.cemeteryName}}</div>
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
					</ul>
				</div>
				<h2>
					<img src="${webRoot }static/images/icon/icon2.png" /> 特惠墓型
				</h2>
				<div class="flexslider slider-box1">
					<ul class="slides">
						<li>
							<div class="info-box row-fluid">
								<div class="col-4 col item" ng-repeat="x in specialMX.slice(0, 4)">
									<div class="img-box">
										<p class="img">
											<img src="${webRoot }static/images/pro/img1.jpg" />
										</p>
									</div>
									<div class="text-box">
										<div class="title-box clearfix">
											<h3 class="fl name-big">
												{{x.name}} <span class="redBtn-line btn">认证</span>
											</h3>
											<div class="small-name fr">{{x.cemeteryName}}</div>
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
							<div class="info-box row-fluid">
								<div class="col-4 col item" ng-repeat="x in specialMX.slice(4, 8)">
									<div class="img-box">
										<p class="img">
											<img src="${webRoot }static/images/pro/img1.jpg" />
										</p>
									</div>
									<div class="text-box">
										<div class="title-box clearfix">
											<h3 class="fl name-big">
												{{x.name}} <span class="redBtn-line btn">认证</span>
											</h3>
											<div class="small-name fr">{{x.cemeteryName}}</div>
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
								<div class="col-3 col item" ng-repeat="x in discountGM.slice(0, 3)">
									<div class="img-box">
										<span class="tips-icon-left-ly"><img
											src="${webRoot }static/images/icon/ly-icon1.png" /></span>
										<p class="img">
											<img src="${webRoot }static/images/pro/img1.jpg" />
										</p>
									</div>
									<div class="text-box">
										<div class="title-box clearfix">
											<h3 class="fl ellipsis-f name">{{x.name}}</h3>
											<dl class="star fl star-ly">
												<dt class="score">{{x.score}}</dt>
											</dl>
											<div class="approve-box fr">
												<span class="orangeBtn-line btn">认证</span>
											</div>
											<div class="clear"></div>
											<div class="adress ellipsis-f mt15">园区地址：{{x.address}}
											</div>
										</div>
										<div class="price-box-big clearfix">
											<div class="money">
												<div class="tt">
													￥<span>{{x.price}}</span>起
												</div>
												<p>已有{{x.discountNum}}人获得优惠</p>
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
								<div class="col-3 col item" ng-repeat="x in discountGM.slice(3, 6)">
									<div class="img-box">
										<span class="tips-icon-left-ly"><img
											src="${webRoot }static/images/icon/ly-icon1.png" /></span>
										<p class="img">
											<img src="${webRoot }static/images/pro/img1.jpg" />
										</p>
									</div>
									<div class="text-box">
										<div class="title-box clearfix">
											<h3 class="fl ellipsis-f name">{{x.name}}</h3>
											<dl class="star fl star-ly">
												<dt class="score">{{x.score}}</dt>
											</dl>
											<div class="approve-box fr">
												<span class="orangeBtn-line btn">认证</span>
											</div>
											<div class="clear"></div>
											<div class="adress ellipsis-f mt15">园区地址：{{x.address}}
											</div>
										</div>
										<div class="price-box-big clearfix">
											<div class="money">
												<div class="tt">
													￥<span>{{x.price}}</span>起
												</div>
												<p>已有{{x.discountNum}}人获得优惠</p>
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
						<div class="info bor-top-bot clearfix mb20" ng-repeat="x in bestFsGM.slice(0, 1)">
							<div class="img">
								<img src="${webRoot }static/images/pro/ly-img1.jpg" />
							</div>
							<div class="text">
								<div class="title clearfix">
									<h3 class="fl">{{x.name}}</h3>
									<dl class="star fl ml15">
										<dt class="score">{{x.score}}</dt>
									</dl>
								</div>
								<p class="mt10">
									{{x.introduce}}<a
										href="#">[详情]</a>
								</p>
								<div class="price-box mt20">
									<div class="pri">
										<span class="orange-f">￥<span class="num">{{x.price}}</span>起
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
							<a class="col-3 col item" href="" ng-repeat="x in bestFsGM.slice(1, 4)">
								<div class="img-box">
									<p class="img">
										<img src="${webRoot }static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f">{{x.name}}</h3>
										<dl class="star fr">
											<dt class="score">{{x.score}}</dt>
										</dl>
									</div>
									<div class="price-box">
										参考价格：<span class="orange-f pr5">￥<span class="font-20">{{x.price}}</span>
											起
										</span> <span class="greenBtn-line btn">优惠</span> <span
											class="orangeBtn-line btn">认证</span>
									</div>
									<div class="adress ellipsis-f">园区地址：{{x.address}}</div>
								</div>
							</a> 
						</div>
						<h2>服务最好公墓</h2>
						<div class="info bor-top-bot clearfix mb20" ng-repeat="x in bestFwGM.slice(0, 1)">
							<div class="img">
								<img src="${webRoot }static/images/pro/ly-img2.jpg" />
							</div>
							<div class="text">
								<div class="title clearfix">
									<h3 class="fl">{{x.name}}</h3>
									<dl class="star fl ml15">
										<dt class="score">{{x.score}}</dt>
									</dl>
								</div>
								<p class="mt10">
									{{x.introduce}}<a
										href="#">[详情]</a>
								</p>
								<div class="price-box mt20">
									<div class="pri">
										<span class="orange-f">￥<span class="num">{{x.price}}</span>起
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
							<a class="col-3 col item" href="" ng-repeat="x in bestFwGM.slice(1, 4)">
								<div class="img-box">
									<p class="img">
										<img src="${webRoot }static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f">{{x.name}}</h3>
										<dl class="star fr">
											<dt class="score">{{x.score}}</dt>
										</dl>
									</div>
									<div class="price-box">
										参考价格：<span class="orange-f pr5">￥<span class="font-20">{{x.price}}</span>
											起
										</span> <span class="greenBtn-line btn">优惠</span> <span
											class="orangeBtn-line btn">认证</span>
									</div>
									<div class="adress ellipsis-f">园区地址：{{x.address}}</div>
								</div>
							</a>
						</div>
						<h2>性价比最高公墓</h2>
						<div class="info bor-top-bot clearfix mb20" ng-repeat="x in bestGM.slice(0, 1)">
							<div class="img">
								<img src="${webRoot }static/images/pro/ly-img3.jpg" />
							</div>
							<div class="text">
								<div class="title clearfix">
									<h3 class="fl">{{x.name}}</h3>
									<dl class="star fl ml15">
										<dt class="score">{{x.score}}</dt>
									</dl>
								</div>
								<p class="mt10">
									{{x.introduce}}<a
										href="#">[详情]</a>
								</p>
								<div class="price-box mt20">
									<div class="pri">
										<span class="orange-f">￥<span class="num">{{x.price}}</span>起
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
							<a class="col-3 col item" href="" ng-repeat="x in bestGM.slice(1, 4)">
								<div class="img-box">
									<p class="img">
										<img src="${webRoot }static/images/pro/img1.jpg" />
									</p>
								</div>
								<div class="text-box">
									<div class="title-box clearfix">
										<h3 class="fl ellipsis-f">{{x.name}}</h3>
										<dl class="star fr">
											<dt class="score">{{x.score}}</dt>
										</dl>
									</div>
									<div class="price-box">
										参考价格：<span class="orange-f pr5">￥<span class="font-20">{{x.price}}</span>
											起
										</span> <span class="greenBtn-line btn">优惠</span> <span
											class="orangeBtn-line btn">认证</span>
									</div>
									<div class="adress ellipsis-f">园区地址：{{x.address}}</div>
								</div>
							</a>
						</div>
					</div>
					<!--右侧内容-->
					<jsp:include page="layout-right.jsp" flush="true" />
				</div>
	
				<!--购墓指南-->
				<div class="buy-guide">
					<h3>购墓指南</h3>
					<div class="row-fluid">
						<div class="item">
							<img src="${webRoot }static/images/pro/ly-img4.jpg" />
							<div class="txt">
								<h4>治丧需要注意的三点</h4>
								<p>治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧</p>
							</div>
						</div>
						<div class="item">
							<img src="${webRoot }static/images/pro/ly-img5.jpg" />
							<div class="txt">
								<h4>治丧需要注意的三点</h4>
								<p>治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧需要注意的三点治丧</p>
							</div>
						</div>
						<div class="item">
							<img src="${webRoot }static/images/pro/ly-img6.jpg" />
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
						<img src="${webRoot }static/images/pro/an-wx.jpg" />
					</div>
					<p>至终守护 &nbsp; &nbsp; 温暖如家</p>
				</div>
	
			</div>
		</div>
		<div class="footer-bottom">
			<div class="wrapper">
				<p class="mb5">copyright2012-2016 公墓之家，ALLRights Reserved
					ICP备案：蜀ICP备140009697号-2</p>
				<img src="${webRoot }static/images/icon/footer.jpg" />
			</div>
		</div>
	</body>

	<script>
		var app = angular.module('myApp', []);
		
		app.controller('indexCtrl', function($scope, $http) {
		  //尊享墓型
		  $http.get("${webRoot }cemetery/getEnjoyMX")
		  .success(function (response) {
			  $scope.enjoyMX = response;
		  });
		  //特惠墓型
		  $http.get("${webRoot }cemetery/getSpecialMX")
		  .success(function (response) {
			  $scope.specialMX = response;
		  });
		  
		  //平台优惠公墓
		  $http.get("${webRoot }cemetery/getCemeterys", {params:{type_equalTo:"01", discount_equalTo:"true"}})
		  .success(function (response) {
			  $scope.discountGM = response;
		  });
		  
		  //风水最好的公墓
		  $http.get("${webRoot }cemetery/getCemeterys", {params:{order:"score_fs desc"}})
		  .success(function (response) {
			  $scope.bestFsGM = response;
		  });
		  
		  //服务最好的公墓
		  $http.get("${webRoot }cemetery/getCemeterys", {params:{order:"score_fw desc, score_hj desc"}})
		  .success(function (response) {
			  $scope.bestFwGM = response;
		  });
		  
		  //性价比最高的公墓
		  $http.get("${webRoot }cemetery/getCemeterys", {params:{order:"score desc, price asc"}})
		  .success(function (response) {
			  $scope.bestGM = response;
		  });
		  
		  //优质墓地排行榜
		  $http.get("${webRoot }cemetery/getCemeterys", {params:{order:"score desc"}})
		  .success(function (response) {
			  $scope.greatGM = response;
		  });
		  
		  //墓地咨询
		  $http.get("${webRoot }cemetery/getCemArticles", {params:{type_equalTo:encodeURIComponent("1")}})
		  .success(function (response) {
			  $scope.cemZX = response;
		  });
		  
		  //墓地风水
		  $http.get("${webRoot }cemetery/getCemArticles", {params:{type_equalTo:encodeURIComponent("2")}})
		  .success(function (response) {
			  $scope.cemFS = response;
		  });
		  
		});
		
		function processScore(){
			$(".score").each(function(){
				handleScore(this);
			});
		}
		setTimeout("processScore()", 1500 );
		
	</script>

</html>
