class Blog
	attr_accessor(:post )
	def initialize
		@post = []
	end
	def add_post(single_post)
		@post.push(single_post)
	end
	def latest_post
		@blog.sort { | post1, post2 | post2.date <=> post1.date}
	end
end
