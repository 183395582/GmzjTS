<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="mytags.jsp"%>
<html lang="zh">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="X-UA-Compatible" content="IE=8" >
		<title>公墓之家</title>
		<meta name="description" content="">
		<meta name="keywords" content="">
		<jsp:include page="comm/script.jsp"/>
		<jsp:include page="comm/css.jsp"/>
        
	</head>
	<body>
		<div class="header header-topNav">
			<div class="topNav">
				<div class="wrapper clearfix">
					<div class="topNav_l">
						<ul>
							<li><a href="">登录</a></li>
				            <li><a href="">注册</a></li>
				            <li class="userBox hide"><p class="g9">你好，<span class="userName">xxxx</span></p></li>
				            <li class="exit line-r hide"><a href="">退出</a></li>
						</ul>
					</div>
				<!--登陆注册类-->
	            <ul class="topNav_r clearfix">
	               <li class="lineLi Phcode-click">
	                	<a href="javascript:;" class="Phcode-Btn"><em class="iconfont icon-iconfontshouji"></em>手机版</a>
	                	<div class="PhcodeBox">
	                        <div class="img img-ios"><img src="${webRoot }static/images/icon/img-1.jpg"/></div>
	                        <div class="img img-android"><img src="${webRoot }static/images/icon/img-4.jpg"/></div>
                            <div class="btnBox">
                            	<a href="#" class="iosClick orangBtn">苹果手机客户端</a>
                            	<a href="#" class="andClick orangBtn">安卓手机客户端</a>
                            </div>
	                    </div>
	                </li>
	                <li class="service-peo">
	                    <a href="javascript:;" class="servBtn">客户服务<span class="iconfont icon-iconfonticonfontjiantoucopy icon-up"></span><span class="iconfont icon-iconfonticonfontjiantou2 icon-down"></span></a>
	                    <div class="serviceBox">
	                        <div class="tit blue-f">咨询热线：40086-95522</div>
	                        <ul class="clearfix">
	                        	<li><a href="#"><em class="iconfont icon-iconfonttuanduicheng"></em><span>关于我们</span></a></li>
	                        	<li><a href="#"><em class="iconfont icon-iconfontweibiaoti5"></em><span>特色服务</span></a></li>
	                        	<li><a href="#"><em class="iconfont icon-iconfontliuyanban"></em><span>客户留言</span></a></li>
	                        </ul>
	                        <div class="sm">
	                        	<img src="${webRoot }static/images/pro/an-wx.jpg" class="fl"/>
	                        	<div class="tt fr pt15">
	                        		扫描二维码 <br/>关注官方微信
	                        	</div>
	                        </div>
	                    </div>
	                </li>
	            </ul>
				</div>
			</div>
		</div>
		<div class="header header-logoSearch">
			<div class="logo-search">
				<div class="wrapper clearfix">
					<div class="logo">
						<a href=""><img src="${webRoot }static/images/icon/logo.png"/></a>
					</div>
					<div class="city-box">
						<jsp:include page="comm/city.jsp"/>
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
							<input class="form-control" type="search" placeholder="请输入你是搜索的关键词"/>
						</div>
						<div class="search-btn">
							<input type="button" value="搜索" class="searchBtn"/>
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
						<li class="curr"><a href="#">首页</a></li>
						<li><a href="${webRoot }cemetery/index">公墓陵园</a></li>
						<li><a href="#">殡仪服务</a></li>
						<li><a href="#">风水堪舆</a></li>
						<li><a href="#">百科</a></li>
						<li><a href="#">文章</a></li>
						<li><a href="#">特色服务</a></li>
						<li><a href="#">用品商城</a></li>
					</ul>
				</div>
			</div>
			 <!--右侧-->
			<div class="rightNav">
		        <div class="navBox">
		            <div class="centerItem">
		                <ul>
		                  	<li class="itemH">
		                        <a href="javascript:;"><em class="iconfont icon-iconfontkefu"></em>客服</a>
		                        <div class="tags">
		                            <div class="tagsBox">24小时在线</div>
		                        </div>
		                    </li>
		                    <li class="itemH">
		                    	<a href="javascript:;"><em class="iconfont icon-iconfontweixin"></em>微信</a>
		                    	<div class="tags tags-ma">
		                            <div class="tagsBox"><img src="${webRoot }static/images/pro/an-wx.jpg" class="img"/></div>
		                        </div>
		                    </li>
		                    <li class="itemH">
		                        <a href="javascript:;"><em class="iconfont icon-iconfontdianhua"></em>电话</a>
		                        <div class="tags">
		                            <div class="tagsBox">4001234567</div>
		                        </div>
		                    </li>
		                </ul>
		            </div>
		            <div class="backToTop">
		               <a href="javascript:void(0);"><em class="iconfont icon-iconfontgotop"></em></a>
		            </div>
		        </div>
		    </div>
		</div>
		<!--header-end-->
		<div class="banner-box">
			<!--几张图片轮播切换-->
			<div class="swiper-container swiper-big-con">
			   <ul class="slides">
					<li><a href="#"><img src="${webRoot }static/images/banner/banner-big1.jpg" /></a> </li>
					<li><a href="#"><img src="${webRoot }static/images/banner/banner-big1.jpg" /></a> </li>
		            <li><a href="#"><img src="${webRoot }static/images/banner/banner-big1.jpg" /></a> </li>
		            <li><a href="#"><img src="${webRoot }static/images/banner/banner-big1.jpg" /></a> </li>
		        </ul>

			</div>
			<div class="pos-windows-note">
				<div class="title">
					<img src="${webRoot }static/images/icon/text-note.png"/>
					<p>致力于打造中国殡葬行业第一品牌</p>
				</div>
				<div class="info">
					<ul class="list">
						<li><em class="iconfont icon-iconfontrenzhengcopy"></em>集优势资源为一体</li>
						<li><em class="iconfont icon-iconfontqian"></em>价格多重优惠</li>
						<li><em class="iconfont icon-iconfonttaoxin"></em>服务温暖用心</li>
					</ul>
					<div class="num-box">
						<div class="t">已服务次数：</div>
						<div class="num">
							<span>3</span>
							<span>5</span>
							<span>7</span>
							<span>1</span>
							<span>5</span>
							<span>4</span>
							<span>6</span>
							<span>8</span>
						</div>
					</div>
					<div class="num-box">
						<div class="t">为家属节省：</div>
						<div class="num">
							<span>3</span>
							<span>5</span>
							<span>7</span>
							<span>1</span>
							<span>5</span>
							<span>4</span>
							<span>6</span>
							<i class="dw">万元</i>
						</div>
					</div>
					<div class="num-box">
						<div class="t">赢 得 好 评：<span class="per">97%</span></div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="main-con">
			<div class="wrapper">
				<h2 class="line"><span class="c-t">公墓  • 陵园</span></h2>
				<div class="more-link ar"><a href="">更多 ></a></div>
				<div class="info-box row-fluid">
					<c:forEach items="${gmlist }" var="gm" varStatus="status">
						<a class="col-4 col item" href="">
							<div class="img-box">
								<p class="img"><img src="${webRoot }${gm.imgUrl }" /></p>
							</div>
							<div class="text-box">
								<div class="title-box clearfix">
									<h3 class="fl ellipsis-f">${gm.name }</h3>
									<dl class="star fr">
										<dt class="score">${gm.score }</dt>
									</dl>
								</div>
								<div class="price-box">
									参考价格：<span class="orange-f pr5">￥<span class="font-20">${gm.price }</span> 起</span>
									<c:if test="${gm.discount }"><span class="greenBtn-line btn">优惠</span></c:if>
									<c:if test="${gm.authentication }"><span class="orangeBtn-line btn">认证</span></c:if>
								</div>
								<div class="adress ellipsis-f">园区地址：${gm.address }</div>
							</div>
						</a>
					</c:forEach>
				</div>
				<!--殡仪服务-->
				<h2 class="clearfix"><span class="l-t">殡仪服务</span> <a href="#" class="more-link-s fr">更多 ></a></h2>
				<div class="info-box row-fluid pt15 infoHove">
					<c:forEach items="${bylist }" var="by" varStatus="status">
						<a class="col-4 col item" href="">
							<div class="img-box">
								<!--<span class="tips-icon-left"><img src="${webRoot }static/images/icon/yibing-icon1.png"/></span>-->
								<p class="img"><img src="${webRoot }${by.imgUrl }" /></p>
								<div class="star-hov">
									<dl>
										<dd class="score">${by.scoreCh }</dd>
										<dt>策划</dt>
									</dl>
									<dl>
										<dd class="score">${by.scoreFw }</dd>
										<dt>服务</dt>
									</dl>
									<dl>
										<dd class="score">${by.scoreJg }</dd>
										<dt>价格</dt>
									</dl>
								</div>
							</div>
							<div class="text-box">
								<div class="name-box clearfix">
									<h4 class="fl ellipsis-f">${by.name }</h4>
									<div class="fr sure-tips">
										<c:if test="${by.discount }"><span class="greenBtn-line btn">优惠</span></c:if>
										<c:if test="${by.authentication }"><span class="orangeBtn-line btn">认证</span></c:if>
									</div>
								</div>
								<div class="adress ellipsis-f">园区地址：${by.address }</div>
							</div>
						</a>
					</c:forEach>
				</div>
				<!--风水堪興-->
				<h2 class="clearfix"><span class="l-t">风水堪興</span> <a href="#" class="more-link-s fr">更多 ></a></h2>
				<div class="info-box row-fluid pt15 infoHove">
					<c:forEach items="${fslist }" var="fs" varStatus="status">
						<a class="col-4 col item" href="">
							<div class="img-box">
								<p class="img"><img src="${webRoot }${fs.imgUrl }" /></p>
								<div class="star-hov">
									<dl>
										<dd class="score">${fs.scoreCh }</dd>
										<dt>策划</dt>
									</dl>
									<dl>
										<dd class="score">${fs.scoreFw }</dd>
										<dt>服务</dt>
									</dl>
									<dl>
										<dd class="score">${fs.scoreJg }</dd>
										<dt>价格</dt>
									</dl>
								</div>
							</div>
							<div class="text-box">
								<div class="name-box clearfix">
									<h4 class="fl ellipsis-f">${fs.name }</h4>
									<div class="fr sure-tips">
										<c:if test="${fs.discount }"><span class="greenBtn-line btn">优惠</span></c:if>
										<c:if test="${fs.authentication }"><span class="orangeBtn-line btn">认证</span></c:if>
									</div>
								</div>
								<div class="adress ellipsis-f">园区地址：${by.address }</div>
							</div>
						</a>
					</c:forEach>
				</div>
				<!--广告图-->
				<div class="ad-box border-all">
					<a href="#"><img src="${webRoot }static/images/pro/img13.jpg"/></a>
					<a href="#"><img src="${webRoot }static/images/pro/img14.jpg"/></a>
					<a href="#"><img src="${webRoot }static/images/pro/img15.jpg"/></a>
					<a href="#"><img src="${webRoot }static/images/pro/img16.jpg"/></a>
					<a href="#"><img src="${webRoot }static/images/pro/img17.jpg"/></a>
				</div>
				<!--新闻资讯-->
				<div class="news-con clearfix">
					<div class="news-banner">
						<h2 class="clearfix"><span class="l-t">新闻资讯</span><a href="#" class="more-link-s fr">更多 ></a></h2>
						<div class="border-all clearfix mt15">
							<div class="img-swiper">
							<div class="swiper-container swiper-small-con">
							  <ul class="slides">
									<c:forEach items="${newslist }" var="news" varStatus="status">
									<li>
										<a href="#">
							        		<img src="${news.imgurl }" />
							        		<div class="text">
							        			${news.title }
							        			<span><fmt:formatDate value="${news.time }" type="date"/></span>
							        		</div>
							        	</a>
									</li>
								</c:forEach>
						        </ul>
							</div>
						</div>
							<div class="list-t">
								<c:forEach items="${newslist }" var="news" varStatus="status">
									<a href="">
										<h4>${news.title } </h4>
										<p class="ellipsis-f">${news.content }</p>
									</a>
								</c:forEach>
							</div>
						</div>
						
					</div>
					<div class="news-list">
						<h2 class="clearfix"><span class="l-t">百科</span><a href="#" class="more-link-s fr">更多 ></a></h2>
						<div class="border-all clearfix mt15">
							<ul>
								<c:forEach items="${articlelist }" var="article" varStatus="status">
									<li><a href="" class="ellipsis-f txt">${article.title }</a><span class="time"><fmt:formatDate value="${article.time }" type="date"/></span></li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<!--友情链接-->
				<div class="friend-link mt40">
					<h2>友情链接</h2>
					<div class="link-more">
						<a href="#">四川殡葬 </a>
						<a href="#">绵阳殡葬</a>
						<a href="#">重庆殡葬</a>
						<a href="#">开阳殡葬</a>
						<a href="#">西安殡葬</a>
						<a href="#">舟山殡葬</a>
						<a href="#">淮海殡葬</a>
						<a href="#">北海殡葬</a>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="comm/footer.jsp"/>
		<script>
		$("#select-opt").selectpick({container:'.select-list', onSelect:function(value,text){
			enAble();}
		});
   
		$('.swiper-big-con').flexslider({animation: "slide", pauseOnHover:true, slideshowSpeed:3000, directionNav: false });
		$('.swiper-small-con').flexslider({animation: "slide", pauseOnHover:true, slideshowSpeed:4000 });
		
		//处理评分
		$(".score").each(function(){
			handleScore(this);
		});
		
		//根据ip获取所在城市及区域列表
		/* $(window).load(function() {
			jQuery.getScript("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js",function(){
			    province = remote_ip_info["province"];
			    city = remote_ip_info["city"];  
				$(".cityName").html(city);
				$.get("${webRoot }pub/findRegionByName", {"cityName":city}, function(resp){
					  str = "<li class=\"curr\"><a href=\"javascript:;\">不限 </a></li>"
					  $(resp.data).each(function(index, element){
						  str += "<li><a href=\"javascript:;\">" + element.name + "</a></li>";
					  });
					  $(".region").html(str);
				});
			});
		}); */
		
		</script>
	</body>
	
</html>
