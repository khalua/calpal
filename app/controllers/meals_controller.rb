class MealsController < ApplicationController
  def index
    @meals = Meals.all
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
    @meal = Meal.new(params[:meal])
  end

  def update
    meal = Meal.find([:id])
    @meal.update_attributes
  end

  def destroy
    meal = Meal.find([:id])
    meal.delete
    redirect_to(meals)
  end


end