class SessionController < ApplicationController
  def new
  end

  def login_or_logout
    if session[:user_id]
      session[:user_id] = nil
      destroy
    else
      redirect_to "/user/login"
      #create
    end
  end


  def create
    if user = User.authenticate(params[:login], params[:password])
      session[:user_id] = user.id

      flash[:notice] = "Login successfully!"
      redirect_to "/pics/user/" + user.id.to_s
    else
      session[:user_id] = nil
      flash[:alert] = "Invalid user/password conbination"
      redirect_to "/user/login"
    end
  end

  def destroy
    session[:user_id] = nil
      flash[:notice] = "Logged out"
    redirect_to "/user/login", :notice => "Logged out"
  end
end
