require_relative "../lib/blog.rb"
require_relative "../lib/post.rb"

RSpec.describe "#blog_methods" do
	before :each do
		@date = Time.now
		@blog = Blog.new
		@first_post = Post.new("Chubby Chacer", @date, "I love plus sizes!" )
	end

	it "add post to post array" do
		expect(@blog.add_post(@first_post)).to eq([@first_post])
	end

	# it "sort post from newest to oldest" do
	# 	expect(@blog.latest_post)to eq([])
	# end
end