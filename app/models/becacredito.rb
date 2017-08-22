class Becacredito < ActiveRecord::Base
	belongs_to :solicitante
	belongs_to :status_de_ese
	belongs_to :status_de_pago_ese
	belongs_to :status_del_tramite_de_beca
end
