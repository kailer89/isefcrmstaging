class AddStatusDelExaminadoPaaIdToExaminados < ActiveRecord::Migration
  def change
    add_column :examinados, :status_del_examinado_paa_id, :integer
  end
end
