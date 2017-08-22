class Rpm < ActiveRecord::Base
	serialize :prospectos
	serialize :usuarios
	serialize :sedes
	serialize :subsedes
	serialize :programas
	serialize :campanas

	serialize :sede_id
	serialize :subsede_id
	serialize :nivel_id

	serialize :nacionalidad_id
	serialize :ultimo_grado_de_estudio_id
	serialize :preparatoria_o_universidad_de_origen_id
	serialize :municipio_de_la_preparatoria_o_universidad_de_origen_id
	serialize :periodo_para_ingresar_id
	serialize :status_de_admision_id
	serialize :status_de_ese_id
	serialize :status_de_interes_de_prospecto_validado_id
	serialize :status_de_la_inscripcion_id
	serialize :status_de_la_notificacion_id
	serialize :status_de_pago_de_examen_de_admision_id
	serialize :status_de_pago_de_ese_id
	serialize :status_del_admitido_id
	serialize :status_del_examinado_paa_id
	serialize :status_del_pago_de_la_inscripcion_id
	serialize :status_del_tramite_de_beca_id
	serialize :tipo_de_admision_id
	serialize :turno_id
	serialize :modalidad_id
	serialize :grupo_id
	serialize :status_ref_pago_inscs_id
	serialize :status_del_examinado_psico_id
	serialize :status_del_examinado_entrevistum_id 	

	serialize :medio_de_contactos_id

	serialize :columnas
	serialize :columnas_seleccionadas

	validates_presence_of :rango_inicio
	validates_presence_of :rango_fin
	
end
