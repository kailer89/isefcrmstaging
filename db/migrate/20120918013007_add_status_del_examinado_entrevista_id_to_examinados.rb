class AddStatusDelExaminadoEntrevistaIdToExaminados < ActiveRecord::Migration
  def change
    add_column :examinados, :status_del_examinado_entrevista_id, :integer
  end
end
