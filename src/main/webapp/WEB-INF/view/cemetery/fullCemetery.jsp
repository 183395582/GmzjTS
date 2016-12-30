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

</head>
<body ng-app="myApp" ng-controller="myCtrl">
	<jsp:include page="layout-top.jsp" flush="true" />


	<div class="main-con">
		<div class="wrapper">
			<div class="ly-lr-con clearfix">
				<div class="left-con">
					<form action="${webRoot }cemetery/fullCemetery" >
						<div class="category-brand">
							<div class="item clearfix">
								<div class="labe">所在区域：</div>
								<div class="br-category">
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
								</div>
							</div>
							<div class="item clearfix">
								<div class="labe">价格区间：</div>
								<div class="br-category">
									<ul class="clearfix hov-bg">
										<li <c:if test="${price == null }">class="curr"</c:if>>
											<a href="javascript:;" onclick="GoPage('', this)">不限</a>
											<input type="hidden" name="" value=""/>
										</li>
										<c:forEach items="${priceSection }" var="priceSection" varStatus="vs">
											<li <c:if test="${price == priceSection.index }">class="curr"</c:if>>
												<a href="javascript:;" onclick="GoPage('price', this)">${priceSection.name }</a>
												<input type="hidden" name="<c:if test="${price == priceSection.index }">price</c:if>" value="${priceSection.index }"/>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="item clearfix">
								<div class="labe">距离市区：</div>
								<div class="br-category">
									<ul class="clearfix hov-bg">
										<li <c:if test="${range == null }">class="curr"</c:if>>
											<a href="javascript:;" onclick="GoPage('', this)">不限</a>
											<input type="hidden" name="" value=""/>
										</li>
										<c:forEach items="${rangeSection }" var="rangeSection" varStatus="vs">
											<li <c:if test="${range == rangeSection.index }">class="curr"</c:if>>
												<a href="javascript:;" onclick="GoPage('range', this)">${rangeSection.name }</a>
												<input type="hidden" name="<c:if test="${range == rangeSection.index }">range</c:if>" value="${rangeSection.index }"/>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!-- <div class="item clearfix">
								<div class="labe">已选条件：</div>
								<div class="br-category clearfix">
									<div class="closeCon">
										<a href="javascript:;">5-10公里 <i
											class="iconfont icon-iconfontcha"></i></a>
									</div>
									<input type="hidden" ng-model="type" value="01" />
									<div class="colseAll">
										<a href="javascript:;">清空所选条件</a>
									</div>
								</div>
							</div> -->
						</div>
					</form>
					<div class="mt25 border-all">
						<h1 class="title">
							<span>默认</span>
						</h1>
						<div class="list-new">
							<div class="item" ng-repeat="x in cemeterys">
								<div class="img img2">
									<img src="${webRoot }static/images/pro/ly-img15.jpg" />
								</div>
								<div class="info info2">
									<div class="t-f clearfix">
										<a href="" class="name">{{x.name}}</a>
										<dl class="star fl star-ly">
											<dt class="score">{{x.score}}</dt>
										</dl>
										<div class="approve-box fl">
											<span class="orangeBtn-line btn">认证</span> <span
												class="greenBtn-line btn">优惠</span> <span
												class="redBtn-line btn">团购</span>
										</div>
										<div class="fr">
											<span>已有9831人关注</span>
										</div>
									</div>
									<div class="price">
										￥{{x.price}} <span>起</span>
									</div>
									<div class="mt10">
										园区印象：<span>{{x.introduce.slice(0, 60)}}..</span>
									</div>
									<div class="mt5">
										地 址：<span>{{x.address}}</span>
									</div>
									<div class="c-r-l clearfix">
										<div class="time fl">
											<a href="#">园区介绍 </a> <a href="#">园区环境</a> <a href="#">墓型展示</a>
										</div>
										<div class="read fr">
											<a href="" class="blueBtn">查看陵园</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<tm-pagination conf="paginationConf"></tm-pagination>
					</div>

				</div>
				<!--右侧内容-->
				<jsp:include page="layout-right.jsp" flush="true" />
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
</body>
<script type="text/javascript">
		var app = angular.module('myApp', ['tm.pagination', 'com.gmzj.cemetery']);
		angular.module('com.gmzj.cemetery', []).service('cemeteryService',[function(){
			this.getPage = function($http, $scope, currPage){
				$http.get("getCemeterysByPage", 
						{params:{
							"cemetery.type" : "01",
							"cemetery.regionno" : $scope.regionno,
							"page.currentPage" : currPage,
							"page.showCount" : 2
						}}
				).success(function (response) {
					$scope.cemeterys = response.result;
					$scope.conf.totalItems = response.totalResult;
				});
			}
		}]);
		
		app.controller('myCtrl', function($scope, $http, $timeout, cemeteryService) {
			//优质墓地排行榜
			$http.get("${webRoot }cemetery/getCemeterys", {params:{order:"score desc"}})
			 .success(function (response) {
				$scope.greatGM = response;
			});
			//墓地风水
			$http.get("${webRoot }cemetery/getCemArticles", {params:{type_equalTo:"2"}})
			 .success(function (response) {
				$scope.cemFS = response;
			});
			//墓地指南
			$http.get("${webRoot }cemetery/getCemArticles", {params:{type_equalTo:"3"}})
			 .success(function (response) {
				$scope.cemZN = response;
			});
			
			//分页函数
			$scope.paginationConf = {
		            currentPage: 1,
		            totalItems: 10,
		            itemsPerPage: 2,
		            pagesLength: 8,
		            perPageOptions: [10],
		            onChange: function(currPage){
		            	cemeteryService.getPage($http, $scope, currPage);
		            	setTimeout("processScore()", 500);
		            }
		     };
			
			
		});
		
		function GoPage(name, e){
			$(e).next().attr("name", name);
			$(e).parent().siblings().find("input").attr("name", "");
			$("form").submit();
		}
			
</script>
</html>
