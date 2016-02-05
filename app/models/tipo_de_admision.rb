class TipoDeAdmision < ActiveRecord::Base
	has_many :solicitantes
end
