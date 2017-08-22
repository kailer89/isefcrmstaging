class DropStatusDeLaAccion1s < ActiveRecord::Migration
  def up
  	drop_table :status_de_la_accion_1s
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
