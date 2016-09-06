/**
 * Created by pisen on 2017/7/15.
 */

$(function() {
    
    //头部手机版二维码
    $('.Phcode-Btn').hover(function(){
        $(this).next('.PhcodeBox').toggle();
    });
    
    $('.iosClick').click(function(){
    	$(this).parents('.PhcodeBox').children('.img-ios').show();
    	$(this).parents('.PhcodeBox').children('.img-android').hide();
    });
    $('.andClick').click(function(){
    	$(this).parents('.PhcodeBox').children('.img-ios').hide();
    	$(this).parents('.PhcodeBox').children('.img-android').show();
    })

    //右侧导航条鼠标移入效果
    $('.rightNav .centerItem .itemH a').hover(function(){
        $(this).siblings('.tags').css('left','-98px').stop(true,true).animate({
            zIndex:'10',
            left:'-92px',
            opacity:'1'
        },200)
    },function(){
        $(this).siblings('.tags').stop(true,true).animate({
            left:'-98px',
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