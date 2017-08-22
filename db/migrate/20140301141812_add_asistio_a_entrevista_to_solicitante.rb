class AddAsistioAEntrevistaToSolicitante < ActiveRecord::Migration
  def change
    add_column :solicitantes, :asistio_a_entrevista, :boolean
    add_column :solicitantes, :nueva_fecha_para_entrevista, :date
    add_column :solicitantes, :nueva_hora_para_entrevista, :time
  end
end
