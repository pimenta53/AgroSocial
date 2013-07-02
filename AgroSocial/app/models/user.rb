require 'digest/sha1'

class User < ActiveRecord::Base
  	attr_accessible :adress, :age, :email, :genre, :name, :password

	def self.encrypt(pass)
		Digest::SHA1.hexdigest(pass)
	end
end
