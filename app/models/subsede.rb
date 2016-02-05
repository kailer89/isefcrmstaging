class Subsede < ActiveRecord::Base
	belongs_to :sede
	belongs_to :ineres_basico
	belongs_to :prospecto
end
