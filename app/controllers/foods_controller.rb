class FoodsController < ApplicationController
  before_filter :check_if_logged_in

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end