class Recipe < ActiveRecord::Base

	has_attached_file :recipe_image, styles: { 	thumb: "100x100>",
																							big_thumb: "200x200",
																							medium: "300x300>",
																							medium_large: "450x450",
																							large: "600x600",
																							huge: "1000x1000"}, default_url: "/images/missing_:style.png"
  validates_attachment_content_type :recipe_image, content_type: /\Aimage\/.*\Z/

	belongs_to :User
	validates :title, :description, :instructions, presence: true
	# validates :title, presence: true
end
