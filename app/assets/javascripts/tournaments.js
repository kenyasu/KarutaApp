$(document).on('turbolinks:load', function() {
  $(function() {
    $('.month-list div').click(function() {
      var index = $('.month-list div').index($(this)) + 1;
      $('.month-list div').removeClass('active-m');
      $(this).addClass('active-m');
      $('.containers .container').removeClass('container-active');
      $('.containers .container#'+index).addClass('container-active');
    })
  })
});
