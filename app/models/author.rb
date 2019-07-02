class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all
    @@all
  end

  # this!!!!!!!
  def self.most_verbose
  end

  def helper
    Article.all.select {|instance| instance.author == self}
  end

  def add_article(magazine, title, content)
    var = Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select {|art| art.author == self}
  end

  def magazines
    helper.map {|art| art.magazine}.uniq
  end

  def show_specialties
    helper.map {|art| art.magazine}.map{|magazine_instance| magazine_instance.category}.uniq
  end

  ##### do this
  def self.all
    Article.all.
  end

end
