$("div[data-link]").on( "click", function() {
  window.location = $(this).data("link");
});