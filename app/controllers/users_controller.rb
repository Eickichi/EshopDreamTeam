class UsersController < ApplicationController 
  has_one_attached :avatar

  def show
    @user = User.find(params[:id])
  end
end
