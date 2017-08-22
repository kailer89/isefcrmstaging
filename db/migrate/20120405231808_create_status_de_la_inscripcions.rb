class CreateStatusDeLaInscripcions < ActiveRecord::Migration
  def change
    create_table :status_de_la_inscripcions do |t|
      t.string :valor

      t.timestamps
    end
  end
end
