class UsersController < ApplicationController
  def index
    @users = User.all
    @food = Food.all
  end

  def new
    @user = User.new
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

  def create
    User.create(user_parameter)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice:"削除しました"
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_parameter)
      redirect_to users_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

end
