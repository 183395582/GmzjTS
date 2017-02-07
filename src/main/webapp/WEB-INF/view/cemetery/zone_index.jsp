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

</head>
<body>
	<jsp:include page="zone_comm.jsp" />
	<!--header-end-->
	<div class="main-con">
		<div class="wrapper">
			<!--banner内容-->
			<div class="banner-pro clearfix border-all">
				<div class="previewBox">
					<div class="left-img">
						<img src="${webRoot }static/images/pro/ly-img17.jpg" />
					</div>
				</div>
				<div class="item-inner">
					<div class="title clearfix">
						<h1 class="fl">${cemetery.name}</h1>
						<dl class="star star-ly fl pl10">
							<dd class="iconfont icon-pingjiaxingxing"></dd>
							<dd class="iconfont icon-pingjiaxingxing"></dd>
							<dd class="iconfont icon-pingjiaxingxing"></dd>
							<dd class="iconfont icon-pingfenxingban"></dd>
							<dd class="iconfont icon-pingjiaxingxing1"></dd>
							<dt>4.6</dt>
						</dl>
					</div>
					<div class="feature" style="padding-top: 5px;">
						<div class="priceBox clearfix">
							<div class="new-p fl">
								参考均价： <small>&yen;</small> <span style="font-size: 28px;">88343</span>
								<small>起</small>
							</div>
						</div>
						<ul class="list">
							<li><span>地 址：</span>${cemetery.address }</li>
							<li><span>看墓专车：</span>免费专车上门接送服务【公墓之家提供】</li>
							<li><span>咨询热线：</span>${cemetery.hotline }</li>
						</ul>
						<div class="btn-yy">
							<a href="" class="blueBtn">预约看墓购墓</a>
						</div>
					</div>
					<div class="service-info">
						<div class="title-s">园区提供服务</div>
						<div class="round-row icon-img">
							<div class="col col-20">
								<span class="ico ico-s1"></span>
								<p>专车接送看墓购墓</p>
							</div>
							<div class="col col-20">
								<span class="ico ico-s2"></span>
								<p>一对一专业服务</p>
							</div>
							<div class="col col-20">
								<span class="ico ico-s3"></span>
								<p>可寄存骨灰盒</p>
							</div>
							<div class="col col-20">
								<span class="ico ico-s4"></span>
								<p>下葬仪式</p>
							</div>
							<div class="col col-20">
								<span class="ico ico-s5"></span>
								<p>清明扫墓班车</p>
							</div>
							<div class="col col-20">
								<span class="ico ico-s6"></span>
								<p>免费停车</p>
							</div>
							<div class="col col-20">
								<span class="ico ico-s7"></span>
								<p>休息区</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="insideCon border-all">
				<h2>
					<img src="${webRoot }static/images/icon/icon-3.jpg" /> 优惠活动
				</h2>
				<div class="round-row info-in">
					<div class="col col-20">
						<img src="${webRoot }static/images/pro/ly-img18.jpg" />
					</div>
					<div class="col col-80">
						<div class="item">
							<span class="green-jrBtn">清明节*惠</span> <span>【清明节*惠】由公墓之家联合各大公墓为只买提供更多实惠和便利。</span>
							<a href="#">查看详情></a>
						</div>
						<div class="item">
							<span class="red-tmBtn">特惠墓型</span> <span>【清明节*惠】由公墓之家联合各大公墓为只买提供更多实惠和便利。</span>
							<a href="#">查看详情></a>
						</div>
					</div>
				</div>
			</div>
			<div class="insideCon border-all">
				<h2>
					<img src="${webRoot }static/images/icon/icon-3.jpg" /> 园区介绍 <a href="#"
						class="more-link-s fr">更多></a>
				</h2>
				<div class="round-row info-in">
					<div class="col col-30">
						<img src="${webRoot }static/images/pro/ly-img19.jpg" />
					</div>
					<div class="col col-30 list-ul">
						<ul>
							<li><b>审批部门：</b>成都市政局</li>
							<li><b>园区类型：</b>永久性对外经营</li>
							<li><b>距离市区：</b>34公里</li>
							<li><b>行政区域：</b>龙泉驿</li>
							<li><b>园区地址：</b>成都市龙泉驿区</li>
						</ul>
					</div>
					<div class="col col-40 list-ul">
						<ul>
							<li><b>看墓专车：</b>【公墓之家提供】免费专车接送服务，可随时预约</li>
							<li><b>园区规模：</b>20000亩</li>
							<li><b>距离特色：</b>唐古风建筑</li>
							<li><b>行政服务：</b>一对一服务，24小时保安巡逻</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="insideCon border-all">
				<h2>
					<img src="${webRoot }static/images/icon/icon-3.jpg" /> 园区环境 <a href="#"
						class="more-link-s fr">更多></a>
				</h2>
				<div class="row-fluid info-in">
					<div class="col col-4 item-bbg">
						<a href="#"><img src="${webRoot }static/images/pro/ly-img13.jpg" /></a>
						<div class="txt">长松寺接待处</div>
					</div>
					<div class="col col-4 item-bbg">
						<a href="#"><img src="${webRoot }static/images/pro/ly-img13.jpg" /></a>
						<div class="txt">长松寺接待处</div>
					</div>
					<div class="col col-4 item-bbg">
						<a href="#"><img src="${webRoot }static/images/pro/ly-img13.jpg" /></a>
						<div class="txt">长松寺接待处</div>
					</div>
					<div class="col col-4 item-bbg">
						<a href="#"><img src="${webRoot }static/images/pro/ly-img13.jpg" /></a>
						<div class="txt">长松寺接待处</div>
					</div>
				</div>
			</div>
			<div class="insideCon border-all">
				<h2>
					<img src="${webRoot }static/images/icon/icon-3.jpg" /> 墓型展示 <a href="#"
						class="more-link-s fr">更多></a>
				</h2>
				<div class="info-box row-fluid">
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>￥<span>88343</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>￥<span>88343</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>暂无
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>￥<span>88343</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="insideCon border-all">
				<h2>
					<img src="${webRoot }static/images/icon/icon-3.jpg" /> 园区名人 <a href="#"
						class="more-link-s fr">更多></a>
				</h2>
				<div class="row-fluid info-in">
					<div class="col-3 col info-img">
						<div class="img">
							<a href="#"><img src="${webRoot }static/images/pro/ly-img20.jpg" /></a>
						</div>
						<div class="info-t">
							<h5>刘德一</h5>
							<p>巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴
								23232323243434343434343</p>
						</div>
					</div>
					<div class="col-3 col info-img">
						<div class="img">
							<a href="#"><img src="${webRoot }static/images/pro/ly-img20.jpg" /></a>
						</div>
						<div class="info-t">
							<h5>刘德一</h5>
							<p>巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴
								23232323243434343434343</p>
						</div>
					</div>
					<div class="col-3 col info-img">
						<div class="img">
							<a href="#"><img src="${webRoot }static/images/pro/ly-img20.jpg" /></a>
						</div>
						<div class="info-t">
							<h5>刘德一</h5>
							<p>巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴蜀笑巴蜀笑星哈儿师长巴蜀笑星哈儿师长巴
								23232323243434343434343</p>
						</div>
					</div>
				</div>
			</div>
			<div class="insideCon border-all">
				<h2>
					<img src="${webRoot }static/images/icon/icon-3.jpg" /> 推荐墓型 <a href="#"
						class="more-link-s fr">更多></a>
				</h2>
				<div class="info-box row-fluid">
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>￥<span>88343</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>￥<span>88343</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>暂无
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-4 col item noBor">
						<div class="img-box">
							<p class="img">
								<a href="#"><img src="${webRoot }static/images/pro/img1.jpg" /></a>
							</p>
						</div>
						<div class="text-box">
							<div class="title-box clearfix">
								<h3 class="fl name">凤凰华庭</h3>
								<div class="small-name fr">
									<a href="">详情>></a>
								</div>
								<div class="clear"></div>
							</div>
							<div class="price-box-big">
								<div class="money-small clearfix">
									<div class="tt fl">
										<small class="gray-f">参考价：</small>￥<span>88343</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="ly-lr-con clearfix">
				<!--左侧评价-->
				<div class="left-con border-all">
					<h1 class="title">评价</h1>
					<div class="yellowbg-com">
						<div class="tm-rate">
							<div class="rate-pr">综合评分 ： 5.8分</div>
							<div class="rate-desc">
								<span>风水：<b>4</b></span> <span>环境：<b>5</b></span> <span>服务：<b>5</b></span>
								<span>交通：<b>4</b></span>
							</div>
						</div>
						<div class="btn">
							<button class="orangBtn">我要评份</button>
						</div>
					</div>
					<div class="comments-list">
						<div class="tab-con">
							<div class="item">
								<div class="user-img">
									<a href="#" class="bor"><img src="${webRoot }static/images/pro/img7.jpg"></a>
									<p>墨1235湘</p>
								</div>
								<div class="user-comment">
									<div class="round-row">
										<div class="col col-60 column">
											<span>风水：<b>4</b></span> <span>环境：<b>5</b></span> <span>服务：<b>5</b></span>
											<span>交通：<b>4</b></span>
										</div>
										<div class="col col-40 ar time">
											<span>2016-04-26</span> <span>12:34:23</span>
										</div>
									</div>
									<div class="p-comment">
										全部评论：环境非常好，环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好
									</div>
								</div>
							</div>
							<div class="item">
								<div class="user-img">
									<a href="#" class="bor"><img src="${webRoot }static/images/pro/img7.jpg"></a>
									<p>墨1235湘</p>
								</div>
								<div class="user-comment">
									<div class="round-row">
										<div class="col col-60 column">
											<span>风水：<b>4</b></span> <span>环境：<b>5</b></span> <span>服务：<b>5</b></span>
											<span>交通：<b>4</b></span>
										</div>
										<div class="col col-40 ar time">
											<span>2016-04-26</span> <span>12:34:23</span>
										</div>
									</div>
									<div class="p-comment">
										全部评论：环境非常好，环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好
									</div>
								</div>
							</div>
							<div class="item">
								<div class="user-img">
									<a href="#" class="bor"><img src="${webRoot }static/images/pro/img7.jpg"></a>
									<p>墨1235湘</p>
								</div>
								<div class="user-comment">
									<div class="round-row">
										<div class="col col-60 column">
											<span>风水：<b>4</b></span> <span>环境：<b>5</b></span> <span>服务：<b>5</b></span>
											<span>交通：<b>4</b></span>
										</div>
										<div class="col col-40 ar time">
											<span>2016-04-26</span> <span>12:34:23</span>
										</div>
									</div>
									<div class="p-comment">
										全部评论：环境非常好，环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好
									</div>
								</div>
							</div>
							<div class="item">
								<div class="user-img">
									<a href="#" class="bor"><img src="${webRoot }static/images/pro/img7.jpg"></a>
									<p>墨1235湘</p>
								</div>
								<div class="user-comment">
									<div class="round-row">
										<div class="col col-60 column">
											<span>风水：<b>4</b></span> <span>环境：<b>5</b></span> <span>服务：<b>5</b></span>
											<span>交通：<b>4</b></span>
										</div>
										<div class="col col-40 ar time">
											<span>2016-04-26</span> <span>12:34:23</span>
										</div>
									</div>
									<div class="p-comment">
										全部评论：环境非常好，环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好环境非常好
									</div>
								</div>
							</div>
							<div class="more-comment ar">
								<a href="#">查看更多评论></a>
							</div>
						</div>
					</div>

				</div>
				<!--右侧内容-->
				<div class="sideBar">
					<div class="info-ad">
						<a href="" style="margin-top: 0;"><img
							src="${webRoot }static/images/pro/ly-img7.jpg" /></a> <a href=""><img
							src="${webRoot }static/images/pro/ly-img8.jpg" /></a>
					</div>
					<h2 class="clearfix mt20">
						<span class="l-t">专家提醒</span> <a href="#" class="more-link-s fr">更多
							></a>
					</h2>
					<div class="info">
						<ul class="list">
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传中国传统治</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
							<li><a href="#">中国传统治丧传统中国传统治丧传统中国传</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="gm-ensure">
				<div class="round-row">
					<div class="col-20 col item">
						<img src="${webRoot }static/images/icon/ensure-icon1.jpg" />
						<h3>独家优惠</h3>
						<p>优惠信息100%真实</p>
					</div>
					<div class="col-20 col item">
						<img src="${webRoot }static/images/icon/ensure-icon2.jpg" />
						<h3>信息全面</h3>
						<p>涵盖最全公墓信息</p>
					</div>
					<div class="col-20 col item">
						<img src="${webRoot }static/images/icon/ensure-icon2.jpg" />
						<h3>专业服务</h3>
						<p>最优秀的顾问团队</p>
					</div>
					<div class="col-20 col item">
						<img src="${webRoot }static/images/icon/ensure-icon2.jpg" />
						<h3>万千口碑</h3>
						<p>万千家属的共同选择</p>
					</div>
					<div class="col-20 col item">
						<img src="${webRoot }static/images/icon/ensure-icon2.jpg" />
						<h3>诚信经营</h3>
						<p>所有交易公平透明</p>
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

</html>
