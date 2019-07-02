class Magazine

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category

    Magazine.all << self

  end


  

  def articles 

    Article.all.select{|article| article.magazine == self}

  end

  def contributors

    self.articles.collect{|article| article.author}.uniq

  end




  def self.find_by_name(name)

    self.all.find{|magazine| magazine.name == name}

  end
  
  def article_titles

    self.articles.collect{|article| article.title}.uniq

  end

  def word_count

    self.articles.inject(0){|sum, article| sum + article.article_length}

  end

  


end
