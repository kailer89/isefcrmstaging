class AddStatusDelExaminadoPsicoAndPuntuacionMmpiAndDictamenPsicoAndComentariosPsicoAndStatusExaminadoEntrevistaAndDictamenAcademicoAndComentariosCoordAndComentariosAsesorToExaminados < ActiveRecord::Migration
  def change
    add_column :examinados, :status_del_examinado_psico, :integer
    add_column :examinados, :puntuacion_MMPI, :integer
    add_column :examinados, :dictamen_psico, :string
    add_column :examinados, :comentarios_psico, :string
    add_column :examinados, :status_del_examinado_entrevista, :integer
    add_column :examinados, :dictamen_academico, :string
    add_column :examinados, :comentarios_coord, :string
    add_column :examinados, :comentarios_asesor, :string
  end
end
