class Association < ActiveRecord::Base
	#references#
	has_many :events

	#attributes#
  	attr_accessible :description, :email, :name, :password, :website
end
