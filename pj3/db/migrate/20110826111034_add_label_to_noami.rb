class AddLabelToNoami < ActiveRecord::Migration
  def self.up
    add_column :noamis, :label, :string
    add_column :noamis, :selected, :bool
  end

  def self.down
    remove_column :noamis, :selected
    remove_column :noamis, :label
  end
end
