class AddPermalinkToRpms < ActiveRecord::Migration
  def self.up
    add_column :rpms, :permalink, :string
    add_index :rpms, :permalink
  end
  def self.down
    remove_column :rpms, :permalink
  end
end