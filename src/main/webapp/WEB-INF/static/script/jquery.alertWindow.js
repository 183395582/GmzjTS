/*
弹窗
 */
jQuery.extend({
    alertWindow:function(useImg,title,content){
        var useImg = useImg; //图片
        var title = title; //标题
        var content = content; //内容
        
        //查找body中是否存在该消息框
        if($("body").find(".alertWindow1").length===0){
       	var alertHtml = '<div  class="alertWindow1">'+
                                '<div class="windowBox">'+
                                    '<div class="closeBtnbox">'+
                                        '<div class="alertWindowCloseButton1">X</div>'+
                                    '</div>'+
                                    '<div class="alertWindowImg"><img src='+useImg+'></div>'+
                                    '<div class="alertWindowTitle">'+title+'</div>'+
                                    '<div class="alertWindowContent">'+content+'</div>'+
                                    //'<p><input class="alertWindowCloseSure1" type="button" value="确定"></p>'+
                                '</div>'+
                           '</div>';
            $("body").append(alertHtml);
            /*绑定事件*/
            var $alertWindow = $(".alertWindow1"); //窗口对象
            //右上角关闭按钮
            $(".alertWindowCloseButton1").click(function(){
                $alertWindow.hide();
            });
            //确定按钮
            $(".alertWindowCloseSure1").click(function(){
                $alertWindow.hide();
            });
        }else{
        //存在
         	//设置图片
            $(".alertWindowImg img").attr('src',useImg);
            //设置标题
            $(".alertWindowTitle").text(title);
            //设置内容
            $(".alertWindowContent").text(content);
            //显示
            $(".alertWindow1").show();
        }
    }
});