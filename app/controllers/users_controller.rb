class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @vegetables = current_user.vegetables
  end
end
