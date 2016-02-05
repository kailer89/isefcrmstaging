class AddStatusDelTramiteDeBecaIdToBecacreditos < ActiveRecord::Migration
  def change
    add_column :becacreditos, :status_del_tramite_de_beca_id, :integer
  end
end
