class CreateStatusDelPagoDeLaInscripcions < ActiveRecord::Migration
  def change
    create_table :status_del_pago_de_la_inscripcions do |t|
      t.string :valor

      t.timestamps
    end
  end
end
