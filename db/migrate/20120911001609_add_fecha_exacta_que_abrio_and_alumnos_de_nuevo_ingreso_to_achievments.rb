class AddFechaExactaQueAbrioAndAlumnosDeNuevoIngresoToAchievments < ActiveRecord::Migration
  def change
    add_column :achievments, :fecha_exacta_que_abrio, :date
    add_column :achievments, :alumnos_de_nuevo_ingreso, :string
    add_column :achievments, :enteros_de_nuevo_ingreso, :string
    add_column :achievments, :indicador_de_resultados_alumnos, :string
    add_column :achievments, :indicador_de_resultados_enteros, :string
    add_column :achievments, :nombre_del_responsable_de_los_datos, :string
    add_column :achievments, :mis_logros_observaciones, :text
    add_column :achievments, :alumnos_al_termino_del_1er_trim_sem, :string
    add_column :achievments, :enteros_al_termino_del_1er_trim_sem, :string
    add_column :achievments, :porcentaje_de_desercion_alumnos_al_1er_trim_sem, :string
    add_column :achievments, :porcentaje_de_desercion_enteros_al_1er_trim_sem, :string
    add_column :achievments, :mis_logros_nombre_del_responsable_de_los_datos, :string
    add_column :achievments, :spv_observaciones_0, :text
    add_column :achievments, :alumnos_al_termino_del_2er_trim_sem, :string
    add_column :achievments, :enteros_al_termino_del_2er_trim_sem, :string
    add_column :achievments, :porcentaje_de_desercion_alumnos_al_2er_trim_sem, :string
    add_column :achievments, :porcentaje_de_desercion_enteros_al_2er_trim_sem, :string
    add_column :achievments, :spv_nombre_del_responsable_de_los_datos,:text
    add_column :achievments, :spv_observaciones_1, :string
  end
end
