class Recipe < ActiveRecord::Base

	before_save :destroy_image?
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

	def image_delete
	    @image_delete ||= "0"
	end

	def image_delete=(value)
	  @image_delete = value
	end

	private

	def destroy_image?
	  self.image.clear if @image_delete == "1"
	end


end
