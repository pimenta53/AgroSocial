class Event < ActiveRecord::Base
	has_many :notices
  	attr_accessible :description, :endDate, :image, :local, :name, :startDate
end
