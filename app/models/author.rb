class Author

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name


  def initialize(name)
    @name = name

    Author.all << self
  
  end




  def articles

    Article.all.select{|article| article.author == self}

  end

  def magazines

    self.articles.collect{|article| article.magazine}.uniq

  end





  def show_specialties

    self.magazines.collect{|magazine| magazine.category}.uniq

  end

  def add_article(magazine, title, content)

    Article.new(self, magazine, title, content)

  end

  def their_longest_article

    self.articles.max_by{|article| article.article_length}

  end

  def self.most_verbose

    self.all.max_by{|author| author.their_longest_article.article_length}

  end

  def self.most_active

    self.all.max_by{|author| author.articles.length}

  end











end
