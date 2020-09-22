class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @food = Food.where("created_at >= ?", Date.today)
  end
end
