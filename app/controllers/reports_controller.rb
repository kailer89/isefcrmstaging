class ReportsController < ApplicationController
  before_filter :authenticate_user!
require 'will_paginate/array'
   def update_column_names
     @columns = ActiveRecord::Base.connection.columns(params[:fieldname])
     render :layout => false
   end  

   def imprimir
    @report = Report.find(params[:id])
    logger.debug "======================"
    logger.debug @report.inspect
    logger.debug "======================"
    @reportparams= Reportparam.where(:report_id=>params[:id])
    @reportsortbies=Reportsortby.where(:report_id=>params[:id])
    whereclause="1<>2"
    orderclause = ""
    prospectos = []
    hasExtraParams = false
    valorid=""
    i=0
      @reportparams.each do |reportparam|
        if eval(@report.table.camelize.singularize).respond_to?(reportparam.fieldname)
      		valorcampo=(reportparam.date_value != "") ? reportparam.date_value  : reportparam.fieldvalue

      		case reportparam.fieldname 
      			when "nacionalidad_id"
      				tabla = Nacionalidad.where(:nacionalidad=>reportparam.fieldvalue) rescue nil
      				valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      			when "user_id"
      				tabla = User.where(:username=>reportparam.fieldvalue) rescue nil
      				valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      			when "sede_id","territorio_id","grupo_id"
      				tabla = eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:nombre=>reportparam.fieldvalue) rescue nil
      				valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      			when "programa_id","plan_de_venta_id"
      				tabla = eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:programa=>reportparam.fieldvalue) rescue nil			
      				valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      			when "plan_de_ventum_id"
      				""
      			else
              if eval(reportparam.fieldname.chomp('_id').camelize.singularize).respond_to?(:valor) then
        				tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:valor=>reportparam.fieldvalue) rescue nil
        				if tabla != nil and tabla.size > 0
        					tabla.each do |t|
        						if t.respond_to?(:valor)
        							valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
        						else
        							valorcampo=(reportparam.date_value != "") ? reportparam.date_value  : reportparam.fieldvalue
        						end
        					end								
        				end
              end
      		end		
          logger.debug  "---------------------------------------------------------------------------------------------------------------"
          logger.debug  valorcampo[0]
          logger.debug  "---------------------------------------------------------------------------------------------------------------"
          case reportparam.filter
            when "Igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " = '" + valorcampo + "' "
            when "No Igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " <> '" + valorcampo + "' "
            when "Contiene"
                whereclause = whereclause + " and "  + reportparam.fieldname + " like '%" + valorcampo + "%' "
            when "Mas grande que"
                whereclause = whereclause + " and "  + reportparam.fieldname + " > '" + valorcampo + "' "
            when "Mas grande o igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " >= '" + valorcampo + "' "
            when "Mas chico que"
                whereclause = whereclause + " and "  + reportparam.fieldname + " < '" + valorcampo + "' "
            when "Mas chico o igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " <= '" + valorcampo + "' "
            else
                whereclause = whereclause + " and "  + reportparam.fieldname + " = '" + valorcampo + "' "
          end      
      else
        logger.debug  "NO RESPONDE A-Resolviendo conflictos y agregando prospectos-" + reportparam.fieldname + "valor" + reportparam.fieldvalue
        hasExtraParams = true

        #checar si responde a direccions
        if Direccion.respond_to?(reportparam.fieldname)
          logger.debug "responde a " + reportparam.fieldname
          if reportparam.fieldname.end_with?("_id") then
            if eval(reportparam.fieldname.chomp('_id').camelize.singularize).column_names.include?("valor") then
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:valor=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end
            end
            else
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(reportparam.fieldname=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end              
            end
            interes = Direccion.where(:id=>valorid).first rescue nil
            direcciones = Prospecto.where(:id=>interes.prospecto_id) rescue nil
            if direcciones != nil
                direcciones.each do |direccion|
                  prospectos.push(direccion)
                end
            end
        end

        #checar si responde a interes_basicos 
        if InteresBasico.column_names.include?(reportparam.fieldname)
          logger.debug "responde a 2" + reportparam.fieldname 
          if reportparam.fieldname.end_with?("_id") then
            if eval(reportparam.fieldname.chomp('_id').camelize.singularize).column_names.include?("valor") then
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:valor=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end
            end
            else
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(reportparam.fieldname=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end              
            end
            interes = InteresBasico.where(:id=>valorid).first rescue nil
            direcciones = Prospecto.where(:id=>interes.prospecto_id) rescue nil
            if direcciones != nil
                direcciones.each do |direccion|
                  prospectos.push(direccion)
                end
            end
        end
        #checar si responde a medio_de_contactos
        if InteresAcademico.respond_to?(reportparam.fieldname)
          logger.debug "responde a 3" + reportparam.fieldname
          if reportparam.fieldname.end_with?("_id") then
            if eval(reportparam.fieldname.chomp('_id').camelize.singularize).column_names.include?("valor") then
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:valor=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end
            end
            else
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(reportparam.fieldname=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end              
            end
            interes = InteresAcademico.where(:id=>valorid).first rescue nil
            direcciones = Prospecto.where(:id=>interes.prospecto_id) rescue nil
            if direcciones != nil
                direcciones.each do |direccion|
                  prospectos.push(direccion)
                end
            end
        end
        #checar si responde a plan_de_descuentos
        if PlanDeDescuento.respond_to?(reportparam.fieldname)
          logger.debug "responde a 4" + reportparam.fieldname
          if reportparam.fieldname.end_with?("_id") then
            if eval(reportparam.fieldname.chomp('_id').camelize.singularize).column_names.include?("valor") then
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:valor=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end
            end
            else
              tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(reportparam.fieldname=>reportparam.fieldvalue) rescue nil
              if tabla != nil and tabla.size > 0
                tabla.each do |t|
                  if t.respond_to?(:valor)
                    valorid = tabla.map{|a| a.id}[0].to_s rescue ""
                  end
                end               
              end              
            end
            interes = PlanDeDescuento.where(:id=>valorid).first rescue nil
            direcciones = Prospecto.where(:id=>interes.prospecto_id) rescue nil
            if direcciones != nil
                direcciones.each do |direccion|
                  prospectos.push(direccion)
                end
            end
        end

        logger.debug "prospectos" + prospectos.to_yaml

      end  

      end         
		logger.debug  "---------------------------------------------------------------------------------------------------------------"
		logger.debug  whereclause
		logger.debug  "---------------------------------------------------------------------------------------------------------------"
      @reportsortbies.each do |reportsortby|
          case reportsortby.orden
            when "Ascendente"
                orderclause = orderclause + ((i>0) ? " , " : "") + reportsortby.fieldname + " asc " + ((i>0 && @reportsortbies.length <=i) ? " , " : "")
            when "Descendente"
                orderclause = orderclause + ((i>0) ? " , " : "") + reportsortby.fieldname + " desc " + ((i>0 && @reportsortbies.length <=i) ? " , " : "")
            else
          end
          i = i + 1
      end                 
      logger.debug "}}}}}}}}}}}}}}}}}}}}}}}}"
      logger.debug current_user.inspect
      logger.debug "}}}}}}}}}}}}}}}}}}}}}}}}"
      if whereclause == "1<>2" and hasExtraParams
        whereclause = ""
      end
      if prospectos != nil
        prospectos = prospectos.uniq
      end
      if (current_user.role.capitalize =="admin".capitalize)
        
        if hasExtraParams and whereclause != ""
          @valor = eval(@report.table.camelize.singularize).where(whereclause).order(orderclause)
          @valor = @valor + prospectos
        else
          @valor = eval(@report.table.camelize.singularize).where(whereclause).order(orderclause)
        end
        @informe = @valor.paginate(:per_page => @report.por_pagina, :page => params[:page]) 
        #@informe = eval(@report.table.camelize.singularize).paginate(:per_page => @report.por_pagina, :page => params[:page]) 
      else
        if eval(@report.table.camelize.singularize).respond_to?(:created_by)
          
          if hasExtraParams and whereclause != ""
            @valor = eval(@report.table.camelize.singularize).where(:created_by=>current_user.id, :user_id=>current_user.id).where(whereclause).order(orderclause)
            @valor = @valor + prospectos
          else
            @valor = eval(@report.table.camelize.singularize).where(:created_by=>current_user.id, :user_id=>current_user.id).where(whereclause).order(orderclause)
          end          
        else
          
          if hasExtraParams and whereclause != ""
            @valor = eval(@report.table.camelize.singularize).where(whereclause).order(orderclause)
            @valor = @valor + prospectos
          elsif hasExtraParams and whereclause == ""
              @valor = prospectos
          else
            @valor = eval(@report.table.camelize.singularize).where(whereclause).order(orderclause)
          end          
        end
        logger.debug "---" + @valor.to_yaml + "---"
        @informe = @valor.paginate(:per_page => @report.por_pagina, :page => params[:page])         
        #@informe = eval(@report.table.camelize.singularize).where(:sede_id=>current_user.sede_id, :created_by=>current_user.id, :user_id=>current_user.id).paginate(:per_page => @report.por_pagina, :page => params[:page])
      end
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @informe }
        format.xls
      end      
   end

  def printview
    @report = Report.find(params[:id])
    logger.debug "======================"
    logger.debug @report.inspect
    logger.debug "======================"
    @reportparams= Reportparam.where(:report_id=>params[:id])
    @reportsortbies=Reportsortby.where(:report_id=>params[:id])
    whereclause="1<>2"
    orderclause = ""
    i=0
      @reportparams.each do |reportparam|
    valorcampo=(reportparam.date_value != "") ? reportparam.date_value  : reportparam.fieldvalue

    case reportparam.fieldname 
      when "nacionalidad_id"
        tabla = Nacionalidad.where(:nacionalidad=>reportparam.fieldvalue) rescue nil
        valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      when "user_id"
        tabla = User.where(:username=>reportparam.fieldvalue) rescue nil
        valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      when "sede_id","territorio_id","grupo_id"
        tabla = eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:nombre=>reportparam.fieldvalue) rescue nil
        valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      when "programa_id","plan_de_venta_id"
        tabla = eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:programa=>reportparam.fieldvalue) rescue nil     
        valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
      when "plan_de_ventum_id"
        ""
      else
        if eval(reportparam.fieldname.chomp('_id').camelize.singularize).respond_to?(:valor) then
          tabla=eval(reportparam.fieldname.chomp('_id').camelize.singularize).where(:valor=>reportparam.fieldvalue) rescue nil
          if tabla != nil and tabla.size > 0
            tabla.each do |t|
              if t.respond_to?(:valor)
                valorcampo = tabla.map{|a| a.id}[0].to_s rescue ""
              else
                valorcampo=(reportparam.date_value != "") ? reportparam.date_value  : reportparam.fieldvalue
              end
            end               
          end
        end
    end     
          logger.debug  "---------------------------------------------------------------------------------------------------------------"
    logger.debug  valorcampo[0]
    logger.debug  "---------------------------------------------------------------------------------------------------------------"
          case reportparam.filter
            when "Igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " = '" + valorcampo + "' "
            when "No Igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " <> '" + valorcampo + "' "
            when "Contiene"
                whereclause = whereclause + " and "  + reportparam.fieldname + " like '%" + valorcampo + "%' "
            when "Mas grande que"
                whereclause = whereclause + " and "  + reportparam.fieldname + " > '" + valorcampo + "' "
            when "Mas grande o igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " >= '" + valorcampo + "' "
            when "Mas chico que"
                whereclause = whereclause + " and "  + reportparam.fieldname + " < '" + valorcampo + "' "
            when "Mas chico o igual a"
                whereclause = whereclause + " and "  + reportparam.fieldname + " <= '" + valorcampo + "' "
            else
                whereclause = whereclause + " and "  + reportparam.fieldname + " = '" + valorcampo + "' "
          end
      end         
    logger.debug  "---------------------------------------------------------------------------------------------------------------"
    logger.debug  whereclause
    logger.debug  "---------------------------------------------------------------------------------------------------------------"
      @reportsortbies.each do |reportsortby|
          case reportsortby.orden
            when "Ascendente"
                orderclause = orderclause + ((i>0) ? " , " : "") + reportsortby.fieldname + " asc " + ((i>0 && @reportsortbies.length <=i) ? " , " : "")
            when "Descendente"
                orderclause = orderclause + ((i>0) ? " , " : "") + reportsortby.fieldname + " desc " + ((i>0 && @reportsortbies.length <=i) ? " , " : "")
            else
          end
          i = i + 1
      end                 
      logger.debug "}}}}}}}}}}}}}}}}}}}}}}}}"
      logger.debug current_user.inspect
      logger.debug "}}}}}}}}}}}}}}}}}}}}}}}}"
      if (current_user.role.capitalize =="admin".capitalize)
        @valor = eval(@report.table.camelize.singularize).where(whereclause).order(orderclause)
        @informe = @valor.paginate(:per_page => @report.por_pagina, :page => params[:page]) 
        #@informe = eval(@report.table.camelize.singularize).paginate(:per_page => @report.por_pagina, :page => params[:page]) 
      else
        if eval(@report.table.camelize.singularize).respond_to?(:created_by)
          @valor = eval(@report.table.camelize.singularize).where(:created_by=>current_user.id, :user_id=>current_user.id).where(whereclause).order(orderclause)
        else
          @valor = eval(@report.table.camelize.singularize).where(whereclause).order(orderclause)
        end
        @informe = @valor.paginate(:per_page => @report.por_pagina, :page => params[:page])         
        #@informe = eval(@report.table.camelize.singularize).where(:sede_id=>current_user.sede_id, :created_by=>current_user.id, :user_id=>current_user.id).paginate(:per_page => @report.por_pagina, :page => params[:page])
      end
      render :layout => false  
  end
  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reports }
    end
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    @report = Report.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @report }
    end
  end

  # GET /reports/new
  # GET /reports/new.json
  def new
    @report = Report.new
    3.times do
      reportparam = @report.reportparams.build
      reportsortby = @report.reportsortbies.build
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @report }
    end
  end

  # GET /reports/1/edit
  def edit
    @report = Report.find(params[:id])
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(params[:report])

    respond_to do |format|
      if @report.save
        format.html { redirect_to edit_report_path(@report), notice: 'Report was successfully created.' }
        format.json { render json: @report, status: :created, location: @report }
      else
        format.html { render action: "new" }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reports/1
  # PUT /reports/1.json
  def update
    @report = Report.find(params[:id])

    respond_to do |format|
      if @report.update_attributes(params[:report])
        format.html { redirect_to imprimir_path(@report), notice: 'Report was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to reports_url }
      format.json { head :ok }
    end
  end
end
