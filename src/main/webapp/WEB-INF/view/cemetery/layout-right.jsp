<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!--右侧内容-->
<div class="sideBar">
	<div class="order-box mb20">
		<h2>
			<img src="${webRoot }static/images/icon/free-tilte.png" />
		</h2>
		<div class="info-list">
			<ul>
				<li>
					<div class="icon-b">
						<i class="iconfont icon-iconfontliuyanban"></i>
					</div>
					<div class="tx">
						<div class="title">专业咨询</div>
						<p>为家属提供多重解决方案</p>
					</div>
				</li>
				<li>
					<div class="icon-b">
						<i class="iconfont icon-iconfontliuyanban"></i>
					</div>
					<div class="tx">
						<div class="title">免费专车接送</div>
						<p>为家属提供多重解决方案</p>
					</div>
				</li>
				<li>
					<div class="icon-b">
						<i class="iconfont icon-iconfontliuyanban"></i>
					</div>
					<div class="tx">
						<div class="title">贴心服务</div>
						<p>全程陪同家属参观选购</p>
					</div>
				</li>
			</ul>
			<div class="mt15 mrl20">
				<a href="" class="blueBtn dis-block">马上预约</a>
			</div>
		</div>
	</div>
	<h2 class="clearfix">
		<span class="l-t">优质墓地排行榜</span> <a href="#" class="more-link-s fr">更多
			></a>
	</h2>
	<div class="info">
		<div class="title-img" ng-repeat="x in greatGM.slice(0, 1)">
			<div class="round-row">
				<div class="col col-40">
					<span class="red-bg rank-c">{{$index+1}}</span> <img
						src="${webRoot }static/images/pro/ly-img13.jpg" />
				</div>
				<div class="col col-60">
					<div class="pl10">{{x.name}}</div>
					<div class="pl10 orange-f mt5">￥{{x.price}}起</div>
					<div class="pl10 font-12 ellipsis-f">{{x.introduce.slice(0,15)}}...</div>
				</div>
			</div>
		</div>
		<ul class="list list-no" ng-repeat="x in greatGM.slice(1, 3)">
			<li><span class="orange-bg rank-c">{{$index+2}}</span><a
				href="#">{{x.name}}</a></li>
		</ul>
		<ul class="list list-no" ng-repeat="x in greatGM.slice(3, 12)">
			<li><span class="blue-bg rank-c">{{$index+4}}</span><a href="#">{{x.name}}</a></li>
		</ul>
	</div>
	<h2 class="clearfix">
		<span class="l-t">墓地风水</span> <a href="#" class="more-link-s fr">更多
			></a>
	</h2>
	<div class="info">
		<div class="title-img" ng-repeat="x in cemFS.slice(0, 1)">
			<img src="${webRoot }static/images/pro/ly-img10.jpg" />
			<div class="t">{{x.title}}</div>
		</div>
		<ul class="list" ng-repeat="x in cemFS.slice(1, 10)">
			<li><a href="#">{{x.title.slice(0,15)}}</a></li>
		</ul>
	</div>
	<div class="info-ad">
		<a href=""><img src="${webRoot }static/images/pro/ly-img7.jpg" /></a>
		<a href=""><img src="${webRoot }static/images/pro/ly-img8.jpg" /></a>
	</div>
	<h2 class="clearfix mt20">
		<span class="l-t">墓地指南</span> <a href="#" class="more-link-s fr">更多
			></a>
	</h2>
	<div class="info">
		<ul class="list" ng-repeat="x in cemZN.slice(0, 10)">
			<li><a href="#">{{x.title}}</a></li>
		</ul>
	</div>
</div>
</html>
