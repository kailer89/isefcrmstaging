class AddBlankToAccionEstrtegicas < ActiveRecord::Migration
  def change
    add_column :accion_estrategicas, :blank, :string
  end
end
