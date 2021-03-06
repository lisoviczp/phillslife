class Picture < ActiveRecord::Base
	# attr_accessor :title, :approved this messed everything up!!
	# attr_accessor :approved
	
	# after initialize is for whenever its loaded form db or instantiated
	# after_initialize :defaults
	after_create :defaults

	has_attached_file :image
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	

	def defaults
		self.approved = false
	end

	def approvePicture
		self.approved=false
	end 

	def approvePictureTrue
		self.approved=true
	end


	def getSrc
		if self.vibeType == "soundcloud" or self.vibeType == "2"
			source ="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/"
			source += self.uid
			source += "&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"
		else self.vibeType == "youtube" or self.vibeType == "3"
			source ="https://www.youtube.com/embed/"
			source += self.uid if self.uid
		end	
	end

	def getSrcSoundcloud
		source ="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/"
		source += self.uid
		source += "&amp;auto_play=true&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"
	end

	def getNextSongId
		this_id = self.id
		for eachItem in this_id+1..Picture.last.id
				thisPic = Picture.where(id: eachItem)
				if thisPic.vibeType == 'soundcloud'
					thisPic.id
				else
					next
				end
		end
		false
	end




end
