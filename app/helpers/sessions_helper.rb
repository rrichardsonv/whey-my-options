module SessionsHelper
  def current_user
    # @current_user ||= User.find_by(id: session[:user_id])
    @current_user ||= User.find(1)
  end

  def logged_in?
    !!current_user
  end

  def set_user(user)
    session[:user_id] = user.id
  end
end
