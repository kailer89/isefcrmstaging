class AddBlankToPlanDeDescuentos < ActiveRecord::Migration
  def change
    add_column :plan_de_descuentos, :blank, :string
  end
end
