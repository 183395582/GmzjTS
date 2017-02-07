<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!--header-top-->
<jsp:include page="../comm/topNav.jsp" />
<!--顶部推荐-->
<div class="recommend-top clearfix">
	<div class="wrapper">
		<div class="left-con">
			<div class="round-row">
				<div class="col col-30">
					<img src="${webRoot }static/images/pro/recommend-topimg.jpg" />
				</div>
				<div class="col col-50">
					<div class="tit clearfix">
						<h3 class="fl ellipsis-f name">${cemetery.name }</h3>
						<dl class="star fl star-ly">
							<dd class="iconfont icon-pingjiaxingxing"></dd>
							<dd class="iconfont icon-pingjiaxingxing"></dd>
							<dd class="iconfont icon-pingjiaxingxing"></dd>
							<dd class="iconfont icon-pingfenxingban"></dd>
							<dd class="iconfont icon-pingjiaxingxing1"></dd>
							<dt>4.6</dt>
						</dl>
						<div class="fr approveBox">
							<span class="orangeBtn-line btn">认证</span> <span
								class="greenBtn-line btn">优惠</span> <span
								class="redBtn-line btn">团购</span>
						</div>
					</div>
					<div class="themBtn mt15">
						<a href="" class="blueBtn-line btn">唐风主题公墓</a>
					</div>
					<div class="mt15">
						<a href="">官网> </a>
					</div>
				</div>
				<div class="col col-20 groupBtn">
					<div class="btn">
						<a href="" class="green-gBtn">团购活动</a>
					</div>
					<div class="btn">
						<a href="" class="red-mBtn">特惠模型</a>
					</div>
				</div>
			</div>
		</div>
		<div class="right-con">
			<div class="link-box">
				<span class="img"><img
					src="${webRoot }static/images/pro/an-wx.jpg" /></span>
				<div class="ms">
					<div class="tel">
						咨询热线:<span>028-82215232</span>
					</div>
					<div class="care">
						<button class="blueBtn-line btn" id="no-b">
							<i class="iconfont icon-pingjiaxingxing"></i>关注
						</button>
						<button class="blueBtn-line btn" id="yes-b" style="display: none;">
							<i class="iconfont icon-pingjiaxingxing red-f"></i>已关注
						</button>
					</div>
					<div class="more">
						<span><a href="#">2652</a>人查看</span> <span><a href="#">2652</a>人预约</span>
						<span><a href="#">2652222</a>评论</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--header-meun-->
<div class="header header-meun">
	<!--菜单-->
	<div class="navMenu">
		<div class="wrapper">
			<ul class="clearfix">
				<li><a href="#">首页</a></li>
				<li class="curr"><a href="#">公墓陵园</a></li>
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
