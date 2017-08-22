class ChangeRecords < ActiveRecord::Migration
  def up
  	Prospecto.update_all({:programa_id => 15}, ["created_by in (4)"])
  end

  def down
  end
end
