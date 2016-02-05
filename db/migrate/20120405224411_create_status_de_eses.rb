class CreateStatusDeEses < ActiveRecord::Migration
  def change
    create_table :status_de_eses do |t|
      t.string :valor

      t.timestamps
    end
  end
end
