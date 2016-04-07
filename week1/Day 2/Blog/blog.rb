class Blog
	def initialize()
		@safe_post = []
	end
	def add_post(blog)
		@safe_post.push(blog)
	end
	def publish_front_page 
		@safe_post.each do |post|  
			post.title
			puts "*"*post.title.length
		end
	end
end

