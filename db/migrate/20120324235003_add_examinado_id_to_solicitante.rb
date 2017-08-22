class AddExaminadoIdToSolicitante < ActiveRecord::Migration
  def change
    add_column :solicitantes, :examinado_id, :integer
  end
end
