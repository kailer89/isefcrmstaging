class AddImportadoRevisadoToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :importado_revisado, :boolean
  end
end
