class Song < ActiveRecord::Base

	def get_src
		b= url.index('src=')
		e = url.index('></')
		src = url[b+5..e-2]
	end

end


		# begin = @song.url.index('src=')
		# end = @song.url.index('></')

		# src=@song.url[begin+5..end-2]