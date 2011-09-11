class UserController < ApplicationController
  def login
  end

  def user_register
    @user = User.new
    respond_to do |fm|
      fm.html
    end
  end

  def handle_registering

    @user = User.new(:login => params[:username], :first_name => params[:first_name], :last_name => params[:last_name])
    @user.hashed_password = @user.get_hashed_password(params[:password])
    
    if params[:password] != params[:confirm_password]
        flash[:alert] = "password must be the same!"
        render :action => "user_register" 
        return
    end

    respond_to do |fm|
      if @user.save
        fm.html { redirect_to("/pics/user/" + @user.id.to_s) }
      else
        fm.html { render :action => "user_register" }
      end
    end
  end
end
