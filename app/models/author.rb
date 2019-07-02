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
    #max by author word count
    Author.all.max_by do |author|
      #gets all articles written by author
      author.articles.map do |article|
        article.content
      end.max_by do |content|
        content.size
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
