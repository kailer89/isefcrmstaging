class ProspectosMailer < ActionMailer::Base
  default from: "current_user.email@test.com"
  
  def nuevo_prospecto(prospecto,usermail,username)
    @prospecto = prospecto
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{usermail}", :subject => "Creado Nuevo Prospecto")
  end  

  def email_a_pdf(correo,nombredelmail,prospecto,email)
  	@prospecto = prospecto
  	attachments[nombredelmail] = email
  	mail(:to => correo, :subject => "awesome pdf, check it")
  end

end
