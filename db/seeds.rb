User.delete_all
Food.delete_all
Meal.delete_all

u1 = User.create(:name => 'Tony Contreras', :email => 'tony.contreras@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1800 )
u2 = User.create(:name => 'Aly Foley', :email => 'alyfc33@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1200 )
u3 = User.create(:name => 'Olivia Contreras', :email => 'olivia@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1400 )
u4 = User.create(:name => 'Lulu Contreras', :email => 'lulu@gmail.com', :password => 'abc', :password_confirmation => 'abc', :target => 1400 )

f1 = Food.create(:name => 'Apple', :calories => 50 )
f2 = Food.create(:name => 'Hamburger', :calories => 800 )
f3 = Food.create(:name => 'Salad', :calories => 70 )
f4 = Food.create(:name => 'Bowl of pasta', :calories => 300 )
f5 = Food.create(:name => 'Chicken breast', :calories => 250 )
f6 = Food.create(:name => 'Toast with avocado', :calories => 125 )

m1 = Meal.create(:name => 'Lunch', :description => 'Monday lunch', :eat_date => '2012/02/28', :eat_time => '12:00')
m2 = Meal.create(:name => 'Dinner', :description => 'At The Harrison restaurant', :eat_date => '2012/03/06', :eat_time => '19:00')
m3 = Meal.create(:name => 'Breakfast', :description => 'Post exercise', :eat_date => '2012/03/06', :eat_time => '08:00')
m4 = Meal.create(:name => 'Snack1', :description => 'early afternoon', :eat_date => '2012/03/06', :eat_time => '14:00')

u1.meals << m1
u1.meals << m2
u1.meals << m3
u2.meals << m3
u3.meals << m4
u4.meals << m4

m1.foods << f2
m2.foods << f4 << f5
m3.foods << f6
m4.foods << f1