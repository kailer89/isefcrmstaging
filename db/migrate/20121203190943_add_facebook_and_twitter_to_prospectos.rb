class AddFacebookAndTwitterToProspectos < ActiveRecord::Migration
  def change
    add_column :prospectos, :facebook, :string
    add_column :prospectos, :twitter, :string
  end
end
