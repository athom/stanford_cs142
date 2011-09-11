class CombineLoginInUsers < ActiveRecord::Migration
  def self.up
    User.all.each do |u|
      if u.login.nil?
        u.update_attribute :login, u.last_name.downcase
      end
    end
  end

  def self.down
    User.all.each do |u|
      unless u.login.nil?
        u.update_attribute :login, ''
      end
    end
  end
end
