class Author
  attr_reader :name
  attr_accessor :articles

  @@all = []

  def initialize(name)
    @name = name
    @articles = []
    Author.all << self
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select { |artti| artti.author == self }
  end

  def magazines
    articlesByAuthor = Article.all.select { |artti| artti.author == self }
    articlesByAuthor.map { |artti| artti.magazine }.uniq
  end

  def show_specialties
    articlesByAuthor = Article.all.select { |artti| artti.author == self }
    articlesByAuthor.map { |artti| artti.magazine.category }.uniq
  end

  def self.most_active
    Author.all.max_by { |auth| auth.articles.length }
  end

  def self.most_verbose
    #returns the author with longest article by word count
    Article.all.max_by { |artti| artti.content.split(" ").length }.author
  end

  def self.all
    @@all
  end
end
