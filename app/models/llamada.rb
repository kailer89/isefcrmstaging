class Llamada < ActiveRecord::Base
	belongs_to :user
	belongs_to :sede
	
	default_value_for :tiempo_de_inicio do
    Time.new.beginning_of_day
	end
	default_value_for :tiempo_de_fin do
    Time.new.beginning_of_day
	end
end
