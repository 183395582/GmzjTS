/**
 * Created by pisen on 2016/3/1.
 */

$(function() {
	 //下拉选择
	$("#select-opt").selectpick({container:'.select-list',onSelect:function(value,text){
		enAble();
	}
	});
   
    //头部手机版二维码
    $('.Phcode-click').hover(function(){
    	$(this).find('.Phcode-Btn').toggleClass('active');
        $(this).children('.PhcodeBox').toggle();
    });
    
    $('.iosClick').click(function(){
    	$(this).parents('.PhcodeBox').children('.img-ios').show();
    	$(this).parents('.PhcodeBox').children('.img-android').hide();
    });
    $('.andClick').click(function(){
    	$(this).parents('.PhcodeBox').children('.img-ios').hide();
    	$(this).parents('.PhcodeBox').children('.img-android').show();
    })
     //客户服务
    $('.service-peo').hover(function(){
			if(!$('.servBtn').hasClass('white-serBtn')){
				$(this).find('.icon-up').hide();
				$(this).find('.icon-down').show();
			}else{
				$(this).find('.icon-up').show();
				$(this).find('.icon-down').hide();
			};
	    	$(this).find('.servBtn').toggleClass('white-serBtn');
	    	$(this).children('.serviceBox').toggle();
	});
		

    //右侧导航条鼠标移入效果
    $('.rightNav .centerItem .itemH a').hover(function(){
        $(this).siblings('.tags').css('left','-110px').stop(true,true).animate({
            zIndex:'10',
            left:'-110px',
            opacity:'1'
        },200)
    },function(){
        $(this).siblings('.tags').stop(true,true).animate({
            left:'-110px',
            opacity:'0'
        },200,function(){
            $(this).css({
                left:'0',
                zIndex:'-1'
            })
        })
    });
    //回到顶部
    $('.backToTop a').on('click',function(){
        $('html,body').animate({
            scrollTop:'0'
        },200)
    })
});


//分类鼠标鼠过
$(function(){
    $(".infoHove .item").hover(function(){
	   	$(this).find(".img-box").children(".star-hov").slideToggle("","linear");
	 });
});

//首页头部选择城市交互
$(function(){
    var changeCity = $('#changeCity');
    var citys = changeCity.find('.citys');
    citys.on('click',function(){
        $(this).closest('#changeCity').toggleClass('active');
    });
    UI.clickHide({fatherDiv: '#changeCity',clickFn:function(obj){
        $(obj).removeClass('active');
    }
    })
});




var QJTModal ={
    //确认订单点击下拉
    clickSlide:function(obj){
        obj.bind('click',function(){
            $(this).toggleClass('active');
            if($(this).hasClass('active')){
                $(this).closest('.slideHideBox').find('.selectAddr').stop(true,true).slideDown();
                $(this).find('.iconfont').removeClass('icon-xiangxia').addClass('icon-xiangshang');
            }else{
                $(this).closest('.slideHideBox').find('.selectAddr').stop(true,true).slideUp();
                $(this).find('.iconfont').removeClass('icon-xiangshang').addClass('icon-xiangxia');
            }
        })

    },
    //确认订单地址选择滚动
    addrSlideBox:function(){
        var slideUp = $('.slide-up');//向上滚动
        var slideDown = $('.slide-down');//向下滚动

        var nowPage = 1;
        //judgeDisabed(nowPage);
        slideDown.bind('click',function(){
            var addrSliderBox =$(this).closest('.selectAddr').find('.slideAddrBox');
            nowPage++;
            nowPage = judgePage(nowPage,$(this),true);
            judgeDisabed(nowPage,$(this));
            slideMove(addrSliderBox,nowPage)

        });
        slideUp.bind('click',function(){
            var addrSliderBox =$(this).closest('.selectAddr').find('.slideAddrBox');
            nowPage--;
            nowPage = judgePage(nowPage,$(this),false);
            judgeDisabed(nowPage,$(this));
            slideMove(addrSliderBox,nowPage)
        });
    },
    
    //购物车页面逻辑
    shopCartSelect: function () {
        var selectAll=$('.shopCartListBox .selectAll');//全选
        var selectBox=$('.shopCartListBox .selectBox');//单个选框
        var select_singlePro=$('.shopCartListBox .listBox .prolistBox .select_singlePro');//单个模块
        var selectBox_singlePor=select_singlePro.closest('.prolistBox').find('.proBody').find('li').find('.selectBox');
//    addClass
//    removeClass
//     选择交互
        selectBox.on('click',function(){
            $(this).toggleClass('active');
        });
        //全选反选
        selectAll.on('click',function(){
            var selectBox_allLen=$('.shopCartListBox .listBox .prolistBox .proBody .selectBox.active').length;
            var selectBox_singleAll=$('.shopCartListBox .listBox .prolistBox .proBody .selectBox').length;
            console.log(selectBox_allLen+'+'+selectBox_singleAll);
            if(selectBox_allLen!=selectBox_singleAll){
                selectBox.addClass('active');
            }else{
                selectBox.removeClass('active');
            }
        });
        //模块正选
        select_singlePro.on('click',function(){
            if($(this).hasClass('active')){
                $(this).closest('.prolistBox').find('.proBody').find('li').find('.selectBox').addClass('active');
            }else{
                $(this).closest('.prolistBox').find('.proBody').find('li').find('.selectBox').removeClass('active');
            }
            var select_singlePro_activelen=$(this).closest('.listBody').find('.prolistBox').find('.select_singlePro.active').length;
            var prolistBoxlen=$('.shopCartListBox .listBox .prolistBox').length;

            if(select_singlePro_activelen==prolistBoxlen){
                selectAll.find('.selectBox').addClass('active');
            }else{
                selectAll.find('.selectBox').removeClass('active');
            }
        });
        //模块反选
        selectBox_singlePor.on('click',function(){
            var selectBox_singlePorlen=$(this).closest('.prolistBox').find('.proBody').find('li').find('.selectBox.active').length;
            var lilen=$(this).closest('.prolistBox').find('.proBody').find('li').length;
            if(selectBox_singlePorlen==lilen){
                $(this).closest('.prolistBox').find('.select_singlePro').addClass('active');
            }else{
                $(this).closest('.prolistBox').find('.select_singlePro').removeClass('active');
                selectAll.find('.selectBox').removeClass('active');
            }
            var selectBox_singlePorAll=select_singlePro.closest('.prolistBox').find('.proBody').find('li').find('.selectBox.active').length;
            var selectBox_singleAll=$('.shopCartListBox .listBox .prolistBox .proBody .selectBox').length;
            if(selectBox_singlePorAll==selectBox_singleAll){
                selectAll.find('.selectBox').addClass('active');
            }else{
                selectAll.find('.selectBox').removeClass('active');
            }
        })
    },

    //优惠劵下拉
    couponChoiceBox:function(obj){
        obj.bind('click',function(){
            $(this).toggleClass('opened');
            if($(this).hasClass('opened')){
                $(this).find('.arrowB').find('.iconfont').removeClass('icon-xiangxia').addClass('icon-xiangshang');
                $('#couponBox').stop(true,true).slideDown();
            }else{
                $(this).find('.arrowB').find('.iconfont').removeClass('icon-xiangshang').addClass('icon-xiangxia');
                $('#couponBox').stop(true,true).slideUp();
            }
        })
    },
    //input移入交互（登陆注册）
    inputBlur:function(){
        $('.loginFormBox').find('.loginInp').find('input').focus(function(){
            $(this).closest('.loginInp').find('.loginTag').find('.iconfont').css({
                color:'#ff6a00'
            })
        });
        $('.loginFormBox').find('.loginInp').find('input').blur(function(){
            $(this).closest('.loginInp').find('.loginTag').find('.iconfont').css({
                color:'#ddd'
            })
        });

        $('.loginFormBox').find('.loginInp').find('input').bind("input propertychange",function(){
            if($(this).val().length) {
                $(this).closest('.loginInp').find('.delBtn').stop(true,true).fadeIn();
            }else{
                $(this).closest('.loginInp').find('.delBtn').stop(true,true).fadeOut()
            }
        });
        $('.loginFormBox').find('.loginInp').find('.delBtn').on('click',function(){
            $(this).closest('.loginInp').find('input').val('');
            $(this).stop(true,true).fadeOut()
        })
    },
    //input文字实时删除
    changeInput:function(){
        $(".changeCodeTable input").each(function(i){
            if($(".changeCodeTable input").eq(i).val().length){
                $(".changeCodeTable input").eq(i).closest('.pwdInpBox').find('.delBtn').css('display','block')
            }else{
                $(".changeCodeTable input").eq(i).closest('.pwdInpBox').find('.delBtn').css('display','none')
            }
        });
        $(".changeCodeTable input").bind("input propertychange",function(){
            if($(this).val().length) {
                $(this).closest('.pwdInpBox').find('.delBtn').stop(true,true).fadeIn();

            }else{
                $(this).closest('.pwdInpBox').find('.delBtn').stop(true,true).fadeOut()
            }
        });
        $('.delBtn').on('click',function(){
            $(this).closest('.pwdInpBox').removeClass('error').find('input').val('');
            $(this).stop(true,true).fadeOut()
        })
    },
    

    //联动菜单交互
    listSlide:function(){
        $('.select-main').bind('click',function(){
            $(this).find('.select-arrow').toggleClass('reverse');
            var thisObj=$(this);
            UI.clickHide({
                    fatherDiv:$(this),
                    clickFn: function () {
                        thisObj.find('.select-block').stop(true,true).slideUp();
                        thisObj.find('.select-arrow').removeClass('reverse');
                    }
                });

            if($(this).find('.select-arrow').hasClass('reverse')){
                $(this).find('.select-block').stop(true,true).slideDown(100);

            }else{
                $(this).find('.select-block').stop(true,true).slideUp(100);
            }
        })

    }
};
/*
 * textare 文字计数
 */
function countTextAreaNum(textArea,maxItem,numItem) {
    var max = maxItem.text(),
        curLength;
    maxItem.text(max);
    textArea.on('input propertychange', function () {
        var thislen = reld($(this).val()).length;
        var lenD = $(this).val().length-thislen;
        if(thislen<=max){
            numItem.text(thislen);
        }else{
            $(this).val($(this).val().substring(0,(parseInt(max)+parseInt(lenD))));
            numItem.text(max);
        }
    });
}
//正则 去空格和换行
function reld(obj){
    return obj.replace(/\ +/g,"").replace(/[ ]/g,"").replace(/[\r\n]/g,"")
}
