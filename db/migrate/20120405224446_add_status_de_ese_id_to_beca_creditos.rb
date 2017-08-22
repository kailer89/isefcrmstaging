class AddStatusDeEseIdToBecaCreditos < ActiveRecord::Migration
  def change
    add_column :becacreditos, :status_de_ese_id, :integer
  end
end
