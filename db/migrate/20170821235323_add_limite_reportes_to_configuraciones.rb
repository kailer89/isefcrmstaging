class AddLimiteReportesToConfiguraciones < ActiveRecord::Migration
  def change
    add_column :configuraciones, :LimiteReportes, :integer
  end
end
