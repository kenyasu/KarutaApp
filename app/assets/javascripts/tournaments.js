$(function() {
  $('.month-list .month').click(function() {
    var idmonth = $(this).attr("id");
    $('.month-list . month').removeClass('active');
    $(this).addClass('active');
  })
})
