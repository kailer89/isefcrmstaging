class InteresBasico < ActiveRecord::Base
	belongs_to :prospecto
	belongs_to :ultimo_grado_de_estudio
	belongs_to :preparatoria_o_universidad_de_origen
	belongs_to :municipio_de_la_preparatoria_o_universidad_de_origen
	belongs_to :sede
	belongs_to :programa_de_intere
	belongs_to :nivel
	belongs_to :turno
	belongs_to :periodo_para_ingresar
	belongs_to :status_de_interes_de_prospecto_validado
	belongs_to :subsede
	belongs_to :programa
	belongs_to :modalidad



  validate :subsede_is_in_selected_sede

private
def subsede_is_in_selected_sede
  logger.debug "--------------------------------11111111111111111111111111111111111111111"
  logger.debug self.subsede.nil?
  #sede = Sede.where(:id=>self.interes_basicos.first.subsede.sede_id).first
if not self.subsede.nil?

	  subsede = Subsede.where(:id=>self.subsede.id).where(:sede_id=>self.sede.id).first
	  if subsede == nil
	  	sedeCorrecta = Sede.where(:id=>self.subsede.sede_id).first
	    errors.add :sede_id, "La Extension de la sede no es valida por favor seleccione la correcta: " + sedeCorrecta.nombre
	  end
	end
end

end
