class AddAquienEnviarleCorreoToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :a_quien_enviarle_correo, :text
  end
end
