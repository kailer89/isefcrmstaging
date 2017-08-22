class ChangeLimite < ActiveRecord::Migration
  def up
  	change_column :configuraciones, :LimiteReportes, :integer, :default => 50
  end
end
