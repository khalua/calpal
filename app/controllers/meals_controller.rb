class MealsController < ApplicationController
  def index
    @meals = @auth.meals
    @foods = @auth.foods.uniq
  end

  def show
    @meals = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def create
    id = params[:id]
    name = params[:name]
    description = params[:description]
    foods = params[:food_picker]
    meal_date = params[:meal_date]
    meal_time = params[:meal_time]

    meal = Meal.create(:name => name, :description => description, :meal_time => meal_time, :meal_date => meal_date )
    @auth.meals << meal
    foods.split(',').each.map do |f|
      food = Food.find(f.to_i)
      meal.foods << food
    end

    render :json => meal.to_json(:methods => [:total_cals, :food_images])
  end

  def update
    meal = Meal.find([:id])
    meal.update_attributes
  end

  def destroy
    meal = Meal.find([:id])
    meal.delete
    redirect_to(meals)
  end


end