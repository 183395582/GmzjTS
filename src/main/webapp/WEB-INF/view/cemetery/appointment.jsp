<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../mytags.jsp"%>
<html lang="zh">
<head>
<title>预约看墓/购墓</title>
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
						<h1 class="title">预约看墓/购墓</h1>
						<div class="five-boxList clearfix ptb40">
							<div class="item">
								<div class="w-bg"><span class="iconfont icon-youhui"></span></div>
								<div class="tx">由公墓之家联合墓区特别推出团购活动</div> 
							</div>
							<div class="item">
								<div class="w-bg"><span class="iconfont icon-icon15"></span></div>
								<div class="tx">提供免费专业咨询服务设计购墓方案</div> 
							</div>
							<div class="item">
								<div class="w-bg"><span class="iconfont icon-icon17"></span></div>
								<div class="tx">免费专车上门接送</div> 
							</div>
							<div class="item">
								<div class="w-bg"><span class="iconfont icon-icon19"></span></div>
								<div class="tx">全程陪同指导</div> 
							</div>
							<div class="item">
								<div class="w-bg"><span class="iconfont icon-tuan"></span></div>
								<div class="tx">享团购优惠</div> 
							</div>
						</div>
						<div class="bor-tb mrl20 re">
							<div class="inputBox">
								<div class="it-input">
									<label><span class="orange-f">*</span> 姓  名：</label>
									<div class="txt">
										<input type="text" value="" placeholder="请输入你的姓名" class="form-control-input"/>
									</div>
								</div>
								<div class="it-input">
									<label><span class="orange-f">*</span> 联系电话：</label>
									<div class="txt">
										<input type="text" value="" placeholder="请输入你的手机号" class="form-control-input"/>
									</div>
								</div>
								<div class="it-input">
									<label><span class="orange-f"></span> 预购墓地：</label>
									<div class="txt">
										<div class="up-img">
											<a href="javascript:;" class="up-imgBtn orangBtn" id="" ng-click="openModal($event)" val="">选择</a>
                        					<span>（最多选择3个）</span>
                        					<div class="selectStore_modal">
                        						<span class="iconfont icon-guanbi closeBtn" id="close-modal"></span>
                        						<div class="item-labe">
                        							<div class="labe">区域：</div>
                        							<div class="info">
                        								<ul class="clearfix hov-bg">
                        									<li class="curr"><a href="javascript:;"><a href="javascript:;" ng-click="queryCemetery($event)" val="">不限 </a></li>
                        									<c:forEach items="${sessionScope.regions }" var="region" varStatus="vs">
																<li>
																	<a href="javascript:;" ng-click="queryCemetery($event)" val="${region.no }">${region.name } </a>
																</li>
															</c:forEach>
														</ul>
                        							</div>
                        						</div>
                        						<div class="select-condition">
                        							<ul class="clearfix">
                        								<li ng-repeat="x in cemeterys"><span class="" ng-click="selected($event)" no="{{x.id}}" val="{{x.name}}"></span> {{x.name}}</li>
                        							</ul>
                        						</div>
                        						<div class="item-labe">
                        							<div class="labe">已选:</div>
                        							<div class="info">
                        								<div class="closeCon" style="margin: 0;">
															<a href="javascript:;" ng-repeat="item in items">{{item.val}}<i class="iconfont icon-iconfontcha" ng-click="del($event)" no="{{item.no}}"></i></a>
														</div>
														<div class="colseAll" id="colseAll">
															<a href="javascript:;">清空</a>
														</div>
														<p class="mt10 font-12">(最多选择3个墓地)</p>
                        							</div>
                        						</div>
                        						<div class="sureBtn ac mt15"><button class="redBtn">确定</button></div>
                        					</div>
										</div>
										<div class="closeCon">
											<span>不限</span>
											<a href="javascript:;" ng-repeat="item in items">{{item.val}}<i class="iconfont icon-iconfontcha" ng-click="del($event)" no="{{item.no}}"></i></a>
										</div>
									</div>
								</div>
								<div class="it-input">
									<label><span class="orange-f"></span> 您的要求：</label>
									<div class="txt">
										<textarea class="form-control-teare" rows="6" id="textArea"></textarea>
									</div>
								</div>
								<div class="it-input">
									<label><span class="orange-f">*</span> 验证码：</label>
									<div class="txt">
										<input type="text" value="" placeholder="" class="form-control-input" style="width: 135px;"/>
										<input type="button" id="btn" value="发送验证码/60s后重新发送"  class="sende-time"/> 
									</div>
								</div>
								<div class="it-input">
									<div class="txt">
										<button class="redBtn btn">确认预约</button>
									</div>
								</div>
								<div class="tips">
									温馨提示：为了你更好申请我们的公墓活动优惠，为了你更好申请我们的公墓活动优惠。<br/>为了你更好申请我们的公墓活动优惠，为了你更好申请我们的公墓活动优惠。
								</div>
							</div>
						</div>
						
						<div class="Top_Record mrl20">
							<h3>最新预约</h3>
							<div class="maquee">
						 		<ul>
						 			<li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">张**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li> 
					                <li>
					                    <div class="use"><i class="iconfont icon-nantouxiang"></i></div>
					                    <div class="name">王**</div>
					                    <div class="num">156******** </div>
					                    <div class="time"> 2016-9-25 &nbsp;&nbsp;13:03:42</div>
					                </li>
						 		</ul>
						 	</div>
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
				$http.get("getCemArticleByPage", 
						{params:{
							"cemArticle.type" : "1",
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
			//已预约墓地集合
			$scope.items=[];
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
			$scope.queryCemetery = function($event) {
				$http.get("${webRoot }cemetery/getCemeterys", {params:{type_equalTo:"01", regionno_equalTo:$($event.target).attr("val")}})
				 .success(function (response) {
					$scope.cemeterys = response;
				});
		    }
			//弹出选择窗口
			$scope.openModal = function($event) {
				$http.get("${webRoot }cemetery/getCemeterys", {params:{type_equalTo:"01", regionno_equalTo:$($event.target).attr("val")}})
				 .success(function (response) {
					$scope.cemeterys = response;
				});
				$(".selectStore_modal").toggle();
			}
			//选择公墓
			$scope.selected = function($event) {
            	if($($event.target).hasClass('selected')){
                     $($event.target).removeClass("selected");
                     $scope.del($event);
                }else{
                     $($event.target).addClass("selected");
                     $scope.items.push({ 
                    	 no: $($event.target).attr("no"),  
                    	 val: $($event.target).attr("val")
                     });
                }
			}
			//删除已选墓地
			$scope.del = function(event) {
				angular.forEach($scope.items, function(data, index, array){
                	if (data.no == $(event.target).attr("no")) {
                		$scope.items.splice(index, 1);
                	}
                 });
			}
		});
</script>
<script type="text/javascript">
			//多行文本输入框内容
			$(function(){ 
				var textArea = document.getElementById("textArea");
				textArea.value = "请输入你的要求，以便公墓之家顾问为您推荐合适墓型";
				textArea.style.color = "#999999"; 
			});
			//发送验证码倒计时
			var wait = 5;
	        function time(btn) {
	            if (wait == 0) {
	                btn.removeAttribute("disabled");
	                btn.value = "重新免费获取验证码";
	                btn.style.color = "#49a6b8";
	                wait = 5;
	            } else {
	                btn.setAttribute("disabled", true);
	                btn.value = wait + "秒后重新获取验证码";
	                btn.style.color = "#999999";
	                wait--;
	                setTimeout(function () {
	                    time(btn);
	                },
	                1000)
	            }
	        }
	        document.getElementById("btn").onclick=function(){time(this);};
	        //滚动展示
	        $(function(){  
				setInterval('autoScroll(".maquee")',3000);
			});
			//联动下拉菜单交互
            $('.select-condition ul').slimscroll({ opacity:1, size : 4/*,railVisible:true*/, color:'#707070', railColor:'#e3e3e3', railVisible:true, railOpacity:1});
			//弹窗内容交互
			$("#seclectbtn").click(function(){
				$(".selectStore_modal").toggle();
			});
			$("#close-modal").click(function(){
				$(".selectStore_modal").hide();
			});
			$(".closeCon a") .click(function(){
				$(this).remove();
			});
			$("#colseAll a").click(function(){
				$(this).parents("#colseAll").prev(".closeCon").remove();
			});
			$(".hov-bg li").click(function(){
				$(this).addClass("curr").siblings(".hov-bg li").removeClass("curr");
			});
		</script>
</html>
