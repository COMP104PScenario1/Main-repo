class User < ActiveRecord::Base
	has_many :listelements
	has_secure_password
end
