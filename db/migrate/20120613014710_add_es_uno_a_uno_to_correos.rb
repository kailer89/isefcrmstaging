class AddEsUnoAUnoToCorreos < ActiveRecord::Migration
  def change
    add_column :correos, :es_uno_a_uno, :boolean
  end
end
