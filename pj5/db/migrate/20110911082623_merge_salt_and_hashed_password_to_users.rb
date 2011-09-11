class MergeSaltAndHashedPasswordToUsers < ActiveRecord::Migration
  def self.up
    User.all.each do |u|
      if u.hashed_password.nil?
        u.update_attribute :hashed_password, u.get_hashed_password('000000')
        u.update_attribute :salt, u.salt
      end
    end
  end

  def self.down
    User.all.each do |u|
      unless u.hashed_passowrd.nil?
        u.update_attribute :hashed_password, ''
      end
    end
  end
end
