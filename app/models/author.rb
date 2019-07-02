
class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_verbose
    array = Article.all.map do |article|
      article.author == self
      array.max_by { |article| article.content.length }
    end
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    #or I can just call the method : articles
    array = Article.all.select do |article|
      article.author == self
      array.map do |article|
        article.magazine
      end.uniq
    end
  end

  def show_specialties
    magazines.select do |article|
      article.magazine.category
    end.uniq
  end

  def articles_authors
    total = 0
    arr = Article.all.map do |article_instance|
      total += article_instance.article == self
    end
    total
  end

  def self.most_active
    self.articles_authors.max
  end
end
