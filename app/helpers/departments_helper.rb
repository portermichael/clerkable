module DepartmentsHelper

	def embed(youtube_id)
		content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
	end

	def embed_thumbnail(youtube_thumbnail_id)
		content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_thumbnail_id}?controls=0&loop=1&playlist=#{youtube_thumbnail_id}")
	end

end
