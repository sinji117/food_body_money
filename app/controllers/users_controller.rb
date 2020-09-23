class UsersController < ApplicationController
  def index
    #@food = Food.all
    @food = current_user.foods
  end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    #@food = Food.find(params[:food_id])
    #@food = user.foods
    @food = Food.all

    #@food = user.foods.where("created_at >= ?", Date.today)
    #@food = Food.where("created_at >= ?", Date.today)本日
  end
end
