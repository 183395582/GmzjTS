/**
 * Created by pisen on 2016/3/1.
 */

$(function() {
	
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


//滚动展示
function autoScroll(obj){  
	$(obj).find("ul").animate({  
		marginTop : "-39px"  
	},500,function(){  
		$(this).css({marginTop : "0px"}).find("li:first").appendTo(this);  
	})  
}  


