class Magazine

  @@all = []

  attr_accessor :name, :category, :articles, :authors


  def initialize(name, category)
    @name = name
    @category = category
    @articles = []
    @authors = []
    @@all << self 
  end

  def self.find_by_name(name)
    self.all.sort do |magazine_instance|
      magazine_instance.name == name 
    end 
  end

  def article_titles
    @articles.map do |article_instance|
      article_instance.title 
    end
  end

  def contributors 
    @authors
  end 

  def word_count
    total = 0
    @articles.each do |article_instance|
      total += article_instance.content.length
    end 
    total 
  end 

  def self.all
    @@all
  end 


end
