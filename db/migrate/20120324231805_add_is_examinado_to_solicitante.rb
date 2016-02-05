class AddIsExaminadoToSolicitante < ActiveRecord::Migration
  def change
    add_column :solicitantes, :isexaminado, :boolean
  end
end
