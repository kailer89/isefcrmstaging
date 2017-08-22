class Examinado < ActiveRecord::Base
	

	#seccion de search de prospectos
	has_many :prospectos, through: :solicitantes
	has_many :nacionalidad, through: :prospectos
	has_many :user, through: :prospectos
	has_many :sede, through: :prospectos
	has_many :subsede, through: :prospectos
	has_many :mercado_metum, through: :prospectos
	has_many :territorio, through: :prospectos
	has_many :plan_de_ventum, through: :prospectos
	has_many :programa, through: :prospectos
	has_many :grupo, through: :prospectos

	has_many :medio_de_contactos, through: :prospectos
	has_many :interes_basicos, through: :prospectos
	has_many :interes_academicos, through: :prospectos
	has_many :accion_estrategicas, through: :prospectos
	has_many :plan_de_descuentos, through: :prospectos



	#seccion de search de solicitantes
	has_many :solicitantes, :dependent => :destroy
	has_many :becacreditos, through: :solicitantes

	belongs_to :admitido
	belongs_to :status_del_examinado_paa
	belongs_to :status_del_examinado_psico
	belongs_to :status_del_examinado_entrevistum
	
	
	accepts_nested_attributes_for :solicitantes, :reject_if => :all_blank, :allow_destroy => true
	has_paper_trail
end
