<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../mytags.jsp"%>
<html lang="zh">
<head>
<title>购墓指南</title>
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
				<div class="left-con border-all">
						<h1 class="title">购墓指南</h1>
						<div class="list-new">
							<div class="item" ng-repeat="x in cemArticles">
								<div class="img"><img src="${webRoot }static/images/pro/ly-img12.jpg"/></div>
								<div class="info">
									<h2><a href="">{{x.title}}</a></h2>
									<p>{{x.content.slice(0, 150)}}..</p>
									<div class="c-r-l clearfix">
										<div class="time fl">发布日期：<span ng-bind="x.time | date:'yyyy-MM-dd HH:mm:ss'"></span></div>
										<div class="read fr">已被阅读：{{x.num}}次</div>
									</div>
								</div>
							</div>
						</div>
						<tm-pagination conf="paginationConf"></tm-pagination>
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
				$http.get("getCemArticleByPage", 
						{params:{
							"cemArticle.type" : "3",
							"page.currentPage" : currPage,
							"page.showCount" : 2
						}}
				).success(function (response) {
					$scope.cemArticles = response.result;
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
		            }
		     };
		});
		
</script>
</html>
