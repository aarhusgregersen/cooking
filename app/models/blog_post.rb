class BlogPost < ActiveRecord::Base

	belongs_to :User
	validates :title, presence: true, length: { :minimum => 10, :maximum => 60 }
	validates :post, presence: true
end
