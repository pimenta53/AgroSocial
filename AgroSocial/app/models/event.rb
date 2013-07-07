class Event < ActiveRecord::Base

	def self.getEventsN(n)
		 Event.find(:all, :order => "start_date", :limit => n).reverse
	end

end
