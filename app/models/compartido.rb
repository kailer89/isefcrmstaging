class Compartido < ActiveRecord::Base
	belongs_to :solicitante
	belongs_to :prospecto
end
