class Author
  
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  #doesnt work
  def self.most_verbose
    Article.all.map do |article_instance|
    article_instance.content.count
    end
  end

  def add_author(magazine, title, content)
    Article.new(self,magazine,title,content)
  end

  def articles
    Article.all.select do |article_instances|
      article_instances.author == self
    end
  end

  def magazines
    articles.select do |article_instances|
      article_instances.magazine == self
    end
  end

  def show_specialities
    Magazine.all.collect do |magazine_instances|
    magazine_instances.category == self
  end
  end



  def self.all
    @@all
  end



end
