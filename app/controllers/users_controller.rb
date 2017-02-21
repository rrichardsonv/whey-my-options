class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_deets)
    if @user.save
      redirect_to restaurants_path
    else
      flash[:alert] = "Incorrectly formatted"
    end
  end

  def user_deets
    params.require(:user).permit(:email, :password, :username)
  end
end
