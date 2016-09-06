/**
 * Created by pisen on 2016/3/7.
 */
var UI = {};
//鼠标光标移入输入框的交互（选择地址）
UI.inputBlur = function (options) {
    var defaults = {
        fatherDiv: '#cityBox01',
        objDiv: 'li',
        objClass: 'active',
        addStyle: 'active',
        Evenend:null
    };
    var opts = $.extend(defaults, options);
    var fatherDiv = $(opts.fatherDiv);
    var objLi = fatherDiv.find('ul').find('li');
    var liLengh = objLi.length;
    var n = 0;
    fatherDiv.find(opts.objDiv).hover(function () {
        n = $(this).index();
        fatherDiv.find(opts.objDiv).removeClass(opts.addStyle);
        $(this).addClass(opts.addStyle)
    }, function () { });
    $(window).keydown(function (event) {
        if (event.keyCode == 38) {
            n--;
            if (n < 0) { n = 0; }
            keySlide(n);
        } else if (event.keyCode == 40) {
            if(fatherDiv.find('ul').find('li.hover').length!=0){
                n++;
                if (n > liLengh - 1) {
                    n = liLengh - 1;
                }
                keySlide(n);
            }else{
                keySlide(0)
            }
        }
    });
    function keySlide(n) {
        objLi.removeClass(opts.objClass);
        objLi.eq(n).addClass(opts.objClass);
    }
    if (typeof (opts.Evenend) == "function") {
        opts.Evenend();
    }
};
/*****************************
 //点击显示隐藏
 * popbox:	要展开的容器
 * popclick:	点击按钮
 * popcom:	要展开的内容
 * openclass:	打开btn的样式
 * closeclass:	关闭btn的样式
 * clickEve:		点击回调函数
 * 2015-03-06 陈建 创建
 ******************************/
UI.Popoverfram = function (options) {
    var defaults = {
        popbox: "#accordion",
        popclick: ".btn",
        popcom: ".dropdown-menu",
        openclass: "icon-arrow_b",
        closeclass: "icon-arrow_t",
        hoverclass: "hover",
        openArrow: "down",
        EveObj: "mouseenter mouseleave",
        clickbackEve: null
    };
    var opt = $.extend(defaults, options);
    var popboxObj = $(opt.popbox);
    var popclickObj = popboxObj.find(opt.popclick);
    var arrowObj = popboxObj.find('.' + opt.openclass);
    var close_shopcart_sign = null;
    if (opt.openArrow == "down") {
        popboxObj.bind(opt.EveObj, function () {
            var popcomObj = $(this).find(opt.popcom);
            if ($(this).hasClass(opt.hoverclass)/* && (a.type == "mouseleave" || a.type == "focusout")*/) {
                $(this).removeClass(opt.hoverclass);
                if (window.navigator.userAgent.indexOf("Chrome") !== -1) {
                    popcomObj.delay(100).slideUp(200, function () {
                        popcomObj.css({
                            height: "auto"
                        });
                    });
                } else {
                    popcomObj.stop(true,true).slideUp(200, function () {
                        popcomObj.css({
                            height: "auto"
                        });
                    });
                }
            } else {
                $(this).addClass(opt.hoverclass);
                popcomObj.stop(true,true).slideDown(100, function () {
                    popcomObj.css({
                        height: "auto"
                    });
                });
                /*close_shopcart_sign = setTimeout(function(){close_shopcart()}, 100);*/
            }
            //by fisherman
            popcomObj.find('a').click(function(){
                popcomObj.css({display:'none'});
                popcomObj.stop(true,true).slideUp(200, function () {
                    popcomObj.css({
                        height: "auto"
                    });
                });
            });
        });
    } else if (opt.openArrow == "right") {
        popboxObj.hover(
            function () {
                $(this).addClass(opt.hoverclass);
                $(this).find(opt.popcom).show().stop().animate({ width: '250px' }, 200, function () {
                    $(this).css({
                    });
                });
            }, function () {
                $(this).removeClass(opt.hoverclass);
                $(this).find(opt.popcom).stop().animate({ width: '0' }, 100, function () {
                    $(this).css({
                        display: "none"
                    });
                });
            }
        );
    }
};
//通用选择器
UI.SelectGM = function (options) {
    var defaults = {
        Selbox: "#accordion",
        Seloption: "span",
        activeclass: "active",
        Selclass: "radio", //radio，chickbox
        leastone: "leastone", //必须有一个选择
        clickEve: null
    };
    var opt = $.extend(defaults, options);
    var SelboxObj = $(opt.Selbox);
    var SeloptionObj = SelboxObj.find(opt.Seloption);
    var evTimeStamp = 0;
    SeloptionObj.click(function (e) {
        var now = +new Date();
        if (now - evTimeStamp < 100) { //通过时间判断是不是执行了两次
            return;
        }
        evTimeStamp = now;
        if (opt.Selclass == 'radio') {
            if ($(this).hasClass(opt.activeclass)) {
                if (opt.leastone == "leastone") {
                    return;
                } else {
                    $(this).removeClass(opt.activeclass);
                }
            } else {
                var Parent = $(this).parents(opt.Selbox);
                Parent.find(opt.Seloption).removeClass(opt.activeclass);
                $(this).addClass(opt.activeclass);
            }
            //回调函数
            if ($.isFunction(opt.clickEve)) {
                opt.clickEve(SeloptionObj, $(this));
            }
            return;

        } else {
            if ($(this).hasClass(opt.activeclass)) {
                $(this).removeClass(opt.activeclass);
            } else {
                $(this).addClass(opt.activeclass);
            }
            //回调函数
            if ($.isFunction(opt.clickEve)) {
                opt.clickEve(SeloptionObj, $(this));
            }
        }
    });
};
//点击外部隐藏
UI.clickHide = function (options) {
    var defaults = {
        fatherDiv: '.addrChoiceBox',//当前对象
        clickFn:null
    };
    // 处理默认参数
    var opts = $.extend({}, defaults, options);
    var isOut = false;
    $(opts.fatherDiv).hover(function () {
        isOut = false;
    }, function () {
        isOut = true;
    });
    $(document).on('click', function () {
        if(isOut==true){
            if($.isFunction(opts.clickFn)){
                opts.clickFn(opts.fatherDiv)
            }
        }else{}
    })
};

//选择城市下拉
UI.ChoiceAddrSlide = function (options) {
    var defaults = {
        mainObj: "#choiceDetaileAddr",
        clickObj: ".addrBox",
        slideObj:'.addrListBox'
    };
    var opts = $.extend({}, defaults, options);
    $(opts.mainObj).find(opts.clickObj).bind('click',function(){
        $(this).toggleClass('active');
        if($(this).hasClass('active')){
            $(this).find(opts.slideObj).slideDown();
        }else{
            $(this).find(opts.slideObj).slideUp();
        }
    })
};


//modalType:alert-default  alert-lg
//btnType: true(两个按钮) false(一个按钮)
UI.TipAlert = function (modalType,word,btnType,options) {
    var defaults = {
        thisObj:'thisObj',
        btnInfo:['取消','确定'],
        ensureFn:null
    };
    var opts = $.extend({}, defaults, options);
    switch(modalType){
        case 'alert-default':{var htmls = '<div class="modalCon"><i class="iconfont icon-tishi"></i></div><div class="modalInfo"> '+word+' </div>';break;};
        case 'alert-lg':{var htmls = '<div class="modalCon"><i class="iconfont icon-tishi"></i><span class="modalMainInfo">抱歉，您的订单中有部分商品库存不足，请重新下单！</span></div><div class="modalSubtitle">库存不足商品：iPhone 6 PLUS  16G 5.5英寸 金色</div>';break;};
        default:{break;};
    }
    if(btnType){
        var Foot = '<a id="modalCancel" class="yxBtn grayBtn mr35" href="#">'+opts.btnInfo[0]+'</a><a id="ensure" class="yxBtn orangeBtn" href="#">'+opts.btnInfo[1]+'</a>';
    }else{
        var Foot = '<a id="ensure" class="yxBtn orangeBtn" href="#">'+opts.btnInfo[0]+'</a>';
    }

    var html = '<div class="alertModals ' + modalType + '">'+
        '<div class="modalWrapBox">' +
        '<div class="modalClose"><i class="iconfont icon-close"></i></div>'+
        '<div class="modalContent">'+htmls+'</div>'+
        '<div class="modalFot">'+Foot+'</div>'+
        '</div>'+
        '</div>';
    var globalMask = '<div class="globalMask" style="width: 100%;height: 100%;position: fixed;top: 0;left: 0;background-color: #000;opacity: 0.24;filter:alpha(opacity=24);z-index: 920;"></div>';
    if($('.globalMask').length<=0) {
        $('body').append(globalMask);
    }
    $('body').append(html);

    var left = -$('.alertModals').width()/2;
    var top = -$('.alertModals').height()/2;
    $('.alertModals').css({
        marginTop:top,
        marginLeft:left
    });
    //关闭弹出
    $('.modalClose').bind('click',function(){
        $(this).closest('.alertModals').remove();
        $('.globalMask').remove();
    });
    if($('#modalCancel').length){
        $('#modalCancel').bind('click',function(){
            $(this).closest('.alertModals').remove();
            $('.globalMask').remove();
        });
    }
    $('#ensure').bind('click',function(){
        if($.isFunction(opts.ensureFn)){
            opts.ensureFn(opts.thisObj);
        }
        $(this).closest('.alertModals').remove();
        $('.globalMask').remove();
    });
};

//界面中登陆
UI.loginWeb = function(){
    var loginTemplate = '<div class="loginFormBox loginPosStyle modalLogin">'+
        '<div class="login-t"><h1>账号登录</h1><div class="goRegist">没有账号？<a href="">注册</a></div></div>'+
        '<div class="login-b">'+
        '<div class="userBox loginInp">'+
        '<div class="loginTag"><em class="iconfont icon-toux"></em></div>'+
        '<input class="form-control" type="text" placeholder="输入用户名"/>'+
        '<div class="delBtn"><em class="iconfont icon-close"></em></div>'+
        '</div>'+
        '<div class="pwdBox loginInp">'+
        '<div class="loginTag"><em class="iconfont icon-suo2"></em></div>'+
        '<input class="form-control" type="password" placeholder="输入登陆密码"/>'+
        '<div class="delBtn"><em class="iconfont icon-close"></em></div>'+
        '</div>'+
        '<div class="loginBtn"><a class="orangeBtn" href="">登录</a></div>'+
        '</div>'+
        '<div class="fotItem">'+
        '<div class="recordPwd"><span class="selectBox selected"></span>记住用户名</div>'+
        '<div class="forgetPwd"><a href="">忘记密码？</a></div>'+
        '</div>'+
        '</div>';
    var globalMask = '<div class="globalMask" style="width: 100%;height: 100%;position: fixed;top: 0;left: 0;background-color: #000;opacity: 0.24;filter:alpha(opacity=24);z-index: 920;"></div>';
    if($('.globalMask').length<=0) {
        $('body').append(globalMask);
    }
    $('body').append(loginTemplate);
    var left = -$('.modalLogin').width()/2;
    var top = -$('.modalLogin').height()/2;
    $('.modalLogin').css({
        marginTop:top,
        marginLeft:left
    });
    $('.globalMask').bind('click',function(){
        $('.modalLogin').remove();
        $('.globalMask').remove();
    });
    QJTModal.inputBlur();
};

/*============================
 消息框提示
 specil_css:alert-success;alert-danger;alert-info;alert-warning; //弹出的颜色
 word： text  //内容
 =*/
UI.Tip_alert = function (specil_css, word) {
    switch (specil_css) {
        case 'alert-success': { word = "<span class='iconfont icon-chenggong'></span>" + "<span class='wordBox'>"+word+"</span>"; break; };
        //case 'alert-warning': { word = "<span class='iconfont icon-chenggong'></span>" + "<span class='wordBox'>"+word+"</span>"; break; };
        //case 'alert-danger': { word = "<span class='iconfont icon-chenggong'></span>" + "<span class='wordBox'>"+word+"</span>"; break; };
        default: { break; };
    }
    var html = '<div class="alert ' + specil_css + ' alertbox">' + word + '</div>';
    var JS_tipObj = $('.alertbox');
    if (!JS_tipObj.hasClass(specil_css)) {
        $("body").append(html);
        var comObj = $('.' + specil_css);
        comObj_W = comObj.outerWidth();
        comObj.css({ 'margin-left': -comObj_W / 2 });
        $('.' + specil_css).stop(true, true).animate({
            opacity: 1,
            top: '13%'
        }, 500).delay(1000).animate({
            opacity: 0,
            top: '10%'
        }, 500, function () { $(this).remove(); });
        /*
         setTimeout(function () {
         $('.'+specil_css).animate({
         opacity: 0,
         top:'15%'
         }, 500, function () {
         $(this).remove();
         });
         }, 2000);
         */
    } else {
        return;
    }
};

/*====通用跟随导航====
 BarClass:"#goodsSubBar",  //跟随的导航
 StartClass:"#goodsSubBar", //开始的导航
 EndClass:"#h3sppl",		//结束的位置
 OpenClass:"goodsSubBar_play", //打开跟随的导航的样式
 =================*/
UI.SubBar=function(options){
    var defaults ={
        BarClass:"#goodsSubBar",
        StartClass:"#StartSubBar",
        EndClass:"#h3sppl",
        OpenClass:"goodsSubBar_play"
    };
    var opts = $.extend(defaults,options);
    var navTop = $(opts.StartClass).offset().top;
    $(window).scroll(function(){
        var scroTop = $(this).scrollTop();
        var BarObj=$(opts.BarClass);
        var isExistFixed = BarObj.hasClass(opts.OpenClass);
        if($(opts.EndClass).length < 1){
            if (scroTop >= navTop) {
                if (!isExistFixed) {
                    BarObj.addClass(opts.OpenClass);
                }
            } else {
                if (isExistFixed) {
                    BarObj.removeClass(opts.OpenClass);
                }
            }
        }else{
            var navBottom = $(opts.EndClass).offset().top;
            if (scroTop >= navTop && scroTop < (navBottom - 51)){
                if (!isExistFixed){
                    BarObj.addClass(opts.OpenClass);
                }
            } else {
                if (isExistFixed){
                    BarObj.removeClass(opts.OpenClass);
                }
            }
        }
    });

};
/*
 倒计时
 clockClass:".jumpTo",
 secs:"5",
 surl:"hp://www.piseneasy.com/",
 showTime:是否展示过程
 showClass:展示过程的盒子
 */
UI.countDown=function(options){
    var defaults ={
        clockClass:".jumpTo",
        secs:"5",
        endFn:null
    };
    var opts = $.extend(defaults,options);
    var jumpTo = $(opts.clockClass);
    time=parseInt(opts.secs);
    timesetp();
    function timesetp(){
        jumpTo.html(time);
        if(--time >= 0){
            setTimeout(function () {
                timesetp();
            }, 1000);
        }else{
            if($.isFunction(opts.endFn)){
                opts.endFn();
            }
        }
    }
};

//页面初加载弹出
UI.webLoadShow = function(){
    var globalMask = '<div class="globalMask" style="width: 100%;height: 100%;position: fixed;top: 0;left: 0;background-color: #fff;opacity: 0.4;filter:alpha(opacity=40);z-index: 9999;"></div>';
    var htmlTemplate =  '<div class="scanCodeWindow">'+
                            '<div class="scan_t">'+
                                '<h2>千机团PC端</h2>'+
                                '<h2>正在努力优化中</h2>'+
                            '</div>'+
                            '<div class="scan_b">'+
                                '<div class="b_t">'+
                                    '<h2>请您扫下方二维码</h2>'+
                                    '<h2>进入千机团微商城采购</h2>'+
                                '</div>'+
                                '<div class="QRCode">'+
                                    '<img src="../Images/Img/scanCodeImg.png" alt=""/>'+
                                    '<p class="introWord">全网低价 超值优惠等你来拿</p>'+
                                '</div>'+
                                '<div><a class="scanCodeBtn" href="javascript:void(0)"></a></div>'+
                            '</div>'+
                        '</div>';
    if($('.globalMask').length<=0) {
        $('body').append(globalMask);
    }
    $('body').append(htmlTemplate);
    var left = -$('.scanCodeWindow').width()/2;
    var top = -$('.scanCodeWindow').height()/2;
    $('.scanCodeWindow').css({
        marginTop:top,
        marginLeft:left
    });
    $('.scanCodeBtn').bind('click',function(){
        $('.globalMask').remove();
        $('.scanCodeWindow').remove();
    })

};
