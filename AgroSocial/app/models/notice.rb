class Notice < ActiveRecord::Base
	#attributes#
  	attr_accessible :author, :content, :date, :title

	#validation#
  	validates :author, :content, :date, :title, presence: true
end
