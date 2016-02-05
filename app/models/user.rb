class User < ActiveRecord::Base
  belongs_to :sede
  belongs_to :tarea
  belongs_to :memo
  belongs_to :llamada
  belongs_to :correo
  belongs_to :post
  belongs_to :event
  belongs_to :attachment
  belongs_to :tweet
  has_many :barra_favoritos
  has_many :prospectos
  has_many :favoritos, :through => :barra_favoritos
  has_many :authentications
  has_many :achievments
  has_many :mi_plan_estrategico_de_promocion_peps

  has_many :employmentships
  has_many :empleados, :through => :employmentships
  
  #has_many :sedes
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password,:password_confirmation, :remember_me,:role,:empleado_tokens, :sede_id,:avatar_url

  def role_symbols
    [role.to_sym]
  end
  
  attr_reader :empleado_tokens
  
  def empleado_tokens=(ids)
    self.empleado_ids = ids.split(",")
  end      

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token.extra.raw_info
    if user = self.find_by_email(data.email)
      user
    else # Create a user with a stub password. 
      self.create(:username=>data['email'],:email => data.email, :password => Devise.friendly_token[0,20],:role=>"Admin") 
    end
  end

  def self.find_for_open_id(access_token, signed_in_resource=nil)
    data = access_token.info
    if user = User.where(:email => data["email"]).first
      user
    else
      User.create!(:username=>data['email'],:email => data["email"], :password => Devise.friendly_token[0,20],:role=>"Admin")
    end
  end
  def self.find_for_googleapps_oauth(access_token, signed_in_resource=nil)
    data = access_token['info']
    
    if user = User.where(:email => data['email']).first 
      return user
    else #create a user with stub pwd
      User.create!(:username=>data['email'],:email => data['email'], :password => Devise.friendly_token[0,20],:role=>"Admin")
    end
  end

  def self.find_for_twitter_oauth(access_token, signed_in_resource=nil)
    data = access_token['info']
    if user = User.where(:username => data['nickname']).first   
      return user
    else #create a user with stub pwd
      User.create!(:username=>data['nickname'], :password => Devise.friendly_token[0,20],:email=>"pending#{data['nickname']}@pendingtwitter.com",:role=>"Admin")
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.googleapps_data'] && session['devise.googleapps_data']['user_info']
        user.email = data['email']
      end
      if data = session['devise.twitter_data'] && session['devise.twitter_data']['info']
        user = User.where(:username => data['nickname']).first     
        user.username = data['nickname']                     
      end   
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"]
      end     
    end
  end

end
