# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Prospectos", "Tareas", "Notas", "Llamadas"].each do |nombre|
  Rpm.find_or_create_by_nombre(nombre)
end

@role = Role.new
@role.nombre = "AC"
@role.descripcion = "Asesor a Cargo"
@role.nivel = "Local"
@role.save

    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "Lectura"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "Lectura"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "Escritura"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "Escritura"
when "solicitantes"
@role_permision.permiso = "Escritura"
when "examinados"
@role_permision.permiso = "Escritura"
when "admitidos"
@role_permision.permiso = "Escritura"
when "inscritos"
@role_permision.permiso = "Escritura"
when "campana_socials"
@role_permision.permiso = "Escritura"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "Escritura"
when "reports"
@role_permision.permiso = "Escritura"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "CP"
@role.descripcion = "Coordinador de Promocion"
@role.nivel = "Local"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "Lectura"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "Escritura"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "Escritura"
when "contactos"
@role_permision.permiso = "Escritura"
when "metas_globales"
@role_permision.permiso = "Lectura"
when "prospectos"
@role_permision.permiso = "Lectura"
when "solicitantes"
@role_permision.permiso = "Lectura"
when "examinados"
@role_permision.permiso = "Lectura"
when "admitidos"
@role_permision.permiso = "Lectura"
when "inscritos"
@role_permision.permiso = "Lectura"
when "campana_socials"
@role_permision.permiso = "Escritura"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "Escritura"
when "reports"
@role_permision.permiso = "Escritura"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "D"
@role.descripcion = "Director"
@role.nivel = "Local"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "Escritura"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "Escritura"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "Escritura"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "Escritura"
when "contactos"
@role_permision.permiso = "Lectura"
when "metas_globales"
@role_permision.permiso = "Escritura"
when "prospectos"
@role_permision.permiso = "Lectura"
when "solicitantes"
@role_permision.permiso = "Escritura"
when "examinados"
@role_permision.permiso = "Lectura"
when "admitidos"
@role_permision.permiso = "Escritura"
when "inscritos"
@role_permision.permiso = "Lectura"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "Lectura"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "A"
@role.descripcion = "Administrador"
@role.nivel = "Local"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "Lectura"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "Escritura"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "Lectura"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "Escritura"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "CA"
@role.descripcion = "Coordinador Academico"
@role.nivel = "Local"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)
case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "Escritura"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "Lectura"
when "solicitantes"
@role_permision.permiso = "Lectura"
when "examinados"
@role_permision.permiso = "Escritura"
when "admitidos"
@role_permision.permiso = "Lectura"
when "inscritos"
@role_permision.permiso = "Lectura"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "AL"
@role.descripcion = "Asesores Locales"
@role.nivel = "Local"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "Lectura"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "Lectura"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "TL"
@role.descripcion = "Todos los Locales"
@role.nivel = "Local"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "DN"
@role.descripcion = "Director Nacional"
@role.nivel = "Nacional"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "Lectura"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "Lectura"
when "metas_globales"
@role_permision.permiso = "Lectura"
when "prospectos"
@role_permision.permiso = "Lectura"
when "solicitantes"
@role_permision.permiso = "Lectura"
when "examinados"
@role_permision.permiso = "Lectura"
when "admitidos"
@role_permision.permiso = "Lectura"
when "inscritos"
@role_permision.permiso = "Lectura"
when "campana_socials"
@role_permision.permiso = "Lectura"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "Lectura"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "ACRM"
@role.descripcion = "Coordinadora Nacional de Promocion"
@role.nivel = "Nacional"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "Escritura"
when "achievments"
@role_permision.permiso = "Escritura"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "Escritura"
when "oferta_educativas"
@role_permision.permiso = "Escritura"
when "colegiaturas"
@role_permision.permiso = "Escritura"
when "division_territorials"
@role_permision.permiso = "Escritura"
when "nacional_de_aperturas"
@role_permision.permiso = "Escritura"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "Escritura"
when "contactos"
@role_permision.permiso = "Escritura"
when "metas_globales"
@role_permision.permiso = "Escritura"
when "prospectos"
@role_permision.permiso = "Escritura"
when "solicitantes"
@role_permision.permiso = "Escritura"
when "examinados"
@role_permision.permiso = "Escritura"
when "admitidos"
@role_permision.permiso = "Escritura"
when "inscritos"
@role_permision.permiso = "Escritura"
when "campana_socials"
@role_permision.permiso = "Escritura"
when "pregunta"
@role_permision.permiso = "Escritura"
when "casos"
@role_permision.permiso = "Escritura"
when "reports"
@role_permision.permiso = "Escritura"
when "sedes"
@role_permision.permiso = "Escritura"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "AN"
@role.descripcion = "Administradora Nacional"
@role.nivel = "Nacional"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "Lectura"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "Escritura"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "Escritura"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "CAN"
@role.descripcion = "Coordinador Academico Nacional"
@role.nivel = "Nacional"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "Escritura"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "Escritura"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "TN"
@role.descripcion = "Todos los Nacionales"
@role.nivel = "Nacional"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "AS"
@role.descripcion = "Asesores de todas las sedes"
@role.nivel = "Mix"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "Lectura"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "CPS"
@role.descripcion = "Coordinadores de Promocion de todas las sedes"
@role.nivel = "Mix"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "Lectura"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "CAS"
@role.descripcion = "Coodinadores Academicos de todas las sedes"
@role.nivel = "Mix"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "CASS"
@role.descripcion = "Coordinadores Administrativos de todas las sedes"
@role.nivel = "Mix"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end

@role = Role.new
@role.nombre = "DS"
@role.descripcion = "Directores de todas las sedes"
@role.nivel = "Mix"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "No Disponible"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "No Disponible"
when "colegiaturas"
@role_permision.permiso = "No Disponible"
when "division_territorials"
@role_permision.permiso = "No Disponible"
when "nacional_de_aperturas"
@role_permision.permiso = "No Disponible"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "No Disponible"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "Lectura"
when "pregunta"
@role_permision.permiso = "No Disponible"
when "casos"
@role_permision.permiso = "No Disponible"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"

else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end
  
@role = Role.new
@role.nombre = "ALYN"
@role.descripcion = "Abierto para todos Locales y Nacionales"
@role.nivel = "Mix"
@role.save
    ActiveRecord::Base.connection.tables.sort_by{|table| table}.each do |table|

      @role_permision = @role.role_permisions.build(:objeto=>table, :user_id=>1,:role_id=>@role.id)

case table
when "roles"
@role_permision.permiso = "Lectura"
when "achievments"
@role_permision.permiso = "No Disponible"
when "mi_plan_estrategico_de_promocion_peps"
@role_permision.permiso = "No Disponible"
when "oferta_educativas"
@role_permision.permiso = "Lectura"
when "colegiaturas"
@role_permision.permiso = "Lectura"
when "division_territorials"
@role_permision.permiso = "Lectura"
when "nacional_de_aperturas"
@role_permision.permiso = "Lectura"
when "equipo_de_alto_rendimientos"
@role_permision.permiso = "Lectura"
when "contactos"
@role_permision.permiso = "No Disponible"
when "metas_globales"
@role_permision.permiso = "No Disponible"
when "prospectos"
@role_permision.permiso = "No Disponible"
when "solicitantes"
@role_permision.permiso = "No Disponible"
when "examinados"
@role_permision.permiso = "No Disponible"
when "admitidos"
@role_permision.permiso = "No Disponible"
when "inscritos"
@role_permision.permiso = "No Disponible"
when "campana_socials"
@role_permision.permiso = "No Disponible"
when "pregunta"
@role_permision.permiso = "Lectura"
when "casos"
@role_permision.permiso = "Lectura"
when "reports"
@role_permision.permiso = "No Disponible"
when "sedes"
@role_permision.permiso = "No Disponible"
else
@role_permision.permiso = "Escritura"


end
@role_permision.save
    end

@AdminRol = Role.where(:nombre=>"A").first
adminUser= User.new({ :email => 'israel.valdez.89@gmail.com',:username=>"admin" ,:role=>@AdminRol.id,:password => '123456', :password_confirmation => '123456'})
adminUser.save