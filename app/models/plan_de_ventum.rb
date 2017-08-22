class PlanDeVentum < ActiveRecord::Base
	has_many :sedes
	has_many :prospectos
end
