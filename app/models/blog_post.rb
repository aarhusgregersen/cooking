class BlogPost < ActiveRecord::Base

	belongs_to :User
	validates :title, presence: true, length: { :maximum => 60 }
	validates :post, presence: true

end
