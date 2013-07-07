class Notice < ActiveRecord::Base

	def self.getNoticesN(n)
		 Notice.find(:all, :order => "date_time", :limit => n).reverse
	end

end
