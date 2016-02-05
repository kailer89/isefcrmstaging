class CreateEmploymentships < ActiveRecord::Migration
  def change
    create_table :employmentships do |t|
      t.integer :user_id
      t.integer :empleado_id

      t.timestamps
    end
  end
end
