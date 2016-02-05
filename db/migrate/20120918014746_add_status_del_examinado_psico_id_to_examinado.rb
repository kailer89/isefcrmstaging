class AddStatusDelExaminadoPsicoIdToExaminado < ActiveRecord::Migration
  def change
    add_column :examinados, :status_del_examinado_psico_id, :integer
  end
end
