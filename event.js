$(function() {

  $("form.check").submit(function(event) {
      event.preventDefault();
      event.stopPropagation();

      var form = $(this)

      var request = $.ajax({
        url: form.attr("action"),
        method: form.attr("method")
      });

      request.done(function() {
        console.log("done!");
      });
    });
  
});
