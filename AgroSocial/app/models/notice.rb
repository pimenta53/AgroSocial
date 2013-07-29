class Notice < ActiveRecord::Base



	#attributes#
  	attr_accessible :author, :content, :date, :title
  	
	#references#
	belongs_to :event

	def self.getNoticesN(n)
		 Notice.find(:all, :order => "date_time", :limit => n).reverse
	end

end
