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

  def self.most_verbose
    Author.all.max_by do |author|
      Article.all.select do |article|
        article == author
        end.map do |articles|
        articles.content.count
      end
      end
  end

  def add_article(magazine,title,content)
    Article.new(self,magazine,title,content)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    self.articles.map do |article|
      article.magazine
    end.uniq
  end

  def show_specialties
    self.magazines.map do |magazine|
      magazine.category
    end.uniq
  end

  def self.most_active
    @@all.max_by do |author|
      author.articles.count
    end
  end



end
