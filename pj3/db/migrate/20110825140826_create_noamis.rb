class CreateNoamis < ActiveRecord::Migration
  def self.up
    create_table :noamis do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :noamis
  end
end
