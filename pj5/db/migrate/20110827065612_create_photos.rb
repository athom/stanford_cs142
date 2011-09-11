class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      #t.integer :user_id
      t.integer :user_id, :null => false, :options =>
      "CONSTRAINT fk_photos_users REFERENCES users(id)"
      t.datetime :date_time
      t.string :file_name

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
