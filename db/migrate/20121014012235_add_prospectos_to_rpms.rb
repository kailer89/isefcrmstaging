class AddProspectosToRpms < ActiveRecord::Migration
  def change
    add_column :rpms, :prospectos, :string
    add_column :rpms, :usuarios, :string
    add_column :rpms, :sedes, :string
    add_column :rpms, :subsedes, :string
    add_column :rpms, :programas, :string
    add_column :rpms, :campanas, :string
    add_column :rpms, :rango_inicio, :date
    add_column :rpms, :rango_fin, :date

  end
end
