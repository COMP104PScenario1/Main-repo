class Actualuser < ActiveRecord::Base
	has_many :listelements
	has_secure_password
end
