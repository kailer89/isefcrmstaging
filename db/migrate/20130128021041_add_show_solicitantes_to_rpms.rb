class AddShowSolicitantesToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :show_solicitantes, :boolean
    add_column :rpms, :show_examinados, :boolean
    add_column :rpms, :show_admitidos, :boolean
    add_column :rpms, :show_inscritos, :boolean
  end
end
