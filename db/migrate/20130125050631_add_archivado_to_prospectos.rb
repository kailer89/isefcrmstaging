class AddArchivadoToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :archivado, :boolean
    add_column :solicitantes, :archivado, :boolean
    add_column :examinados, :archivado, :boolean
    add_column :admitidos, :archivado, :boolean
    add_column :inscritos, :archivado, :boolean
  end
end
