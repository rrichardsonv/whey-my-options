module SessionsHelper
  def current_user
    # @current_user ||= User.find_by(id: session[:user_id])
    @current_user ||= User.find(1)
  end

  def logged_in?
    !!current_user
  end

  def set_user(user)
    @user = User.find_by(facebook_uuid: login_deetz)
    if !!@user
      session[:user_id] = @user.id
    else
      @user = User.create(facebook_uuid: login_deetz)
      session[:user_id] = @user.id
    end
  end
end
