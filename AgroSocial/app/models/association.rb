class Association < ActiveRecord::Base
	has_many :events
  	attr_accessible :description, :email, :name, :password, :website
end
