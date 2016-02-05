class AddStatusDeInteresDeProspectoValidadoIdToInteresBasicos < ActiveRecord::Migration
  def change
    add_column :interes_basicos, :status_de_interes_de_prospecto_validado_id, :integer
  end
end
