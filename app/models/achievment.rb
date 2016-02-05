class Achievment < ActiveRecord::Base
	belongs_to :user
	belongs_to :sede
	belongs_to :nivel
	belongs_to :programa
	belongs_to :turno
	belongs_to :modalidad
end
