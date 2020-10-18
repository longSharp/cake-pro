/**
 * **************ajax请求处理函数**************
 */

 function provinCityType(data){
    data = JSON.parse(data);
    var html = template("navList", { data: data });
    $("#header .nav-list").html(html);
    addEle(data);
    
    var toggle = false;
    $("#header .nav-list li").mouseover(function () {
        if(!($("#header .search").is(".seach-active"))){
            var that = $(this);
            if (that.attr("data-type")) {
                $("#header .small-type").addClass("type-active");
                $("#header .small-type ul").hide();
                $("#header .small-type ul").each(function(){
                    if($(this).attr("data-type")==that.attr("data-type")){
                        $(this).show();
                        toggle = true;
                    }
                });
            }
        }
    }).mouseout(function(){
        if(toggle){
            $("#header .small-type").removeClass("type-active");
            $("#header .small-type").mouseover(function(){
                $(this).addClass("type-active");
            }).mouseout(function(){
                $(this).removeClass("type-active");
            });
        }
    });

    var flag = true;
    $("#header .icon .icon-search").click(function(){
        if(flag){
            $("#header .nav div.search").addClass("seach-active");
            flag = false;
        }else{
            $("#header .nav div.search").removeClass("seach-active");
            flag = true;
        }
    });

};

/**
 * **************页面元素操作函数**************
 */



/**
 * **************事件处理函数**************
 */

