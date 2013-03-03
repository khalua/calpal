$(function() {
  $('#show_form').click(show_form);
  $('#hide_form').click(hide_form);
  $('#datepicker').datepicker();
});

function show_form()
{
  $('.form').removeClass('hide');
}

function hide_form()
{
  $('.form').addClass('hide');
}