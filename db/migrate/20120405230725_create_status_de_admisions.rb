class CreateStatusDeAdmisions < ActiveRecord::Migration
  def change
    create_table :status_de_admisions do |t|
      t.string :valor

      t.timestamps
    end
  end
end
