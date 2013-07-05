class FeedNew < ActiveRecord::Base
	#attributes#
  	attr_accessible :name, :url

	#validation#
  	validates :name, :url, presence: true
end
