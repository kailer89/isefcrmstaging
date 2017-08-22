class AddBlankToBecaCredito < ActiveRecord::Migration
  def change
    add_column :becacreditos, :blank, :string
  end
end
