class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  def add.article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def self.most_verbose
    #returns the author with longest article by word count
    Article.all.max_by { |artti| artti.content.split(" ").length }.author
  end

  def self.all
    @@all
  end
end
