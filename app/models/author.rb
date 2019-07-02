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

  # def longest_article
  #   my_articles = Article.all.select {|article| article.author == self}
  #   my_article_arrays = my_articles.collect {|article| article.content.split(' ')}
  # end

  def self.most_verbose
    self.all.sort_by {|author| author.longest_article.length}.last
  end

  def add_article(magazine, title, content)
    Article.new (self, magazine, title, content)
  end

  def articles
    Article.all.select {|article| article.author == self}
  end

  def article_contents
    contents = self.articles.collect {|article| article.content}
    content_arrays = content.collect {|article_content| article_content.split(" ")}
    content_arrays.sort_by {|array| array.length}
  end

  def longest_article
    self.article_contents.last
  end

  def magazines
    self.articles.collect {|article| article.magazine}.uniq
  end

  def show_specialties
    self.magazines.collect {|magazine| magazine.category}.uniq
    }
  end

  def self.most_active
    self.all.sort_by {|author| author.articles.length}.last
  end

end
