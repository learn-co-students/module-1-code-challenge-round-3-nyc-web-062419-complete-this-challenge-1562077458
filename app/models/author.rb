class Author

  @@all = [] 

  attr_accessor :name, :articles, :magazines, :specialties


  def initialize(name)
    @name = name
    @articles = []
    @magazines = []
    @specialties = []
    @@all << self 
  end

  def magazines 
    @magazines
  end 

  def show_specialties
    @specialties.uniq
  end 

  def add_article(magazine, title, content)
    article = Article.new(self, magazine, title, content)
  end 

  def self.most_active 
    @@all.max_by do |author_instance|
      author_instance.articles.length
    end 
  end 

  def self.all
    @@all
  end 


end
