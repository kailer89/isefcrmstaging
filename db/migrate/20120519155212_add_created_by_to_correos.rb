class AddCreatedByToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :created_by, :integer
  end
end
