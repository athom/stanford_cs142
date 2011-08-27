class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      #t.integer :photo_id
      #t.integer :user_id
      t.integer :photo_id, :null => false, :options =>
      "CONSTRAINT fk_comments_photos REFERENCES photos(id)"
      t.integer :user_id, :null => false, :options =>
      "CONSTRAINT fk_comments_users REFERENCES users(id)"
      t.datetime :date_time
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
