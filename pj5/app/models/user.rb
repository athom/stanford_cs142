require 'digest/sha2'

class User < ActiveRecord::Base
  has_many :photos
  has_many :comments

  validates :login, :hashed_password, :salt, :first_name, :last_name,  :presence => true
  validates :login,:uniqueness => true

  def User.authenticate(u_name, password)
    User.all.each do |u|
      if u.login == u_name and u.hashed_password == u.encrypt_password(password, u.salt)
        return u
      end
    end
    return nil
  end

  def get_hashed_password(password)
    if password.present?
      salt = generate_salt
      encrypt_password(password, salt)
    end
  end

  def encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + "wibble" + salt)
  end
  private

  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
end
