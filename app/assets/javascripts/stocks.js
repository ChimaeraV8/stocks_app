$(function(){
  $("a.header-menu").hover(
    function(){
      $(this).css("color","#eeeeee"),
      $(this).css("background-color","#878183")
    },
    function(){
      $(this).css("color","#444444"),
      $(this).css("background-color","#eeeeee")
    });
});

$(function(){
  $(".delete-link").onclick(
    function(){
      if(!confirm('本当に削除しますか？')){
        return false;
      }else{
        location.href="/stocks/#{stock.id}";
      }
  })
});