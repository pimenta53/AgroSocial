class Notice < ActiveRecord::Base
  	attr_accessible :author, :content, :date, :title
end
