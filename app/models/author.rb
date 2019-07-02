class Author

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all
    @@all
  end

  def self.most_verbose
    self.all.max_by {|author| author.longest_article.length}
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def article_contents
    contents = self.articles.collect {|article| article.content}
    contents.collect {|article_content| article_content.split(" ")}
  end

  def longest_article
    self.article_contents.max_by {|array| array.length}
  end

  def magazines
    self.articles.collect {|article| article.magazine}.uniq
  end

  def show_specialties
    self.magazines.collect {|magazine| magazine.category}.uniq
  end

  def self.most_active
    self.all.sort_by {|author| author.articles.length}.last
  end

end
