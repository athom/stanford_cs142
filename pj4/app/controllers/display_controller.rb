class DisplayController < ApplicationController
  def allPhotos
  end

  def allUsers
    @users = User.all
  end

  def allComments
  end

  def showUser
    @photos = Photo.find(:all, :conditions => {:user_id => params[:id]})
  end
end
