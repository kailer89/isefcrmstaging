class AddSedeDosToMetasGlobales < ActiveRecord::Migration
  def change
    add_column :metas_globales, :sede_id_1, :integer
    add_column :metas_globales, :mes_ano_1, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_1, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_1, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_Posgrado_1, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_posgrado_1, :string
    add_column :metas_globales, :observaciones_1, :text
    add_column :metas_globales, 										   :sede_id_2, :integer
    add_column :metas_globales, 									       :mes_ano_2, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_2, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_2, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_2, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_2, :string
    add_column :metas_globales,                                      :observaciones_2, :text
	
	
	    add_column :metas_globales, 									   :sede_id_3, :integer
    add_column :metas_globales, 									       :mes_ano_3, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_3, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_3, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_3, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_3, :string
    add_column :metas_globales,                                      :observaciones_3, :text
	
	
	    add_column :metas_globales, 									   :sede_id_4, :integer
    add_column :metas_globales, 									       :mes_ano_4, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_4, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_4, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_4, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_4, :string
    add_column :metas_globales,                                      :observaciones_4, :text

	
	add_column :metas_globales, 									       :sede_id_5, :integer
    add_column :metas_globales, 									       :mes_ano_5, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_5, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_5, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_5, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_5, :string
    add_column :metas_globales,                                      :observaciones_5, :text
	
	add_column :metas_globales, 									       :sede_id_6, :integer
    add_column :metas_globales, 									       :mes_ano_6, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_6, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_6, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_6, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_6, :string
    add_column :metas_globales,                                      :observaciones_6, :text
	
	add_column :metas_globales, 										   :sede_id_7, :integer
    add_column :metas_globales, 									       :mes_ano_7, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_7, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_7, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_7, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_7, :string
    add_column :metas_globales,                                      :observaciones_7, :text
	
	add_column :metas_globales, 										   :sede_id_8, :integer
    add_column :metas_globales, 									       :mes_ano_8, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_8, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_8, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_8, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_8, :string
    add_column :metas_globales,                                      :observaciones_8, :text
	
	add_column :metas_globales, 										   :sede_id_9, :integer
    add_column :metas_globales, 									       :mes_ano_9, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_9, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_9, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_9, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_9, :string
    add_column :metas_globales,                                      :observaciones_9, :text
	
	
	add_column :metas_globales, 										   :sede_id_10, :integer
    add_column :metas_globales, 									       :mes_ano_10, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_10, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_10, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_10, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_10, :string
    add_column :metas_globales,                                      :observaciones_10, :text
	
	
	add_column :metas_globales, 										   :sede_id_11, :integer
    add_column :metas_globales, 									       :mes_ano_11, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_11, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_11, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_11, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_11, :string
    add_column :metas_globales,                                      :observaciones_11, :text

	add_column :metas_globales, 										   :sede_id_12, :integer
    add_column :metas_globales, 									       :mes_ano_12, :string
    add_column :metas_globales, :logro_mensual_de_alumnos_inscritos_de_licenciatura_12, :string
    add_column :metas_globales, :logro_mensual_de_enteros_inscritos_de_licenciatura_12, :string
    add_column :metas_globales, 	:logro_mensual_de_alumnos_inscritos_de_Posgrado_12, :string
    add_column :metas_globales,     :logro_mensual_de_enteros_inscritos_de_posgrado_12, :string
    add_column :metas_globales,                                      :observaciones_12, :text	

	add_column :metas_globales, :sede_id_anual, :integer
	add_column :metas_globales, :logro_anual_de_alumnos_de_licenciatura, :string
	add_column :metas_globales, :logro_anual_de_enteros_de_licenciatura, :string 
	add_column :metas_globales, :logro_anual_de_alumnos_de_posgrado, :string
	add_column :metas_globales, :logro_anual_de_enteros_de_posgrado, :string

	add_column :metas_globales, :logro_anual_de_grupos_abiertos_de_licenciatura, :string
	add_column :metas_globales, :logro_anual_de_grupos_abiertos_de_posgrado_local, :string 
	add_column :metas_globales, :logro_anual_de_grupos_abiertos_de_posgrado_foraneo, :string
	add_column :metas_globales, :total_de_grupos_abiertos, :string	

	add_column :metas_globales, :indicador_de_resultados_anual_alumnos_de_licenciatura, :string
	add_column :metas_globales, :indicador_de_resultados_anual_enteros_de_licenciatura, :string
	add_column :metas_globales, :indicador_de_resultados_anual_alumnos_de_posgrado, :string
	add_column :metas_globales, :indicador_de_resultados_anual_enteros_de_posgrado, :string

	add_column :metas_globales, :metas_anuales_observaciones, :text

  end
end
