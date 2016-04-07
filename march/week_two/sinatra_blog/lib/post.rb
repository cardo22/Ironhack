class Post
	attr_accessor(:title, :category, :author, :date, :text)
	def initialize(title, category, author, date, text)
		@title = title
		@category = category
		@author = author
		@date = date
		@text = text
	end
end