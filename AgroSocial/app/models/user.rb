require 'digest/sha1'

class User < ActiveRecord::Base
	#attributes#
  	attr_accessible :adress, :age, :email, :genre, :name, :password

	#validation#
	validates :adress, :email, :name, :password, presence: true
	validates :email, :name, uniqueness: true
end
