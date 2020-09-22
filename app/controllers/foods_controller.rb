class FoodsController < ApplicationController
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

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to food_path
    else
      render :edit
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def destroy
    @food = Food.find(params[:id])
    if @food.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def food_params
    params.require(:food).permit(:image, :product, :calorie, :price, :ingredient, :explanation, :start_time).merge(user_id: current_user.id)
  end
end
