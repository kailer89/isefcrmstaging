class Programa < ActiveRecord::Base
	has_many :prospectos
	has_many :casos
	has_many :interes_basicos
	has_many :achievments
	has_many :oferta_educativa
	has_many :colegiatura

	# has attribute nivel:string
	# has attribute programa:string
end
