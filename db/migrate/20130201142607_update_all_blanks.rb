class UpdateAllBlanks < ActiveRecord::Migration
  def up
  	Prospecto.update_all(:archivado => false)
  end

  def down
  end
end
