$("div[data-link]").on( "click", function() {
  window.location = $(this).data("link");
});


// $('.user_icon').hover(function() {
//     $(this).find('li.user_items').show(200);
// }, function(){
//     $(this).find('li.user_items').hide(400);
// });

$(document).on('click', '.user_icon', function (e) {
  $(this).find('li.user_items').toggle(200);
});


