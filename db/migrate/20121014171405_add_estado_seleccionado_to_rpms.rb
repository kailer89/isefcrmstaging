class AddEstadoSeleccionadoToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :estado_validado, :string
    add_column :rpms, :validado_inicio, :date
    add_column :rpms, :validado_fin, :date

    add_column :rpms, :estado_solicitante, :string
    add_column :rpms, :solicitante_inicio, :date
    add_column :rpms, :solicitante_fin, :date    

    add_column :rpms, :estado_examinado, :string
    add_column :rpms, :examinado_inicio, :date
    add_column :rpms, :examinado_fin, :date    

    add_column :rpms, :estado_admitido, :string
    add_column :rpms, :admitido_inicio, :date
    add_column :rpms, :admitido_fin, :date    

    add_column :rpms, :estado_inscrito, :string
    add_column :rpms, :inscrito_inicio, :date
    add_column :rpms, :inscrito_fin, :date    
  end
end
