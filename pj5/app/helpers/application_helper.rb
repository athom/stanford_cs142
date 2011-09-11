module ApplicationHelper
  def greeting
    u = current_user
    u ? 'hi, ' + u.first_name + '! Logout' : 'Login'
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
end

