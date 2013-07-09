class Event < ActiveRecord::Base

	#references#
	has_many :notices
	belongs_to :association

	def self.getEventsN(n)
		 Event.find(:all, :order => "start_date", :limit => n).reverse
	end

end
