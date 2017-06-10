class User < ApplicationRecord

	has_secure_password

	validates_uniqueness_of :email
	validates_presence_of :email, :first_name, :event_pin


end
