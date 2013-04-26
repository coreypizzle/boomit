module ApplicationHelper
	def avatar_url(user)
 		 default_url = "#{image_path('bgrav.png')}"
 		 gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
  		"http://gravatar.com/avatar/#{gravatar_id}.png?s=200&d=wavatar"
	end

	def avatar_url_small(user)
 		 default_url = "#{root_url}images/bgrav.png"
 		 gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
  		"http://gravatar.com/avatar/#{gravatar_id}.png?s=40&d=wavatar"
	end
end
