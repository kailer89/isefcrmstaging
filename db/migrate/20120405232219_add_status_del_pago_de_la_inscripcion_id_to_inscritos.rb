class AddStatusDelPagoDeLaInscripcionIdToInscritos < ActiveRecord::Migration
  def change
    add_column :inscritos, :status_del_pago_de_la_inscripcion_id, :integer
  end
end
