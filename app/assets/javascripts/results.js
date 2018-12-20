$(document).on('turbolinks:load', function() {
  $(function() {
    $('input[name=game-type]').change(function() {
      var radioval = $(this).val();
      if (radioval == "14") {
        $('#inputtaikai').show();
      } else {
        $('#inputtaikai').hide();
      }
    })
  })
});
