class Event < ActiveRecord::Base


  	attr_accessible :description, :endDate, :image, :local, :name, :startDate
	
	#references#
	has_many :notices
	belongs_to :association

	def self.getEventsN(n)
		 Event.find(:all, :order => "start_date", :limit => n).reverse
	end

end
