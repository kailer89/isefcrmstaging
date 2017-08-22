class Inscrito < ActiveRecord::Base
	has_many :admitidos

	has_many :examinados, through: :admitidos

	#seccion de search de solicitantes
	has_many :solicitantes, through: :examinados
	has_many :becacreditos, through: :solicitantes

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


	belongs_to :status_de_la_inscripcion
	belongs_to :status_del_pago_de_la_inscripcion
	accepts_nested_attributes_for :admitidos, :reject_if => :all_blank, :allow_destroy => true	
	has_paper_trail
end
