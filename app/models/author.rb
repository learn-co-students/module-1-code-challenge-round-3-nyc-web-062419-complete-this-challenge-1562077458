class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  def articles
    Article.all.select do |article_int|
      article_int.author == self
    end
  end

  def self.most_verbose
    Article.all.select do |article_int|
      if article_int.author == self
        return article_int.content.size
      end
    end
  end
 #// Trying to use #articles as a helper to iterate through Articles to find the one that is most verbose, having an issue^^
## returning an empty array for me

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select do |article_int|
      article_int.author  == self
    end
  end

  def self.all
    @@all
  end

end
