class Turno < ActiveRecord::Base
	has_many :interes_basicos
	has_many :achievments
end
