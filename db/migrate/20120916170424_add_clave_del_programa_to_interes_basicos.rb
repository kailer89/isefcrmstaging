class AddClaveDelProgramaToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :clave_del_programa, :string
  end
end
