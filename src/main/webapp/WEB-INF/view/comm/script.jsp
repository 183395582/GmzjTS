<script type="text/javascript" src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript" src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
<script type="text/javascript" src="${webRoot }static/script/UI.js"></script>
<script type="text/javascript" src="${webRoot }static/script/commen.js"></script>
<script type="text/javascript" src="${webRoot }static/script/select/selectpick.js"></script>
<script type="text/javascript" src="${webRoot }static/script/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="${webRoot }static/script/bootstrap.min.js"></script>
<script type="text/javascript" src="${webRoot }static/script/slimscroll/jquery.slimscroll.js"></script>
<script type="text/javascript" src="${webRoot }static/plugins/handlebars.js"></script>

<!--[if IE 6]>
    <script src="static/admin/js/DD_belatedPNG.js"></script>
    <script>
    DD_belatedPNG.fix('*');
    </script>
<![endif]-->

<script type="text/javascript">
/* 设置评分星星显示 */
function handleScore(e){
	var score = $(e).html();
	/* 完整星星数 */
	var complete = Math.floor(score);
	/* 半颗星星数 */
	(score % 1) == 0 ? half = 0 : half = 1;
	/* 空星星数 */
	var empty = parseInt(5) - parseInt(complete) - parseInt(half);
	var html = "";
	for (var i = 0; i < complete; i++){
		html += '<dd class="iconfont icon-pingjiaxingxing"></dd>';
	}
	for (var i = 0; i < half; i++){
		html += '<dd class="iconfont icon-pingfenxingban"></dd>';
	}
	for (var i = 0; i < empty; i++){
		html += '<dd class="iconfont icon-pingjiaxingxing1"></dd>';
	}
	$(e).before(html);
}
function GetQueryString(name) {
    var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if(r!=null)return  unescape(r[2]); return null;
}
</script>