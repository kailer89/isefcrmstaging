class Prospecto < ActiveRecord::Base
  include PublicActivity::Model
  tracked
	has_many :direccions, :dependent => :destroy
	has_many :interes_basicos, :dependent => :destroy


	has_many :medio_de_contactos, :dependent => :destroy
	has_many :interes_academicos, :dependent => :destroy
	has_many :accion_estrategicas, :dependent => :destroy
	has_many :plan_de_descuentos, :dependent => :destroy
  has_many :subsedes, :through =>:interes_basicos
  has_many :programa_de_interes, :through =>:interes_basicos
  has_many :ultimo_grado_de_estudios , :through =>:interes_basicos
  has_many :preparatoria_o_universidad_de_origens , :through =>:interes_basicos
  has_many :municipio_de_la_preparatoria_o_universidad_de_origens , :through =>:interes_basicos
  has_many :nivels  , :through =>:interes_basicos
  has_many :turnos , :through =>:interes_basicos
  has_many :periodo_para_ingresars, :through =>:interes_basicos
  has_many :status_de_interes_de_prospecto_validados, :through =>:interes_basicos
  has_many :modalidads, :through =>:interes_basicos


	belongs_to :user
	belongs_to :sede
  belongs_to :subsede
	belongs_to :nacionalidad
	belongs_to :solicitante
  
  belongs_to :mercado_metum
  belongs_to :territorio
  belongs_to :plan_de_ventum
  belongs_to :programa
  belongs_to :grupo

	validates :nombre, :presence => true	
	validates :apellido_paterno, :presence => true
  validates_presence_of :email
  validates_uniqueness_of :nombre, :scope => [:apellido_paterno, :fecha_de_nacimiento, :sexo, :email]
  validate :any_present?

  validates_format_of :email, :with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i , :if => lambda {self.email != nil}
  def any_present?
    if %w(telefono_particular telefono_movil otro_telefono).all?{|attr| self[attr].blank?}
      if (self.telefono_particular.blank?) or (!self.telefono_movil.blank? or !self.otro_telefono.blank?)
        errors.add :telefono_particular, "Al menos un telefono es requerido"
      end
      if (self.telefono_movil.blank?) or (!self.telefono_particular.blank? or !self.otro_telefono.blank?)
        errors.add :telefono_movil, "Al menos un telefono es requerido"
      end
      if (self.otro_telefono.blank?) or (!self.telefono_movil.blank? or !self.telefono_particular.blank?)
        errors.add :otro_telefono, "Al menos un telefono es requerido"
      end
    end
  end


 validate :subsede_is_in_selected_sede

private
def subsede_is_in_selected_sede
  logger.debug "-------------xxxxxxxxxxxx-------------------11111111111111111111111111111111111111111"
  if self.interes_basicos.first != nil 

    if not self.interes_basicos.first.subsede.nil?
      #sede = Sede.where(:id=>self.interes_basicos.first.subsede.sede_id).first
      subsedess = Subsede.where(:id=>self.interes_basicos.first.subsede.id).where(:sede_id=>self.interes_basicos.first.sede.id).first
      logger.debug "--------------------------------11111111111111111111111111111111111111111"
      if subsedess == nil
        sedeCorrecta = Sede.where(:id=>self.interes_basicos.first.subsede.sede_id).first
        errors.add :sede_id, "La Extension de la sede no es valida por favor seleccione la correcta: " + sedeCorrecta.nombre
      end
    end
  end
end
  #validates :telefono_particular, :presence => true, :unless => lambda { self.otro_telefono.blank? or self.telefono_movil.blank? }
  #validates :telefono_movil, :presence => true, :unless => lambda { self.otro_telefono.blank? or self.telefono_particular.blank? }
  #validates :otro_telefono, :presence => true , :unless => lambda { self.telefono_movil.blank? or self.telefono_particular.blank? }

  	accepts_nested_attributes_for :direccions, :reject_if => :all_blank, :allow_destroy => true
  	accepts_nested_attributes_for :interes_basicos, :reject_if => :all_blank, :allow_destroy => true
  	accepts_nested_attributes_for :medio_de_contactos, :reject_if => :all_blank, :allow_destroy => true
  	accepts_nested_attributes_for :interes_academicos, :reject_if => :all_blank, :allow_destroy => true
  	accepts_nested_attributes_for :accion_estrategicas, :reject_if => :all_blank, :allow_destroy => true
  	accepts_nested_attributes_for :plan_de_descuentos, :reject_if => :all_blank, :allow_destroy => true

  scope :my, lambda { |n| 
    {
      :conditions => ["created_by = ? or user_id = ? ", n, n]
    }
  }  
  scope :yesterday, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Time.now.beginning_of_day - 86400]
    }
  }
  scope :tomorrow, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Date.tomorrow]
    }
  }     
  scope :today, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Date.today]
    }
  }
  scope :monday, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Time.now.beginning_of_week(start_day = :monday)]
    }
  }
  scope :thuesday, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Time.now.beginning_of_week(start_day = :monday) + (60*60*(24*2))]
    }
  }
  scope :wednesday, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Time.now.beginning_of_week(start_day = :monday) + (60**(24*3))]
    }
  }
  scope :thursday, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Time.now.beginning_of_week(start_day = :monday) + (60*6*(24*4))]
    }
  }
  scope :friday, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Time.now.beginning_of_week(start_day = :monday) + (60*60*(24*5))]
    }
  }
  scope :saturday, lambda { 
    {
      :conditions => ["date(created_at) = date(?)", Time.now.beginning_of_week(start_day = :monday) + (60*60*(24*6))]
    }
  }
  scope :sunday, lambda { 
    {
      :conditions => ["date(created_at) >=date( )?", Time.now.beginning_of_week(start_day = :monday) + (60*60*(24*7))]
    }
  }               
    	
  def nombre_completo
    nombre + " " + apellido_paterno + " " + apellido_materno
  end 
  
  has_paper_trail

end

