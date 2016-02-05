class RenameRpmFields < ActiveRecord::Migration
	def change
    change_column :rpms, :sede_id, :string
    change_column :rpms, :subsede_id, :string
    change_column :rpms, :nacionalidad_id, :string
    change_column :rpms, :ultimo_grado_de_estudio_id, :string
    change_column :rpms, :preparatoria_o_universidad_de_origen_id, :string
    change_column :rpms, :municipio_de_la_preparatoria_o_universidad_de_origen_id, :string
    change_column :rpms, :periodo_para_ingresar_id, :string
    change_column :rpms, :status_de_admision_id, :string
    change_column :rpms, :status_de_ese_id, :string
    change_column :rpms, :status_de_interes_de_prospecto_validado_id, :string
    change_column :rpms, :status_de_la_inscripcion_id, :string
	change_column :rpms, :status_de_la_notificacion_id, :string
    change_column :rpms, :status_de_pago_de_examen_de_admision_id, :string
    change_column :rpms, :status_de_pago_de_ese_id, :string
    change_column :rpms, :status_del_admitido_id, :string
    change_column :rpms, :status_del_examinado_paa_id, :string
    change_column :rpms, :status_del_pago_de_la_inscripcion_id, :string
    change_column :rpms, :status_del_tramite_de_beca_id, :string
    change_column :rpms, :tipo_de_admision_id, :string
    change_column :rpms, :turno_id, :string
    change_column :rpms, :modalidad_id, :string
    change_column :rpms, :grupo_id, :string
    change_column :rpms, :status_ref_pago_inscs_id, :string
    change_column :rpms, :status_del_examinado_psico_id, :string
    change_column :rpms, :status_del_examinado_entrevistum_id, :string 
	end
end
