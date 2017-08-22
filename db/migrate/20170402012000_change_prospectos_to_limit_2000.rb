class ChangeProspectosToLimit2000 < ActiveRecord::Migration
  def up
  	 change_column :rpms, :prospectos, :string, :limit => 2000
  	 change_column :rpms, :usuarios, :string, :limit => 2000
  	 change_column :rpms, :sedes, :string, :limit => 2000
  	 change_column :rpms, :subsedes, :string, :limit => 2000
  	 change_column :rpms, :programas, :string, :limit => 2000
  	 change_column :rpms, :campanas, :string, :limit => 2000
  	 change_column :rpms, :sede_id, :string, :limit => 2000
  	 change_column :rpms, :subsede_id, :string, :limit => 2000
  	 change_column :rpms, :nacionalidad_id, :string, :limit => 2000
  	 change_column :rpms, :ultimo_grado_de_estudio_id, :string, :limit => 2000
  	 change_column :rpms, :preparatoria_o_universidad_de_origen_id, :string, :limit => 2000
  	 change_column :rpms, :municipio_de_la_preparatoria_o_universidad_de_origen_id, :string, :limit => 2000
  	 change_column :rpms, :periodo_para_ingresar_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_admision_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_ese_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_interes_de_prospecto_validado_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_la_inscripcion_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_la_notificacion_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_pago_de_examen_de_admision_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_pago_de_ese_id, :string, :limit => 2000
  	 change_column :rpms, :status_del_admitido_id, :string, :limit => 2000
  	 change_column :rpms, :status_del_examinado_paa_id, :string, :limit => 2000
  	 change_column :rpms, :status_del_pago_de_la_inscripcion_id, :string, :limit => 2000
  	 change_column :rpms, :status_del_tramite_de_beca_id, :string, :limit => 2000
  	 change_column :rpms, :tipo_de_admision_id, :string, :limit => 2000
  	 change_column :rpms, :turno_id, :string, :limit => 2000
  	 change_column :rpms, :modalidad_id, :string, :limit => 2000
  	 change_column :rpms, :grupo_id, :string, :limit => 2000
  	 change_column :rpms, :status_ref_pago_inscs_id, :string, :limit => 2000
  	 change_column :rpms, :status_del_examinado_psico_id, :string, :limit => 2000
  	 change_column :rpms, :status_del_examinado_entrevistum_id, :string, :limit => 2000
  	 change_column :rpms, :status_de_pago_de_ese_id, :string, :limit => 2000
  end

  def down
  	 change_column :rpms, :prospectos, :string, :limit => 255
  	 change_column :rpms, :usuarios, :string, :limit => 255
  	 change_column :rpms, :sedes, :string, :limit => 255
  	 change_column :rpms, :subsedes, :string, :limit => 255
  	 change_column :rpms, :programas, :string, :limit => 255
  	 change_column :rpms, :campanas, :string, :limit => 255
  	 change_column :rpms, :sede_id, :string, :limit => 255
  	 change_column :rpms, :subsede_id, :string, :limit => 255
  	 change_column :rpms, :nacionalidad_id, :string, :limit => 255
  	 change_column :rpms, :ultimo_grado_de_estudio_id, :string, :limit => 255
  	 change_column :rpms, :preparatoria_o_universidad_de_origen_id, :string, :limit => 255
  	 change_column :rpms, :municipio_de_la_preparatoria_o_universidad_de_origen_id, :string, :limit => 255
  	 change_column :rpms, :periodo_para_ingresar_id, :string, :limit => 255
  	 change_column :rpms, :status_de_admision_id, :string, :limit => 255
  	 change_column :rpms, :status_de_ese_id, :string, :limit => 255
  	 change_column :rpms, :status_de_interes_de_prospecto_validado_id, :string, :limit => 255
  	 change_column :rpms, :status_de_la_inscripcion_id, :string, :limit => 255
  	 change_column :rpms, :status_de_la_notificacion_id, :string, :limit => 255
  	 change_column :rpms, :status_de_pago_de_examen_de_admision_id, :string, :limit => 255
  	 change_column :rpms, :status_de_pago_de_ese_id, :string, :limit => 255
  	 change_column :rpms, :status_del_admitido_id, :string, :limit => 255
  	 change_column :rpms, :status_del_examinado_paa_id, :string, :limit => 255
  	 change_column :rpms, :status_del_pago_de_la_inscripcion_id, :string, :limit => 255
  	 change_column :rpms, :status_del_tramite_de_beca_id, :string, :limit => 255
  	 change_column :rpms, :tipo_de_admision_id, :string, :limit => 255
  	 change_column :rpms, :turno_id, :string, :limit => 255
  	 change_column :rpms, :modalidad_id, :string, :limit => 255
  	 change_column :rpms, :grupo_id, :string, :limit => 255
  	 change_column :rpms, :status_ref_pago_inscs_id, :string, :limit => 255
  	 change_column :rpms, :status_del_examinado_psico_id, :string, :limit => 255
  	 change_column :rpms, :status_del_examinado_entrevistum_id, :string, :limit => 255
  	 change_column :rpms, :status_de_pago_de_ese_id, :string, :limit => 255
  end
end
