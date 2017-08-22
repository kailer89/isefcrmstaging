class AddStatusDeLaInscripcionIdToInscritos < ActiveRecord::Migration
  def change
    add_column :inscritos, :status_de_la_inscripcion_id, :integer
  end
end
