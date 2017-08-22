class AddCreatedByToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :created_by, :integer
  end
end
