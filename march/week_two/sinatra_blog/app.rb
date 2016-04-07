require 'sinatra'

require_relative("lib/blog.rb")
require_relative("lib/post.rb")
my_blog = Blog.new

get '/blog_home' do 
	erb(:blog_home)
end

post '/post_page' do
	@my_blog = my_blog
	date = Time.now
	post_title = params[:title]
	post_text = params[:post_text]
	cat = params[:category]
	auth = params[:author]
	@first_post = Post.new(post_title, cat, auth, date, post_text)
	@my_blog.add_post(@first_post)
	@my_blog.latest_post
	erb(:post)
end



