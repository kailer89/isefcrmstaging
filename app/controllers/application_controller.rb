class ApplicationController < ActionController::Base
	before_filter :iswriteteable
  protect_from_forgery
  
  def user_for_paper_trail
    nil # disable whodunnit tracking
  end


  def getProspectosForUserIncludes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"

          return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado).where(:sede_id=>user.sede)
        else

          return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
        end #end director
      end #end else rol nombre
    end #end else nil

  end


  def getSolicitantesForUserIncludes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        else

          return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def getExaminadosForUserIncludes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        else

          return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def getAdmitidosForUserIncludes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        else

          return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        end #end director
      end #end else rol nombre
    end #end else nil

  end   

  def getInscritosForUserIncludes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        else

          return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



#---------------------------------

  def self.getProspectosForUser2Includes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"

          return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado).where(:sede_id=>user.sede)
        else

          return Prospecto.includes(:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]).where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
        end #end director
      end #end else rol nombre
    end #end else nil

  end


  def self.getSolicitantesForUser2Includes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        else

          return Solicitante.includes(:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]).where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def self.getExaminadosForUser2Includes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        else

          return Examinado.includes(:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]).where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def self.getAdmitidosForUser2Includes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        else

          return Admitido.includes(:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]).where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        end #end director
      end #end else rol nombre
    end #end else nil

  end   

  def self.getInscritosForUser2Includes (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        else

          return Inscrito.includes(:status_de_la_inscripcion,:status_del_pago_de_la_inscripcion,admitidos:[:status_de_admision,:status_de_la_notificacion,:status_del_admitido,:status_ref_pago_insc,:periodo_para_ingresar,examinados:[:status_del_examinado_paa,:status_del_examinado_psico,:status_del_examinado_entrevistum,solicitantes:[:status_de_pago_de_examen_de_admision,:tipo_de_admision,:becacreditos,becacreditos:[:status_de_ese,:status_de_pago_ese,:status_del_tramite_de_beca],prospectos: [:direccions,:interes_basicos,:medio_de_contactos, :interes_academicos, :accion_estrategicas, :plan_de_descuentos, :subsedes, :programa_de_interes, :ultimo_grado_de_estudios, :preparatoria_o_universidad_de_origens, :municipio_de_la_preparatoria_o_universidad_de_origens, :nivels, :turnos, :periodo_para_ingresars, :status_de_interes_de_prospecto_validados, :modalidads,:user,:nacionalidad,:mercado_metum,:territorio,:plan_de_ventum,:programa,:grupo, interes_basicos: [:sede,:ultimo_grado_de_estudio,:preparatoria_o_universidad_de_origen,:municipio_de_la_preparatoria_o_universidad_de_origen,:programa_de_intere,:nivel,:turno,:periodo_para_ingresar,:status_de_interes_de_prospecto_validado,:subsede,:programa,:modalidad]]]]]).where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        end #end director
      end #end else rol nombre
    end #end else nil

  end


#no includes
def getProspectosForUser (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Prospecto.where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Prospecto.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"

          return Prospecto.where(:archivado=>archivado).where(:sede_id=>user.sede)
        else

          return Prospecto.where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
        end #end director
      end #end else rol nombre
    end #end else nil

  end


  def getSolicitantesForUser (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        else

          return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def getExaminadosForUser (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Examinado.where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Examinado.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Examinado.where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        else

          return Examinado.where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def getAdmitidosForUser (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Admitido.where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Admitido.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Admitido.where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        else

          return Admitido.where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        end #end director
      end #end else rol nombre
    end #end else nil

  end   

  def getInscritosForUser (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Inscrito.where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Inscrito.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Inscrito.where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        else

          return Inscrito.where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



#---------------------------------

  def self.getProspectosForUser2 (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Prospecto.where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Prospecto.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"

          return Prospecto.where(:archivado=>archivado).where(:sede_id=>user.sede)
        else

          return Prospecto.where(:archivado=>archivado).where(:sede_id=>user.sede).where(:user_id=>user.id)
        end #end director
      end #end else rol nombre
    end #end else nil

  end


  def self.getSolicitantesForUser2 (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        else

          return Solicitante.where(:archivado=>archivado).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def self.getExaminadosForUser2 (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Examinado.where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Examinado.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Examinado.where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        else

          return Examinado.where(:archivado=>archivado).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))
        end #end director
      end #end else rol nombre
    end #end else nil

  end



  def self.getAdmitidosForUser2 (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Admitido.where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Admitido.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Admitido.where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        else

          return Admitido.where(:archivado=>archivado).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante})))
        end #end director
      end #end else rol nombre
    end #end else nil

  end   

  def self.getInscritosForUser2 (user)

    archivado = false
      modelo = Configuracione.where(:user_id=>user.id).first rescue nil
      if modelo != nil
        archivado = modelo.mostrar_archivados
      end

    rol = Role.where(:id=>user.role).first

    if rol == nil
      return Inscrito.where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
    else
      if rol.nombre == "DN" or rol.nombre == "ACRM" 
        return Inscrito.where(:archivado=>archivado)
      else
        if rol.nombre == "D" or rol.nombre == "CP"
          return Inscrito.where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        else

          return Inscrito.where(:archivado=>archivado).where("admitido_id in (:admitidos)",:admitidos=>getAdmitidosForUser(user).where("examinado_id in (:examinados)",:examinados=>getExaminadosForUser(user).where("solicitante_id in (:solicitantes)",:solicitantes=>getSolicitantesForUser(user).where("prospecto_id in (:prospectos)",:prospectos=>getProspectosForUser(user).joins{solicitante}))))
        end #end director
      end #end else rol nombre
    end #end else nil

  end




  before_filter :prepare_exception_notifier
  private
  def prepare_exception_notifier
    request.env["exception_notifier.exception_data"] = {
      :current_user => current_user
    }
  end


  layout :layout_by_resource

  protected

  def layout_by_resource
    GC::start
    if devise_controller?
      
    else
      "application"
    end
  end

  def iswriteteable
GC::start
    logger.debug "--------------------------------0"
    #if true == false #temporary till uploads of roles are done
      logger.debug "action"
      logger.debug request.path_parameters[:action]
      logger.debug "action"

      logger.debug request.path_parameters[:controller].include? "admin"
      
      logger.debug "--------------------------------1"
if request.path_parameters[:action].include? "web" 
  logger.debug "iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii1"
  return true
end
      if not request.path_parameters[:controller].include? "console" 
      if not request.path_parameters[:controller].include? "configuraciones" 
      if not request.path_parameters[:controller].include? "imports" 
      if not request.path_parameters[:controller].include? "admin" 
      
        logger.debug "--------------------------------2"
          logger.debug "--------------------------------3"
          if not request.path_parameters[:controller].include? "devise" 
            logger.debug "--------------------------------4"
            if current_user != nil
              logger.debug "--------------------------------5"
              if current_user.role != nil
                logger.debug "--------------------------------6"
                
                @rol = Role.where(:id=>current_user.role).first
                logger.debug "--------------------------------7" + current_user.role
                if @rol != nil
                  logger.debug "--------------------------------8"
                #logger.debug request.path_parameters[:action]
                  @rolepermisions = RolePermision.where(:role_id=>@rol.id,:objeto=>request.path_parameters[:controller])
                  logger.debug "--------------------------------9"
                  if @rolepermisions.first.permiso == nil
                    logger.debug "--------------------------------10"
                      @rolepermisions.permiso.first.upcase ="Lectura".upcase
                  end
                  if @rolepermisions != nil
                    logger.debug "--------------------------------11"
                        if @rolepermisions.first.permiso.upcase == "Escritura".upcase
                          logger.debug "--------------------------------12"
                            return true
                        end
                        if @rolepermisions.first.permiso.upcase == "Lectura".upcase
                          logger.debug "--------------------------------13"
                          if (request.path_parameters[:action] == "edit") or (request.path_parameters[:action] == "new")
                            logger.debug "--------------------------------14"
                            #redirect_to "/" +  request.path_parameters[:controller] + "/", :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            redirect_to :back, :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                          end
                          logger.debug "--------------------------------15"
                        	model = eval(request.path_parameters[:controller].singularize.camelize)
                        	if model.column_names.include? "user_id"
                            logger.debug "--------------------------------16"
                	        	if model.where(:id=>request.path_parameters[:id], :user_id => current_user.id)
                              logger.debug "--------------------------------17"
                	        		return true
                	        	end
                        	end
                          logger.debug "--------------------------------18"

                        	if (request.path_parameters[:action] == "index") or (request.path_parameters[:action] == "show") or (request.path_parameters[:action] == "force_redirect")
                            logger.debug "--------------------------------19"
                        		return true
                        	else
                            logger.debug "--------------------------------20"
                        		#redirect_to "/" +  request.path_parameters[:controller] + "/", :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            redirect_to :back, :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                        	end
                        end

                        logger.debug "--------------------------------21"
                        
                        if @rolepermisions.first.permiso.upcase == "No disponible".upcase
                          logger.debug "--------------------------------22"
                          if (request.path_parameters[:action] == "index") or (request.path_parameters[:action] == "show") or (request.path_parameters[:action] == "force_redirect")
                            logger.debug "--------------------------------23"
                            redirect_to home_path, :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                          else
                            logger.debug "--------------------------------24"
                            redirect_to "/" +  request.path_parameters[:controller] + "/", :flash => { :warning => "No tienes permisos para acceder a esta opcion/elemento." }
                            return false
                          end
                        end   
                        return false     
                  end
                end
              end
        end
      end
    end
  end
end
end
end
end

