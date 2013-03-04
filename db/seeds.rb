User.delete_all
Food.delete_all
Meal.delete_all

u1 = User.create(:name => 'Tony Contreras', :email => 'tony.contreras@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1800 )
u2 = User.create(:name => 'Aly Foley', :email => 'alyfc33@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1200 )
u3 = User.create(:name => 'Olivia Contreras', :email => 'olivia@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1400 )
u4 = User.create(:name => 'Lulu Contreras', :email => 'lulu@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1400 )

f1 = Food.create(:name => 'Apple', :calories => 50, :image => 'http://turkeyknobapples.com/media/catalog/product/cache/1/small_image/300x/17f82f742ffe127f42dca9de82fb58b1/a/p/apple-photographs-2009-151.jpg' )
f2 = Food.create(:name => 'Hamburger', :calories => 800, :image => 'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=9394608' )
f3 = Food.create(:name => 'Salad', :calories => 70, :image => 'http://img4-2.myrecipes.timeinc.net/i/recipes/ay/05/chefs-salad-ay-1875199-l.jpg' )
f4 = Food.create(:name => 'Bowl of pasta', :calories => 300, :image => 'http://img4-2.myrecipes.timeinc.net/i/recipes/sl/04/04/pasta-pecans-sl-600736-l.jpg' )
f5 = Food.create(:name => 'Chicken breast', :calories => 250, :image => 'http://img4-1.myrecipes.timeinc.net/i/recipes/ck/10/09/pan-fried-chicken-ck-l.jpg' )
f6 = Food.create(:name => 'Toast with avocado', :calories => 125, :image => 'http://healthyaperture.com/recipes/avocado-toast-300x300.jpg' )

m1 = Meal.create(:name => 'Lunch', :description => 'Monday lunch', :meal_date => '2012/02/28', :meal_time => '12:00')
m2 = Meal.create(:name => 'Pig out!', :description => 'At The Harrison restaurant', :meal_date => '2012/03/06', :meal_time => '19:00')
m3 = Meal.create(:name => 'Breakfast', :description => 'Post exercise', :meal_date => '2012/03/06', :meal_time => '08:00')
m4 = Meal.create(:name => 'Snack1', :description => 'early afternoon', :meal_date => '2012/03/06', :meal_time => '14:00')

u1.meals << m1
u1.meals << m2
u1.meals << m3
u2.meals << m3
u3.meals << m4
u4.meals << m4

m1.foods << f2
m2.foods = [f1,f2,f3,f4,f5,f6]
m3.foods << f6
m4.foods << f1