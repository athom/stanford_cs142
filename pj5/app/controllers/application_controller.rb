class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery
  



  protected
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    #unless User.find_by_id(session[:login]) or  User.count.zero?
      #redirect_to 'user/login', :notice => "Please log in"
    #end
    
    #if User.count.zero?
      #if !(request.path_parameters[:controller] == 'users' and request.path_parameters[:action] == 'new')
        #if !(request.path_parameters[:controller] == 'users' and request.path_parameters[:action] == 'create')
          #redirect_to new_user_path, :notice => "Please create the first user account"
          ##flash[:notice] = "Please create the first user account"
        #end
      #end
    #end
  end

end



