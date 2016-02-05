class AddUltimoGradoDeEstudiosIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :ultimo_grado_de_estudio_id, :integer
  end
end
