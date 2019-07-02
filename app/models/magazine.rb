class Magazine

  @@all = []

  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end

  def article_titles
    self.articles.collect {|article| article.title}
  end

  def contibutors
    self.articles.collect {|article| article.author}.uniq
  end

  def word_count
    content = self.articles.collect {|article| article.content}
    content_arrays = content.collect {|article_content| article_content.split(" ")}
    content_arrays.flatten.length
  end

end
