document.addEventListener("turbolinks:load", function() {
    $(function(){
        $(".me_icon").on('click',function(){
            /*クリックでコンテンツを開閉*/
            $(".header-nav-menu").slideToggle(200);
        })
    })
});