class Grupo < ActiveRecord::Base
	has_many :prospectos
	has_many :correos
end
