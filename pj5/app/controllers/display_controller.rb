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

  def newComment
    u = current_user
    if u
      @photo = Photo.find(params[:photo_id])
      @user = u
    else
      redirect_to("/user/login")
    end
  end

  def createComment
    #TODO to be improve
    cm = params[:comment]
    if cm.nil? or cm.empty?
      flash[:alert] = "comment must not be empty!"
      redirect_to :action => :newComment, :photo_id => params[:photo_id]
      return
    end
    
    comment = Comment.new(:date_time => DateTime.current,
        :comment => params[:comment])
    comment.user_id = params[:user_id]
    comment.photo_id = params[:photo_id]
    respond_to do |fm|
      if comment.save
        fm.html{redirect_to :action => :showUser}
      else
        fm.html{redirect_to :action => :newComment}
      end
    end
  end

  def newPhoto
    u = current_user
    if u
      @user = u
    else
      redirect_to("/user/login")
    end
  end

  def getFileName(filename)  
    if !filename.nil?  
      Time.now.strftime("%Y_%m_%d_%H_%M_%S") + '_' + filename  
    end  
  end 

  def uploadFile(file)  
    if !file.original_filename.empty?  
      filename=getFileName(file.original_filename)   
      File.open("#{RAILS_ROOT}/public/images/#{filename}", "wb") do |f|  
        f.write(file.read)  
      end  
      return filename  
    end  
  end

  def uploadPhoto
    file = params[:file]
    if file
      puts params[:user_id]
      filename = uploadFile(file)
      if filename
        photo = Photo.new(:date_time => DateTime.current,
                          :file_name => filename)
        photo.user_id = params[:user_id]

        respond_to do |fm|
          if photo.save
            #fm.html{redirect_to :action => :showUser}
            fm.html{redirect_to "/pics/user/" + photo.user_id.to_s}
          else
            fm.html{redirect_to :action => :newPhoto}
          end
        end
      end
    else
      flash[:alert] = "please select the a file"
      redirect_to :action => :newPhoto
    end
  end
end
