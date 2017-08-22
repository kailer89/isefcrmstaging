class Tweet < ActiveRecord::Base
	belongs_to :tarea
	belongs_to :memo
	belongs_to :user
	belongs_to :sede	
end
