class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  def articles
    Article.all.select do |article_imp|
      article_imp.author == self
    end
  end

  # def self.most_verbose

  #   end
  # end
 #// Trying to use #articles as a helper to iterate through Articles to find the one that is most verbose, having an issue^^

  def self.all
    @@all
  end

end
