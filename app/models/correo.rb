class Correo < ActiveRecord::Base
	belongs_to :user
	belongs_to :sede
	belongs_to :campana_social
	belongs_to :grupo
	serialize :a_quien_enviarle_correo
	serialize :por_estado
end
