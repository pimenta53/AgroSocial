class Event < ActiveRecord::Base
	#references#
	has_many :notices

	#attributes#
  	attr_accessible :description, :endDate, :image, :local, :name, :startDate

	#validation#
  	validates :name, :description, presence: true
end
