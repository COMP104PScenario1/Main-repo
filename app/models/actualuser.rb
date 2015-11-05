class Actualuser < ActiveRecord::Base
	has_many :actuallistelements
	has_secure_password
end
