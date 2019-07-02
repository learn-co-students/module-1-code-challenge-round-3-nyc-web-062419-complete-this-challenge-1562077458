class Magazine
  
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    #   + Returns the name of this magazine
    @category = category
    #   + Returns the category of this magazine
    Magazine.all << self
  end

  def self.all 
  #   + Returns an array of all Magazine instances
  	@@all 
  end

 	def article_titles
  	#   + Returns an array of the titles of all articles written for that magazine
  		article_array = Article.all.select do |article_instance|
  			article_instance.magazine == self 
  		end
  			article_array.map do |articles|
  				articles.title
  			end
  	end

	def contributors 
	#   + Returns an array of Author instances who have written for this magazine
		article_array = Article.all.select do |article_instance|
			article_instance.magazine == self 
		end
			article_array.map do |articles|
				articles.author
			end
	end

	def word_count
	#   + Returns a number that is the total number of words for all of the articles in this magazine
		article_array = Article.all.select do |article_instance|
			article_instance.magazine == self 
		end
			article_array.map do |articles|
				articles.word_count
		end.inject(:+)
	end

  	def self.find_by_name(name)
  	#   + Given a string of magazine's name, this method returns the first magazine object that matches

  		Article.all.find do |article_instance|
  			article_instance.magazine == name 
  		end
  	end

end
