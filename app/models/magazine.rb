class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def articles 
    Article.all.select do |article_instance|
      article_instance.magazine == self
    end
  end

  def self.find_by_name(this_name)
    Magazine.all.select do |mag_instance|
      mag_instance.name == this_name
    end
  end

  def article_titles
    self.articles.collect do |article_instance|
      article_instance.title
    end
  end

  def contributors
    self.articles.collect do |article_instance|
      article_instance
    end
  end

  def word_count
    self.articles.collect do |article_instance|
      article_instance.content.scan(/\w+/).size
    end
  end

  def self.all
    @@all
  end

end
