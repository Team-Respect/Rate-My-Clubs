$("div[data-link]").on( "click", function() {
  window.location = $(this).data("link");
});


$(document).on('click', '.user_icon', function (e) {
  $(this).find('li.user_items').toggle(200);
});


