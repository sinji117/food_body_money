class UsersController < ApplicationController
  def index
    @food = current_user.foods
  end
end
