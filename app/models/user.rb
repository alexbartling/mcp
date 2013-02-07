class User < ActiveRecord::Base
	has_secure_password
	has_many :authorizations
	validates :name, :email, :presence => true


	attr_accessible :name, :email, :password, :password_confirmation

	before_save { |user| user.email = user.email.downcase }
  	before_save :create_remember_token
	private

  		def create_remember_token
      		self.remember_token = SecureRandom.urlsafe_base64
    	end
end
