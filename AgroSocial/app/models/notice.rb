class Notice < ActiveRecord::Base

	#references#
	belongs_to :event

	def self.getNoticesN(n)
		 Notice.find(:all, :order => "date_time", :limit => n).reverse
	end

end
