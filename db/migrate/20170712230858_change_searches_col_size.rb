class ChangeSearchesColSize < ActiveRecord::Migration
	def up
	    change_column :searches, :content, :text
	end
end
