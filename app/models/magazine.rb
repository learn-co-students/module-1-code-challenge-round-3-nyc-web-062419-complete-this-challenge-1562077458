class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    arr = Article.all.select do |article|
      article.magazine == self
      arr.map do |article|
        article.title
      end
    end
  end

  def contributors
    Article.all.select do |article|
      article.author == self
    end
  end
end
