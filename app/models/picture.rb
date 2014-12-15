class Picture < ActiveRecord::Base
	attr_accessor :title, :approved

	after_initialize :defaults

	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def defaults
		self.approved = false
	end

	def approvePicture
		self.approved=true
	end 


end
