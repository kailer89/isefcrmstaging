class CreateStatusDeLaAccion1s < ActiveRecord::Migration
  def change
    create_table :status_de_la_accion_1s do |t|
      t.string :valor

      t.timestamps
    end
  end
end
