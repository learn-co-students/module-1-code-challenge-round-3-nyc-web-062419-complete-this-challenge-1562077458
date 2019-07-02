class Author
  
  attr_reader :name

  @@all = []

  def initialize(name)
  #   + Returns the name of the author as a string
    @name = name
  	Author.all << self
  end

  def self.all 
  #   + Returns an array of all Author instances
  	@@all 
  end

  def add_article(magazine, title, content)
  #   + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
  	Article.new(self, magazine, title, content)
  end

  def articles
  #   + Returns an array of Article instances the author has written
  	Article.all.select do |article_instance|
  		article_instance.author == self
  	end
  end

  def magazines
  #   + Returns a **unique** array of Magazine instances for which the author has contributed to
  	authors_magazines = Article.all.select do |article_instance|
  		article_instance.author == self
  	end
  	authors_magazines.map do |magazines|
  		magazines.magazine
  	end.uniq
  end

  def show_specialties
  #   + Returns a **unique** array of categories of the magazines for which the author has contributed to
  	authors_magazines = Article.all.select do |article_instance|
  		article_instance.author == self
  	end
  	authors_magazines.map do |magazines|
  		magazines
  	end.uniq
  end

  def self.most_active
  #   + Returns the Author instance who has written the greatest number of articles
  	authors = Article.all.select do |article_instance|
  		article_instance.author 
  	end
  	authors.map do |author|
  		author.author
  	end.max_by {|item| freq[item]}
  end
  
  def self.most_verbose
  #   + Returns the Author instance who has the longest article by word count
  	authors = Article.all.select do |article_instance|
  		article_instance.content
  	end
  	b = authors.map do |author|
  		author.content
  	end.sort_by {|obj| obj.size}.reverse
  	b[0]
  end

end

