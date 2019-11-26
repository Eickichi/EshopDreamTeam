class AvatarsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user = avatar.attach(params[:avatar])
    flash[:success]="Avatar crée"
    redirect_to(user_path(@user))
  end
end
