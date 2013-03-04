$(function() {
  $('#show_form').click(show_form);
  $('#hide_form').click(hide_form);
  $('#datepicker').datepicker();
  $('#create_meal').click(create_meal);
  $('#food_picker').click(show_foods);
  $('#foods').on('click', 'img', add_food_item);
  $('#done_adding_foods').click(add_foods_array);

});

var foodsArray = [];

function show_form()
{
  $('.form').removeClass('hide');
}

function hide_form()
{
  $('.form').addClass('hide');
}

function create_meal()
{
  var name = $('#name').val();
  var description = $('#description').val();
  var food_picker = $('#food_picker').val();
  var meal_date = $('#datepicker').val();
  var meal_time = $('#meal_time').val();
  var token = $('input[name=authenticity_token]').val();
  var meal_id = $('#meal_id').val();

     $.ajax({
      dataType: 'json',
      type: "POST",
      url: "/meals",
      data: { id:meal_id, authenticity_token: token, name:name, description:description, food_picker:food_picker, meal_date:meal_date, meal_time:meal_time}
    }).done(display_meal);

    return false;
}

function display_meal(message)
{
  var meal_date = message.meal_date;
  var name = message.name;
  var food_images = message.food_images;
  var total_cals = message.total_cals;
  add_meal_to_table(meal_date, name, food_images, total_cals);
  console.log("message :" + message);
}

function add_meal_to_table(meal_date, name,food_images, total_cals)
{

  $('.meals tr').last().after('<tr><td>'+ meal_date +'</td><td>'+ name +'</td><td>'+ food_images +'</td><td>'+ total_cals +'</td></tr>');


  hide_form();
}

function show_foods()
{
  $('#foods').reveal();
}

function add_food_item()
{
  var food_item = $(this);
  var food_id = food_item.attr('alt');
  foodsArray.push(food_id);
  food_item.addClass('selected');
}

function add_foods_array()
{
  console.log('foods array ' + foodsArray);
  $('#food_picker').val(foodsArray);
}