require_relative("lib/blog.rb")
require_relative("lib/post.rb")
                     #title       #date       #text
post1 = Post.new("Iron Blog", "01/12/16", "Had a rough day")
#creating an instance of a post/defining what the post do
post2 = Post.new("Gym Time", "02/13/16", "Do squats")

# post3 = Post.new()
blog1 = Blog.new
blog1.add_post(post1)
blog1.add_post(post2)

