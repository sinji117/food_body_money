class FoodsController < ApplicationController
  # @user = User.find(params[:user_id])

  def index
    @food = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def food_params
    params.require(:food).permit(:image, :product, :calorie, :price, :ingredient, :explanation).merge(user_id: current_user.id)
  end
end
