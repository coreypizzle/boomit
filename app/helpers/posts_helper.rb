module PostsHelper
	def avatar_url(user)
 		 default_url = "#{root_url}images/guest.png"
 		 gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
  		"http://gravatar.com/avatar/#{gravatar_id}.png?s=200{CGI.escape(default_url)}"
	end

	def avatar_url_small(user)
 		 default_url = "#{root_url}images/guest.png"
 		 gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
  		"http://gravatar.com/avatar/#{gravatar_id}.png?s=40{CGI.escape(default_url)}"
	end
end
