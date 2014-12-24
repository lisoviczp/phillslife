class Picture < ActiveRecord::Base
	# attr_accessor :title, :approved this messed everything up!!

	# after initialize is for whenever its loaded form db or instantiated
	# after_initialize :defaults
	after_create :defaults

	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def defaults
		self.approved = false
	end

	def approvePicture
		self.approved=true
	end 


end
