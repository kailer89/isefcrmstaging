class Nivel < ActiveRecord::Base
	has_many :interes_basicos
	has_many :achievments
	has_many :oferta_educativa
	has_many :colegiatura
end
