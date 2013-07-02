require 'digest/sha1'

class User < ActiveRecord::Base
  	attr_accessible :adress, :age, :email, :genre, :name, :password

	def self.authenticate(name, pass)
		user = find(:first, :conditions=>["name = ?", name])
		return nil if user.nil?
		return user if User.encrypt(pass)==user.password
		nil
	end  

	def self.encrypt(pass)
		Digest::SHA1.hexdigest(pass)
	end
end
