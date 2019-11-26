class UsersController < ApplicationController 
  
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user
  before_action :my_page, only: [:show]
 
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  
end
