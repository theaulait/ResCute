module SessionsHelper

# Helper for defining the user during login
  def log_in(user)
    session[:id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end

  def logged_in?
    !current_user.nil?
  end
end
