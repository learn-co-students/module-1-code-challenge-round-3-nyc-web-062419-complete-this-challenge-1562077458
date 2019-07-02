class Article

	attr_reader :author, :magazine, :title, :content

	@@all = []

	def initialize(author, magazine, title, content)
	#   + Returns the author for that given article
	#   + Returns the magazine for that given article
	#   + Returns the title for that given article
	#   + Returns the content for that given article
		@author = author
		@magazine = magazine 
		@title = title
		@content = content
		Article.all << self
	end

	def self.all 
	#   + Returns an array of all Article instances
		@@all 
	end


end

