class AddDuracionTextoToLlamada < ActiveRecord::Migration
  def change
  	add_column :llamadas, :duracion_texto, :string
  end
end
