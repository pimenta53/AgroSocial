class User < ActiveRecord::Base
  	attr_accessible :adress, :age, :email, :genre, :name, :password
end
