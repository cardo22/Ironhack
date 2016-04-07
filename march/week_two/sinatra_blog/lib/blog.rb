class Blog
	attr_reader :post 
	def initialize
		@current_page = 1
		@post = []
	end

	def add_post(new_post)
		@post.push(new_post)
	end

	def latest_post
		@post.sort! do |x,y| 
				y.date <=> x.date
		end			
	end

	#these are for when I am running the app in the terminal
	#| | | | | | | | 
	#V V V v v v v v

	def publish_front_page
		first = (@current_page - 1) * 3
		last = (first + 3) - 1
		page = first..last
		@post[page].each do |each_post|
			puts "#{each_post.title} #{each_post.date}"
			puts "#{each_post.text}"
			puts "------------------------------------" 
		end
	 	puts "next >"
	end
	def next_page
		@current_page = @current_page + 1
		publish_front_page
		puts "< prev next >"
	end
	def previous_page
		@current_page = @current_page - 1
		publish_front_page
		puts "< prev  next >"
	end
end