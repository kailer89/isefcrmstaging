# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150927141448) do

  create_table "Duraciontextos", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accion_estrategicas", :force => true do |t|
    t.string   "accion_promocional_1"
    t.text     "descipcion_de_la_accion_1"
    t.string   "status_de_la_accion_1"
    t.date     "fecha_para_llevarlo_a_cabo_1"
    t.string   "responsable_de_llevarlo_a_cabo_1"
    t.text     "comentarios_de_seguimiento_1"
    t.string   "accion_promocional_2"
    t.text     "descripcion_de_la_accion_2"
    t.string   "status_de_la_accion_2"
    t.date     "fecha_para_llevarlo_a_cabo_2"
    t.string   "responsable_de_llevarlo_a_cabo_2"
    t.text     "comentarios_de_seguimiento_2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prospecto_id"
    t.string   "blank"
    t.integer  "status_de_la_acion_1_id"
  end

  create_table "achievments", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "sede_id"
    t.string   "clave_del_programa"
    t.date     "fecha_de_inicio"
    t.integer  "nivel_id"
    t.integer  "programa_id"
    t.string   "ciudad_de_apertura"
    t.string   "estado_de_apertura"
    t.string   "modalidad"
    t.integer  "turno_id"
    t.string   "horarios"
    t.text     "horarios_text"
    t.string   "lugar_donde_se_impartiran_las_clases"
    t.integer  "asesor_a_cargo"
    t.string   "status_de_fecha_de_apertura"
    t.string   "meta_de_alumnos"
    t.string   "meta_de_enteros"
    t.string   "viabilidad_de_la_apertura"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecha_exacta_que_abrio"
    t.string   "alumnos_de_nuevo_ingreso"
    t.string   "enteros_de_nuevo_ingreso"
    t.string   "indicador_de_resultados_alumnos"
    t.string   "indicador_de_resultados_enteros"
    t.string   "nombre_del_responsable_de_los_datos"
    t.text     "mis_logros_observaciones"
    t.string   "alumnos_al_termino_del_1er_trim_sem"
    t.string   "enteros_al_termino_del_1er_trim_sem"
    t.string   "porcentaje_de_desercion_alumnos_al_1er_trim_sem"
    t.string   "porcentaje_de_desercion_enteros_al_1er_trim_sem"
    t.string   "mis_logros_nombre_del_responsable_de_los_datos"
    t.text     "spv_observaciones_0"
    t.string   "alumnos_al_termino_del_2er_trim_sem"
    t.string   "enteros_al_termino_del_2er_trim_sem"
    t.string   "porcentaje_de_desercion_alumnos_al_2er_trim_sem"
    t.string   "porcentaje_de_desercion_enteros_al_2er_trim_sem"
    t.text     "spv_nombre_del_responsable_de_los_datos"
    t.string   "spv_observaciones_1"
    t.integer  "user_id"
    t.integer  "modalidad_id"
  end

  create_table "activities", :force => true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], :name => "index_activities_on_owner_id_and_owner_type"
  add_index "activities", ["recipient_id", "recipient_type"], :name => "index_activities_on_recipient_id_and_recipient_type"
  add_index "activities", ["trackable_id", "trackable_type"], :name => "index_activities_on_trackable_id_and_trackable_type"

  create_table "admitidos", :force => true do |t|
    t.string   "status_admision"
    t.text     "comentarios_de_la_direccion"
    t.string   "status_de_la_notificacion"
    t.string   "status_del_admitido"
    t.text     "cometnarios_de_notificacion"
    t.boolean  "solicitud_de_admision"
    t.boolean  "copia_del_acta_de_nacimiento"
    t.boolean  "copia_del_certificado_de_preparatoria_licenciatura"
    t.boolean  "fotografias_tamano_infantil_blanco_y_negro_papel_mate"
    t.boolean  "copia_del_comprobante_de_pago_de_inscripcion"
    t.text     "comentarios_documentacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "examinado_id"
    t.boolean  "isinscrito"
    t.integer  "inscrito_id"
    t.integer  "status_de_admision_id"
    t.integer  "status_de_la_notificacion_id"
    t.integer  "status_del_admitido_id"
    t.integer  "status_ref_pago_insc"
    t.date     "fecha_lim_fpi"
    t.integer  "status_ref_pago_insc_id"
    t.boolean  "archivado"
    t.integer  "periodo_para_ingresar_id"
    t.boolean  "solicitud_de_beca"
    t.boolean  "certificado_de_estudios"
    t.boolean  "titulo_profesional"
    t.boolean  "cedula_profesional"
    t.boolean  "curp"
    t.boolean  "identificacion_oficial"
    t.boolean  "curriculum_vitae"
    t.boolean  "cartas_de_recomendacion"
    t.boolean  "comprobante_de_domicilio"
    t.boolean  "comprobante_pago_inscripcion"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attachments", :force => true do |t|
    t.string   "name"
    t.integer  "tarea_id"
    t.integer  "memo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "model_name"
    t.integer  "model_id"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barra_favoritos", :force => true do |t|
    t.integer  "favorito_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "accion"
  end

  create_table "becacreditos", :force => true do |t|
    t.boolean  "solicitud_de_beca_credito"
    t.float    "porcentaje_de_beca_credito"
    t.float    "porcentaje_de_credito_solicitado"
    t.decimal  "estimado_de_pago_mensual_de_colegiatura"
    t.string   "status_de_ESE"
    t.string   "status_de_pago_ESE"
    t.float    "porcentaje_de_beca_sugerido_ESE"
    t.date     "fecha_limite_de_aplicacion_ESE"
    t.date     "fecha_limite_de_pago_ESE"
    t.date     "porcentaje_de_credito_sugerido_ESE"
    t.text     "comentarios"
    t.string   "status_del_tramite"
    t.float    "porcentaje_de_beca_concedido"
    t.text     "comentarios_dictamen_beca"
    t.integer  "solicitante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "blank"
    t.integer  "status_de_ese_id"
    t.integer  "status_de_pago_ese_id"
    t.integer  "status_del_tramite_de_beca_id"
    t.float    "porcentaje_de_credito_concedido"
  end

  create_table "campana_socials", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "tipo"
    t.string   "proveedor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
  end

  create_table "casos", :force => true do |t|
    t.string   "caso"
    t.string   "status_del_caso"
    t.string   "nombre_del_cliente"
    t.date     "fecha_que_se_presenta_el_problema"
    t.date     "fecha_estimada_de_resolucion"
    t.string   "ambito_del_problema"
    t.text     "sintoma_problema"
    t.text     "descripcion_del_sintoma_problema"
    t.text     "causa_del_problema"
    t.text     "alternativas_de_solucion"
    t.text     "solucion"
    t.text     "comentarios_de_seguimiento_al_problema"
    t.string   "atentido_por"
    t.string   "resuelto_por"
    t.date     "fecha_que_se_soluciono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "programa_id"
  end

  create_table "colegiaturas", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "sede_id"
    t.integer  "nivel_id"
    t.integer  "programa_id"
    t.string   "cuota_de_inscripcion_para_esta_sede"
    t.string   "cuota_mensual_para_esta_sede"
    t.string   "tipo_y_no_de_pagos_de_inscripcion"
    t.string   "tipo_y_no_de_pagos_de_colegiatura"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios_estrategia", :force => true do |t|
    t.text     "comentario_del_seguimiento"
    t.integer  "estrategia_promocional_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compartidos", :force => true do |t|
    t.string   "nombre"
    t.integer  "prospecto_id"
    t.integer  "solicitante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configuraciones", :force => true do |t|
    t.boolean  "mostrar_archivados"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", :force => true do |t|
    t.string   "nombre_completo"
    t.string   "organizacion"
    t.string   "cargo"
    t.string   "archivar_como"
    t.string   "correo_electronico"
    t.string   "pagina_web"
    t.string   "direccion_de_instant_messenger"
    t.string   "numeros_de_trabajo"
    t.string   "numero_particular"
    t.string   "numero_del_fax_del_trabajo"
    t.string   "numero_movil"
    t.text     "direccion_trabajo"
    t.text     "notas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "correos", :force => true do |t|
    t.string   "nombredelmail"
    t.text     "maildata"
    t.datetime "fechaparaenviar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sede_id"
    t.integer  "user_id"
    t.integer  "created_by"
    t.string   "model_name"
    t.integer  "model_id"
    t.integer  "campana_social_id"
    t.integer  "grupo_id"
    t.boolean  "es_uno_a_uno"
    t.string   "mail_campana"
    t.integer  "programa_id"
    t.integer  "nivel_id"
    t.text     "a_quien_enviarle_correo"
    t.integer  "por_periodo"
    t.integer  "por_estado"
    t.text     "liga_adjuntos"
  end

  create_table "dashboards", :force => true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "direccions", :force => true do |t|
    t.string   "calle"
    t.integer  "no_interior"
    t.integer  "no_exterior"
    t.string   "colonia"
    t.string   "delegacion_municipio"
    t.text     "comentarios"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prospecto_id"
    t.string   "blank"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "codigo_postal"
    t.string   "estado"
    t.string   "pais"
  end

  create_table "division_territorials", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "sede_id"
    t.text     "estados_correspondientes"
    t.string   "estado_ciudad_con_grupo_abierto"
    t.integer  "programa_id"
    t.date     "fecha_de_inicio"
    t.date     "fecha_de_termino"
    t.string   "estado_ciudad_con_grupo_abierto_1"
    t.integer  "programa_id_1"
    t.date     "fecha_de_inicio_1"
    t.date     "fecha_de_termino_1"
    t.string   "estado_ciudad_con_grupo_abierto_2"
    t.integer  "programa_id_2"
    t.date     "fecha_de_inicio_2"
    t.date     "fecha_de_termino_2"
    t.string   "estado_ciudad_con_grupo_abierto_3"
    t.integer  "programa_id_3"
    t.date     "fecha_de_inicio_3"
    t.date     "fecha_de_termino_3"
    t.string   "estado_ciudad_con_grupo_abierto_4"
    t.integer  "programa_id_4"
    t.date     "fecha_de_inicio_4"
    t.date     "fecha_de_termino_4"
    t.string   "estado_ciudad_con_grupo_abierto_5"
    t.integer  "programa_id_5"
    t.date     "fecha_de_inicio_5"
    t.date     "fecha_de_termino_5"
    t.integer  "info_sim_sede_id"
    t.text     "estado_ciudad_con_mas_de_100_mil_habitantes"
    t.string   "acceso_directo_al_sim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "duracion_en_textos", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "efectividads", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employmentships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "empleado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engage_comments", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "topic_id",   :null => false
    t.text     "body",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engage_followings", :force => true do |t|
    t.integer  "user_id",                     :null => false
    t.integer  "topic_id",                    :null => false
    t.string   "token",      :default => "0", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "engage_followings", ["user_id", "topic_id"], :name => "index_engage_followings_on_user_id_and_topic_id", :unique => true

  create_table "engage_topics", :force => true do |t|
    t.string   "title",                                                 :null => false
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "style",           :limit => 16, :default => "question", :null => false
    t.integer  "user_id",                                               :null => false
    t.string   "string"
    t.integer  "votes_count",                   :default => 0,          :null => false
    t.string   "status",          :limit => 16, :default => "pending",  :null => false
    t.integer  "comments_count",                :default => 0,          :null => false
    t.integer  "followers_count",               :default => 0,          :null => false
    t.boolean  "private",                       :default => false,      :null => false
  end

  add_index "engage_topics", ["comments_count"], :name => "index_engage_topics_on_comments_count"
  add_index "engage_topics", ["followers_count"], :name => "index_engage_topics_on_followers_count"
  add_index "engage_topics", ["private"], :name => "index_engage_topics_on_private"
  add_index "engage_topics", ["status"], :name => "index_engage_topics_on_status"
  add_index "engage_topics", ["style"], :name => "index_engage_topics_on_style"
  add_index "engage_topics", ["user_id"], :name => "index_engage_topics_on_user_id"
  add_index "engage_topics", ["votes_count"], :name => "index_engage_topics_on_votes_count"

  create_table "engage_user_profiles", :force => true do |t|
    t.integer  "user_id",                       :null => false
    t.boolean  "admin",      :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "email"
  end

  add_index "engage_user_profiles", ["user_id"], :name => "index_engage_user_profiles_on_user_id"

  create_table "engage_votes", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "topic_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "engage_votes", ["topic_id"], :name => "index_engage_votes_on_topic_id"
  add_index "engage_votes", ["user_id"], :name => "index_engage_votes_on_user_id"

  create_table "equipo_de_alto_rendimientos", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "sede_id"
    t.string   "nombre_completo"
    t.string   "cargo"
    t.text     "proyectos_a_cargo"
    t.text     "horario_laboral"
    t.date     "fecha_de_nacimiento"
    t.text     "modalidad_de_contratacion"
    t.text     "horas_semanales"
    t.string   "email_institucional"
    t.string   "telefono_de_oficina"
    t.string   "extension"
    t.string   "jefe_directo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipo_promocions", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.boolean  "sexo"
    t.date     "fecha_de_nacimiento"
    t.string   "nacionalidad"
    t.string   "cargo"
    t.string   "sede"
    t.float    "horas_laborales_semanales"
    t.string   "tipo_de_contrato"
    t.date     "fecha_de_ingreso"
    t.string   "jefe_directo"
    t.string   "cargo_del_jefe_directo"
    t.string   "telefono_particular"
    t.string   "movil"
    t.string   "otro_tel"
    t.string   "email_personal"
    t.string   "email_laboral"
    t.string   "modalidad_de_pago"
    t.decimal  "sueldo_bruto"
    t.float    "porcentaje_de_comision"
    t.string   "calle"
    t.string   "no_exterior"
    t.string   "no_interior"
    t.string   "colonia"
    t.string   "codigo_postal"
    t.text     "comentarios_direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estrategia_promocionals", :force => true do |t|
    t.string   "status_de_la_estrategia"
    t.date     "fecha_para_llevarla_a_cabo"
    t.string   "reponsable_para_llevarla_a_cabo"
    t.text     "descripcion_detallada"
    t.integer  "mercado_metum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "documento_path"
  end

  create_table "events", :force => true do |t|
    t.string   "mensaje"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "donde"
    t.date     "whensaved"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campana_social_id"
    t.string   "model_name"
    t.integer  "model_id"
  end

  create_table "examinados", :force => true do |t|
    t.string   "status_del_examinado_paa"
    t.float    "puntuacion_verbal"
    t.float    "puntuacion_matematicas"
    t.float    "puntuacion_redaccion_indirecta"
    t.float    "puntaje_total_paa"
    t.string   "dictament_paa"
    t.text     "comentarios_evaluador_paa"
    t.integer  "solicitante_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isadmitido"
    t.integer  "admitido_id"
    t.integer  "status_del_examinado_paa_id"
    t.integer  "status_del_examinado_psico"
    t.integer  "puntuacion_MMPI"
    t.string   "dictamen_psico"
    t.string   "comentarios_psico"
    t.integer  "status_del_examinado_entrevista"
    t.string   "dictamen_academico"
    t.string   "comentarios_coord"
    t.string   "comentarios_asesor"
    t.integer  "status_del_examinado_entrevista_id"
    t.integer  "status_del_examinado_psico_id"
    t.integer  "status_del_examinado_entrevistum_id"
    t.boolean  "archivado"
  end

  create_table "favoritos", :force => true do |t|
    t.string   "nombre"
    t.string   "model"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finalidad_cultivos", :force => true do |t|
    t.string   "finalidad_cultivo"
    t.integer  "mercado_metum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", :force => true do |t|
    t.string   "model_name"
    t.string   "model_id"
    t.text     "action"
    t.date     "when"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "role"
  end

  create_table "homes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imports", :force => true do |t|
    t.string   "filename"
    t.string   "module"
    t.text     "description"
    t.datetime "whenimported"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "modu"
  end

  create_table "inscritos", :force => true do |t|
    t.string   "status_de_la_inscripcion"
    t.date     "fecha_limite_de_pago_de_inscripcion"
    t.string   "status_del_pago_de_inscripcion"
    t.text     "comentarios_del_coordinador_academico"
    t.integer  "admitido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_de_la_inscripcion_id"
    t.integer  "status_del_pago_de_la_inscripcion_id"
    t.boolean  "archivado"
    t.date     "fecha_de_pago_de_inscripcion"
    t.string   "id_de_alumno"
    t.string   "comentarios"
  end

  create_table "interes_academicos", :force => true do |t|
    t.text     "opcion_1"
    t.text     "opcion_2"
    t.text     "opcion_3"
    t.integer  "prospecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "blank"
  end

  create_table "interes_basicos", :force => true do |t|
    t.string   "ultimo_grado_de_estudios"
    t.string   "preparatoria_universidad_de_origen"
    t.string   "municipio_de_la_preparatoria_universidad_de_origen"
    t.integer  "ano_de_graduacion"
    t.string   "sede_y_subsede_de_interes"
    t.string   "programa_de_interes"
    t.string   "nivel"
    t.string   "turno"
    t.string   "periodo_para_ingresar"
    t.string   "status_de_interes_del_prospecto_validado"
    t.text     "comentarios"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prospecto_id"
    t.integer  "ultimo_grado_de_estudio_id"
    t.string   "blank"
    t.integer  "preparatoria_o_universidad_de_origen_id"
    t.integer  "municipio_de_la_preparatoria_o_universidad_de_origen_id"
    t.integer  "sede_id"
    t.integer  "programa_de_intere_id"
    t.integer  "nivel_id"
    t.integer  "turno_id"
    t.integer  "periodo_para_ingresar_id"
    t.integer  "status_de_interes_de_prospecto_validado_id"
    t.integer  "subsede_id"
    t.string   "clave_del_programa"
    t.integer  "programa_id"
    t.integer  "modalidad_id"
  end

  create_table "live_reports", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "llamadas", :force => true do |t|
    t.string   "asunto"
    t.date     "inicio_de_la_llamada"
    t.time     "tiempo_de_inicio"
    t.date     "fin_de_la_llamada"
    t.time     "tiempo_de_fin"
    t.float    "duracion"
    t.string   "estado"
    t.boolean  "aviso"
    t.string   "model_name"
    t.integer  "model_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
    t.text     "comentarios"
    t.boolean  "pendiente"
    t.string   "duracion_texto"
    t.string   "efectividad"
  end

  create_table "medio_de_contactos", :force => true do |t|
    t.boolean  "feria_universitaria_en_su_colegio"
    t.boolean  "visita_a_su_salon"
    t.boolean  "recomendacion_de_un_amigo_familiar"
    t.boolean  "recomendacion_de_un_egresado"
    t.boolean  "sitio_oficial_web_ISEF"
    t.boolean  "facebook"
    t.boolean  "twitter"
    t.boolean  "email_de_promocion_mailing"
    t.boolean  "impreso_flyer_folleto"
    t.boolean  "anuncio_publicacion_periodico_revista"
    t.boolean  "llamada_telefonica_de_un_asesor"
    t.boolean  "conferencia_platica_charla"
    t.boolean  "sesion_informativa"
    t.boolean  "visito_las_instalaciones"
    t.boolean  "convenio_con_su_institucion"
    t.boolean  "otro"
    t.string   "otro_texto"
    t.text     "comentarios"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prospecto_id"
    t.string   "blank"
    t.integer  "Referido"
    t.string   "referido_externo"
  end

  create_table "memos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "model_name"
    t.integer  "model_id"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
    t.text     "comentarios"
    t.boolean  "pendiente"
  end

  create_table "mercado_meta", :force => true do |t|
    t.string   "nombre_de_la_institucion_meta"
    t.string   "contacto_principal"
    t.string   "email"
    t.string   "pag_web"
    t.text     "observaciones_del_mercado_meta"
    t.string   "giro"
    t.string   "cargo"
    t.string   "email_secundario"
    t.string   "telefono"
    t.string   "movil"
    t.string   "otro_telefono"
    t.string   "calle"
    t.string   "no_interior"
    t.string   "no_exterior"
    t.string   "colonia"
    t.string   "delegacion_municipio"
    t.string   "codigo_postal"
    t.text     "comentarios_direccion"
    t.string   "mapa_google_maps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "meta", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "sede_id"
    t.string   "clave_del_programa"
    t.date     "fecha_de_inicio"
    t.integer  "nivel_id"
    t.integer  "programa_id"
    t.string   "ciudad_de_apertura"
    t.string   "estado_de_apertura"
    t.string   "modalidad"
    t.integer  "turno_id"
    t.string   "horarios"
    t.text     "horarios_text"
    t.string   "lugar_donde_se_impartiran_las_clases"
    t.integer  "asesor_a_cargo"
    t.string   "status_de_fecha_de_apertura"
    t.string   "meta_de_alumnos"
    t.string   "meta_de_enteros"
    t.string   "viabilidad_de_la_apertura"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "metas_globales", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "sede_id"
    t.string   "meta_anual_de_alumnos_de_licenciatura"
    t.string   "meta_anual_de_enteros_de_licenciatura"
    t.string   "meta_anual_de_alumnos_de_posgrado"
    t.string   "meta_anual_de_enteros_de_posgrado"
    t.string   "no_de_grupos_al_ano_de_licenciatura"
    t.string   "no_de_grupos_al_ano_de_posgrado_local"
    t.string   "no_de_grupos_al_ano_de_posgrado_foraneo"
    t.string   "total_de_grupos_al_ano"
    t.string   "metas_establecidas_por"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sede_id_1"
    t.string   "mes_ano_1"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_1"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_1"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_1"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_1"
    t.text     "observaciones_1"
    t.integer  "sede_id_2"
    t.string   "mes_ano_2"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_2"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_2"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_2"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_2"
    t.text     "observaciones_2"
    t.integer  "sede_id_3"
    t.string   "mes_ano_3"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_3"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_3"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_3"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_3"
    t.text     "observaciones_3"
    t.integer  "sede_id_4"
    t.string   "mes_ano_4"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_4"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_4"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_4"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_4"
    t.text     "observaciones_4"
    t.integer  "sede_id_5"
    t.string   "mes_ano_5"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_5"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_5"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_5"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_5"
    t.text     "observaciones_5"
    t.integer  "sede_id_6"
    t.string   "mes_ano_6"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_6"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_6"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_6"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_6"
    t.text     "observaciones_6"
    t.integer  "sede_id_7"
    t.string   "mes_ano_7"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_7"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_7"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_7"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_7"
    t.text     "observaciones_7"
    t.integer  "sede_id_8"
    t.string   "mes_ano_8"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_8"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_8"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_8"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_8"
    t.text     "observaciones_8"
    t.integer  "sede_id_9"
    t.string   "mes_ano_9"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_9"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_9"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_9"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_9"
    t.text     "observaciones_9"
    t.integer  "sede_id_10"
    t.string   "mes_ano_10"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_10"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_10"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_10"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_10"
    t.text     "observaciones_10"
    t.integer  "sede_id_11"
    t.string   "mes_ano_11"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_11"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_11"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_11"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_11"
    t.text     "observaciones_11"
    t.integer  "sede_id_12"
    t.string   "mes_ano_12"
    t.string   "logro_mensual_de_alumnos_inscritos_de_licenciatura_12"
    t.string   "logro_mensual_de_enteros_inscritos_de_licenciatura_12"
    t.string   "logro_mensual_de_alumnos_inscritos_de_Posgrado_12"
    t.string   "logro_mensual_de_enteros_inscritos_de_posgrado_12"
    t.text     "observaciones_12"
    t.integer  "sede_id_anual"
    t.string   "logro_anual_de_alumnos_de_licenciatura"
    t.string   "logro_anual_de_enteros_de_licenciatura"
    t.string   "logro_anual_de_alumnos_de_posgrado"
    t.string   "logro_anual_de_enteros_de_posgrado"
    t.string   "logro_anual_de_grupos_abiertos_de_licenciatura"
    t.string   "logro_anual_de_grupos_abiertos_de_posgrado_local"
    t.string   "logro_anual_de_grupos_abiertos_de_posgrado_foraneo"
    t.string   "total_de_grupos_abiertos"
    t.string   "indicador_de_resultados_anual_alumnos_de_licenciatura"
    t.string   "indicador_de_resultados_anual_enteros_de_licenciatura"
    t.string   "indicador_de_resultados_anual_alumnos_de_posgrado"
    t.string   "indicador_de_resultados_anual_enteros_de_posgrado"
    t.text     "metas_anuales_observaciones"
  end

  create_table "mi_plan_estrategico_de_promocion_peps", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "pep_para"
    t.string   "nombre_de_la_institucion"
    t.string   "segmento"
    t.string   "tipo_especifico"
    t.string   "nse"
    t.string   "forma_parte_de_mi_mdo_meta"
    t.string   "tamano_de_mdo_que_aspira_abarcar"
    t.text     "mercado_meta_observaciones"
    t.integer  "asesor_a_cargo"
    t.string   "persona_de_contacto"
    t.string   "cargo"
    t.string   "telefono_de_oficina"
    t.string   "ext"
    t.string   "otro_telefono"
    t.string   "movil"
    t.string   "email"
    t.string   "pag_web"
    t.string   "calle"
    t.string   "no_exterior"
    t.string   "no_interior"
    t.string   "colonia"
    t.string   "codigo_postal"
    t.string   "delegacion_municipio"
    t.string   "estado"
    t.string   "pais"
    t.string   "google_maps"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_de_prospectos_obtenidos"
    t.integer  "no_solicitantes"
    t.text     "nombre_de_los_solicitantes"
    t.integer  "no_de_entrevistados_examinados"
    t.text     "nombre_de_los_entrevistados_examinados"
    t.integer  "no_de_admitidos"
    t.text     "nombre_de_los_admitidos"
    t.integer  "no_de_inscritos"
    t.text     "nombre_de_los_inscritos"
    t.text     "observaciones"
    t.integer  "user_id"
  end

  create_table "modalidads", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipio_de_la_preparatoria_o_universidad_de_origens", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nacional_de_aperturas", :force => true do |t|
    t.string   "periodo_actual"
    t.integer  "sede_id"
    t.string   "clave_del_programa"
    t.date     "fecha_de_inicio"
    t.integer  "programa_id"
    t.string   "ciudad_de_apertura"
    t.string   "estado_de_apertura"
    t.string   "modalidad"
    t.string   "turno"
    t.text     "horarios"
    t.string   "lugar_donde_se_impartiran_las_clases"
    t.integer  "asesor_a_cargo"
    t.string   "email_de_contacto"
    t.string   "status_de_la_fecha_de_apertura"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nacionalidads", :force => true do |t|
    t.string   "nacionalidad"
    t.string   "pais"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nivels", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oferta_educativas", :force => true do |t|
    t.string   "periodo_anual"
    t.integer  "sede_id"
    t.integer  "nivel_id"
    t.integer  "programa_id"
    t.string   "tipo_de_validez"
    t.string   "tipo_de_reconocimiento"
    t.string   "sedes_en_las_que_se_oferta_este_programa"
    t.string   "modalidades_en_que_se_imparte"
    t.string   "horarios_en_que_se_imparte"
    t.text     "requisitos"
    t.text     "objetivo_del_programa"
    t.text     "perfil_de_ingreso"
    t.text     "perfil_de_egreso"
    t.text     "ambito_de_desempeno"
    t.text     "principales_beneficios_que_ofrece_el_programa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periodo_para_ingresars", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plan_de_descuentos", :force => true do |t|
    t.boolean  "descuento_en_la_inscripcion"
    t.integer  "porcentaje"
    t.date     "fecha_de_caducidad"
    t.string   "otro_cual"
    t.text     "comentarios"
    t.integer  "prospecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "blank"
    t.date     "fecha_de_otorgamiento"
  end

  create_table "plan_de_venta", :force => true do |t|
    t.string   "programa"
    t.decimal  "cuota_de_inscripcion"
    t.string   "periodo_de_pago_de_inscripcion"
    t.decimal  "cuota_de_colegiatura"
    t.string   "meses_de_pago_de_colegiatura"
    t.integer  "sede_id"
    t.string   "subsede"
    t.date     "fecha_de_apertura"
    t.string   "periodo_Banner_de_apertura"
    t.string   "nombre_del_asesor_a_cargo"
    t.text     "comentarios_generalidades_de_apertura"
    t.string   "meta_de_enteros"
    t.string   "status_de_la_apertura"
    t.string   "avance_en_enteros"
    t.string   "porcentaje_de_cumplimiento_meta_vs_avance_en_enteros"
    t.string   "viabilidad_de_esta_apertura"
    t.text     "comentarios_meta"
    t.string   "medio_promocional"
    t.text     "descripcion_especificaciones_detalladas_del_medio_promocional"
    t.string   "cantidad"
    t.decimal  "inversion"
    t.decimal  "viaticos_de_promocion_estimados"
    t.decimal  "vales_de_gasolina"
    t.decimal  "total_de_inversion_en_medios_y_viaticos_para_esta_apertura"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "mensaje"
    t.date     "whensaved"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campana_social_id"
    t.string   "model_name"
    t.integer  "model_id"
  end

  create_table "pregunta", :force => true do |t|
    t.string   "ambito_de_la_pregunta"
    t.text     "pregunta"
    t.text     "causa_de_la_pregunta"
    t.text     "alternativas_de_respuestas"
    t.text     "respuesta"
    t.string   "pregunta_planteada_por"
    t.string   "resuelta_por"
    t.boolean  "pregunta_frecuente"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preparatoria_o_universidad_de_origens", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programa_de_interes", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programas", :force => true do |t|
    t.string   "nivel"
    t.string   "programa"
    t.text     "descripcion_detallada"
    t.text     "principales_caracteristicas"
    t.text     "principales_ventajas"
    t.text     "principales_beneficios"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prospectos", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.boolean  "sexo"
    t.date     "fecha_de_nacimiento"
    t.string   "nacionalidad"
    t.string   "telefono_particular"
    t.string   "telefono_movil"
    t.string   "otro_telefono"
    t.string   "email"
    t.boolean  "validado",            :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "issolicitante"
    t.integer  "solicitante_id"
    t.integer  "nacionalidad_id"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
    t.integer  "programa_id"
    t.integer  "mercado_metum_id"
    t.integer  "plan_de_venta_id"
    t.integer  "territorio_id"
    t.integer  "plan_de_ventum_id"
    t.integer  "grupo_id"
    t.boolean  "importado_revisado"
    t.integer  "subsede_id"
    t.string   "facebook"
    t.string   "twitter"
    t.boolean  "archivado"
  end

  create_table "purges", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "report_directions", :force => true do |t|
    t.string   "fieldname"
    t.string   "fieldvalue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reportlines", :force => true do |t|
    t.string   "nombre_del_campo"
    t.string   "modulo"
    t.integer  "report_id"
    t.string   "campo"
    t.string   "filtro"
    t.string   "valorcampo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reportparams", :force => true do |t|
    t.string   "nombre"
    t.string   "fieldname"
    t.string   "fieldvalue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "report_id"
    t.string   "filter"
    t.text     "column_names"
    t.string   "date_value"
  end

  create_table "reports", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "table"
    t.text     "column_names"
    t.integer  "por_pagina"
  end

  create_table "reportsortbies", :force => true do |t|
    t.string   "fieldname"
    t.integer  "report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "orden"
  end

  create_table "role_permisions", :force => true do |t|
    t.string   "objeto"
    t.string   "permiso"
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rpms", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink"
    t.text     "prospectos",                                              :limit => 255
    t.text     "usuarios",                                                :limit => 255
    t.text     "sedes",                                                   :limit => 255
    t.text     "subsedes",                                                :limit => 255
    t.text     "programas",                                               :limit => 255
    t.text     "campanas",                                                :limit => 255
    t.date     "rango_inicio"
    t.date     "rango_fin"
    t.string   "ordenar_por"
    t.text     "sede_id",                                                 :limit => 255
    t.text     "subsede_id",                                              :limit => 255
    t.text     "nacionalidad_id",                                         :limit => 255
    t.text     "ultimo_grado_de_estudio_id",                              :limit => 255
    t.text     "preparatoria_o_universidad_de_origen_id",                 :limit => 255
    t.text     "municipio_de_la_preparatoria_o_universidad_de_origen_id", :limit => 255
    t.text     "periodo_para_ingresar_id",                                :limit => 255
    t.text     "status_de_admision_id",                                   :limit => 255
    t.text     "status_de_ese_id",                                        :limit => 255
    t.text     "status_de_interes_de_prospecto_validado_id",              :limit => 255
    t.text     "status_de_la_inscripcion_id",                             :limit => 255
    t.text     "status_de_la_notificacion_id",                            :limit => 255
    t.text     "status_de_pago_de_examen_de_admision_id",                 :limit => 255
    t.text     "status_de_pago_de_ese_id",                                :limit => 255
    t.text     "status_del_admitido_id",                                  :limit => 255
    t.text     "status_del_examinado_paa_id",                             :limit => 255
    t.text     "status_del_pago_de_la_inscripcion_id",                    :limit => 255
    t.text     "status_del_tramite_de_beca_id",                           :limit => 255
    t.text     "tipo_de_admision_id",                                     :limit => 255
    t.text     "turno_id",                                                :limit => 255
    t.text     "modalidad_id",                                            :limit => 255
    t.text     "grupo_id",                                                :limit => 255
    t.text     "status_ref_pago_inscs_id",                                :limit => 255
    t.text     "status_del_examinado_psico_id",                           :limit => 255
    t.text     "status_del_examinado_entrevistum_id",                     :limit => 255
    t.string   "estado_validado"
    t.date     "validado_inicio"
    t.date     "validado_fin"
    t.string   "estado_solicitante"
    t.date     "solicitante_inicio"
    t.date     "solicitante_fin"
    t.string   "estado_examinado"
    t.date     "examinado_inicio"
    t.date     "examinado_fin"
    t.string   "estado_admitido"
    t.date     "admitido_inicio"
    t.date     "admitido_fin"
    t.string   "estado_inscrito"
    t.date     "inscrito_inicio"
    t.date     "inscrito_fin"
    t.string   "fecha_de_nacimiento"
    t.string   "fecha_de_nacimiento_filter"
    t.string   "fecha_de_nacimiento_has"
    t.boolean  "fecha_de_nacimiento_empty"
    t.boolean  "sexo"
    t.string   "nombre_prospecto"
    t.string   "nombre_prospecto_filter"
    t.boolean  "nombre_prospecto_empty"
    t.string   "apellido_paterno"
    t.string   "apellido_paterno_filter"
    t.boolean  "apellido_paterno_empty"
    t.string   "apellido_materno"
    t.string   "apellido_materno_filter"
    t.boolean  "apellido_materno_empty"
    t.string   "email"
    t.string   "email_filter"
    t.boolean  "email_empty"
    t.string   "facebook"
    t.string   "facebook_filter"
    t.boolean  "facebook_empty"
    t.string   "twitter"
    t.string   "twitter_filter"
    t.boolean  "twitter_empty"
    t.string   "telefono_particular"
    t.string   "telefono_particular_filter"
    t.boolean  "telefono_particular_empty"
    t.string   "telefono_movil"
    t.string   "telefono_movil_filter"
    t.boolean  "telefono_movil_empty"
    t.string   "otro_telefono"
    t.string   "otro_telefono_filter"
    t.boolean  "otro_telefono_empty"
    t.string   "calle"
    t.string   "calle_filter"
    t.boolean  "calle_empty"
    t.string   "no_interior"
    t.string   "no_interior_filter"
    t.boolean  "no_interior_empty"
    t.string   "no_exterior"
    t.string   "no_exterior_filter"
    t.boolean  "no_exterior_empty"
    t.string   "colonia"
    t.string   "colonia_filter"
    t.boolean  "colonia_empty"
    t.string   "delegacion_municipio"
    t.string   "delegacion_municipio_filter"
    t.boolean  "delegacion_municipio_empty"
    t.string   "estado"
    t.string   "estado_filter"
    t.boolean  "estado_empty"
    t.string   "pais"
    t.string   "pais_filter"
    t.boolean  "pais_empty"
    t.string   "codigo_postal"
    t.string   "codigo_postal_filter"
    t.boolean  "codigo_postal_empty"
    t.string   "direccion_comentarios"
    t.string   "direccion_comentarios_filter"
    t.boolean  "direccion_comentarios_empty"
    t.string   "ano_de_graduacion"
    t.string   "ano_de_graduacion_filter"
    t.boolean  "ano_de_graduacion_empty"
    t.string   "interes_basico_comentarios"
    t.string   "interes_basico_comentarios_filter"
    t.boolean  "interes_basico_comentarios_empty"
    t.string   "opcion_1"
    t.string   "opcion_1_filter"
    t.boolean  "opcion_1_empty"
    t.string   "opcion_2"
    t.string   "opcion_2_filter"
    t.boolean  "opcion_2_empty"
    t.string   "opcion_3"
    t.string   "opcion_3_filter"
    t.boolean  "opcion_3_empty"
    t.string   "medio_de_contactos_id"
    t.string   "otro"
    t.string   "otro_filter"
    t.boolean  "otro_empty"
    t.string   "medio_de_contactos_comentarios"
    t.string   "medio_de_contactos_comentarios_filter"
    t.boolean  "medio_de_contactos_comentarios_empty"
    t.boolean  "descuento_en_la_inscripcion"
    t.string   "porcentaje"
    t.string   "porcentaje_filter"
    t.boolean  "porcentaje_empty"
    t.string   "fecha_de_caducidad"
    t.string   "fecha_de_caducidad_filter"
    t.boolean  "fecha_de_caducidad_empty"
    t.string   "descuentos_otro"
    t.string   "descuentos_otro_filter"
    t.boolean  "descuentos_otro_empty"
    t.string   "fecha_de_otorgamiento"
    t.string   "fecha_de_otorgamiento_filter"
    t.boolean  "fecha_de_otorgamiento_empty"
    t.string   "descuentos_comentarios"
    t.string   "descuentos_comentarios_filter"
    t.boolean  "descuentos_comentarios_empty"
    t.string   "nivel_id"
    t.text     "columnas"
    t.text     "columnas_seleccionadas"
    t.boolean  "show_solicitantes"
    t.boolean  "show_examinados"
    t.boolean  "show_admitidos"
    t.boolean  "show_inscritos"
    t.integer  "created_by"
  end

  add_index "rpms", ["permalink"], :name => "index_rpms_on_permalink"

  create_table "searches", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "model_name"
    t.integer  "user_id"
  end

  create_table "sedes", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sedes_users", :id => false, :force => true do |t|
    t.integer "sede_id"
    t.integer "user_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "solicitantes", :force => true do |t|
    t.boolean  "socilicita_PAA"
    t.boolean  "solicita_pscicometria"
    t.boolean  "solicita_entrevista_academica"
    t.string   "status_depago_examen_de_admision"
    t.float    "promedio"
    t.string   "tipo_de_admision"
    t.date     "fecha_programacion_para_PAA"
    t.date     "fecha_programacion_para_examenes_pscicomentricos"
    t.date     "fecha_programada_para_entrevistas"
    t.date     "fecha_de_limite_de_pago_examen_de_admision"
    t.time     "hora_programada_PAA"
    t.time     "hora_programada_pscicometrico"
    t.time     "hora_programada_entrevistas"
    t.text     "comentarios"
    t.integer  "prospecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isexaminado"
    t.integer  "examinado_id"
    t.integer  "status_de_pago_de_examen_de_admision_id"
    t.integer  "tipo_de_admision_id"
    t.boolean  "archivado"
    t.boolean  "asistio_a_entrevista"
    t.date     "nueva_fecha_para_entrevista"
    t.time     "nueva_hora_para_entrevista"
  end

  create_table "statics", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_de_admisions", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_de_eses", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_de_interes_de_prospecto_validados", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_de_la_inscripcions", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_de_la_notificacions", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_de_pago_de_examen_de_admisions", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_de_pago_eses", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_del_admitidos", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_del_examinado_entrevista", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_del_examinado_paas", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_del_examinado_psicos", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_del_pago_de_la_inscripcions", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_del_tramite_de_becas", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_ref_pago_inscs", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subsedes", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "sede_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tareas", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.date     "fecha_de_inicio_de_la_tarea"
    t.time     "hora_de_inicio"
    t.date     "fecha_de_fin_de_la_tarea"
    t.time     "hora_de_fin"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "model_name"
    t.integer  "model_id"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
    t.text     "comentarios"
    t.boolean  "pendiente"
  end

  create_table "territorios", :force => true do |t|
    t.string   "nombre"
    t.integer  "sede_id"
    t.string   "estado"
    t.string   "ciudad"
    t.text     "descripcion_detallada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_de_admisions", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turnos", :force => true do |t|
    t.string   "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", :force => true do |t|
    t.string   "tweet"
    t.date     "when_saved"
    t.integer  "created_by"
    t.integer  "user_id"
    t.integer  "sede_id"
    t.integer  "model_id"
    t.string   "model_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ultimo_grado_de_estudios", :force => true do |t|
    t.string   "grado_de_estudio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => ""
    t.string   "encrypted_password",     :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "role"
    t.integer  "sede_id"
    t.string   "avatar_url"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
