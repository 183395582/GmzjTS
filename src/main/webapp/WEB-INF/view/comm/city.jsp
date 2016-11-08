<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="../mytags.jsp"%>
<div class="changeCity" id="changeCity">
	<div class="bgDiv"></div>
	<div class="citys">
		<span class="cityName">${sessionScope.cityMap.name } </span><span class="changeCityTag">[切换城市]</span>
	</div>
	<div class="item-CityList">
		<div class="cl-h">请选择所在的收货城市</div>
		<div class="cl-b">
			<ul class="cf">
				<li><a href="javascript:void(0);">北京市</a></li>
				<li><a href="javascript:void(0);">上海市</a></li>
				<li><a href="javascript:void(0);">广州市</a></li>
				<li><a href="javascript:void(0);">南京市</a></li>
				<li><a href="javascript:void(0);">深圳市</a></li>
				<li class="active"><a href="javascript:void(0);">成都市</a></li>
			</ul>
		</div>
	</div>
</div>