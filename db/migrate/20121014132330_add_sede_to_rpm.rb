class AddSedeToRpm < ActiveRecord::Migration
  def change
    add_column :rpms, :sede_id, :integer
    add_column :rpms, :subsede_id, :integer
    add_column :rpms, :nacionalidad_id, :integer
    add_column :rpms, :ultimo_grado_de_estudio_id, :integer
    add_column :rpms, :preparatoria_o_universidad_de_origen_id, :integer
    add_column :rpms, :municipio_de_la_preparatoria_o_universidad_de_origen_id, :integer
    add_column :rpms, :periodo_para_ingresar_id, :integer
    add_column :rpms, :status_de_admision_id, :integer
    add_column :rpms, :status_de_ese_id, :integer
    add_column :rpms, :status_de_interes_de_prospecto_validado_id, :integer
    add_column :rpms, :status_de_la_inscripcion_id, :integer
	add_column :rpms, :status_de_la_notificacion_id, :integer
    add_column :rpms, :status_de_pago_de_examen_de_admision_id, :integer
    add_column :rpms, :status_de_pago_de_ese_id, :integer
    add_column :rpms, :status_del_admitido_id, :integer
    add_column :rpms, :status_del_examinado_paa_id, :integer
    add_column :rpms, :status_del_pago_de_la_inscripcion_id, :integer
    add_column :rpms, :status_del_tramite_de_beca_id, :integer
    add_column :rpms, :tipo_de_admision_id, :integer
    add_column :rpms, :turno_id, :integer
    add_column :rpms, :modalidad_id, :integer
    add_column :rpms, :grupo_id, :integer
    add_column :rpms, :status_ref_pago_inscs_id, :integer
    add_column :rpms, :status_del_examinado_psico_id, :integer
    add_column :rpms, :status_del_examinado_entrevistum_id, :integer 
  end
end
