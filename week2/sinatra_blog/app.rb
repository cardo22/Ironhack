require_relative("lib/blog.rb")
require_relative("lib/post.rb")

require("sinatra")
require("sinatra/reloader")

blog = Blog.new
post1 = Post.new("post1", Time.new(2016, 01, 21), "I'm an alien!")
post2 = Post.new("post2", Time.new(2016, 01, 21), "Great minds think alike.")
post3 = Post.new("post3", Time.new(2016, 01, 21), "What a beautiful day!")

blog.add_post(post1) 
blog.add_post(post2)
blog.add_post(post3) 

# post.each do |  |

get "/blog_content" do 
	@blog = blog.latest_post
	"Welcome to the TodoList"
	erb(:blog)
end

get "/post_details/:post_id" do
	index = params[:post_id].to_i
	@blog = blog.latest_post
	unless @blog
		redirect to "/blog_content"
	erb(:post_details)
end










