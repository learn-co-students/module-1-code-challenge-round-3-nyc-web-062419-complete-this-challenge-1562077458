class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_helper
    #gets array of all articles for magazine instance
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    article_helper.map do |article|
      article.title 
    end
  end

  def contributors
    article_helper.map do |article|
      article.author
    end
  end

  def word_count
    #counter
    x = 0
    #helper to get all content for magazine instance
    content = 
    article_helper.map do |article|
        article.content
    end
    #iterate over each content to count words
    content.each do |word|
      x += word.size
    end
    x
  end


end
