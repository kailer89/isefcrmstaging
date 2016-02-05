class AddPorPaginaToReport < ActiveRecord::Migration
  def change
    add_column :reports, :por_pagina, :integer
  end
end
