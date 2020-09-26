class UsersController < ApplicationController
  def index
    @food = current_user.foods
  end

  def show
    @food = current_user.foods
  end

  def edit
    @food = current_user.foods
  end
end
