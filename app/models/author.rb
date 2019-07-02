class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_verbose #NOT DONE
    #Returns the Author instance who has the longest article by word count
    sorted = Article.all.map do |article_instance|
      article_instance.content.sort_by
    end

    auth = sorted[-1].author
    auth
  end

  def add_article(magazine, title, content)
    #Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine
    Article.new(self, magazine, title, content)
  end

  def articles
    #Returns an array of Article instances the author has written
    articles = Article.all.select do |article_instance|
      article_instance.author.name == self.name
    end
    articles
  end

  def magazines
    #Returns a **unique** array of Magazine instances for which the author has contributed to
    magazines = []
    Article.all.select do |article_instance|
      if article_instance.author.name == self.name
        magazines << article_instance.magazine
      end
    end
    magazines.uniq
  end

  def show_specialties
    # Returns a **unique** array of categories of the magazines for which the author has contributed to
    magazine_categories = []
    Article.all.select do |article_instance|
      if article_instance.author.name == self.name
        magazine_categories << article_instance.magazine.category
      end
    end
    magazine_categories.uniq
  end

  def self.most_active ##NOT DONE!
    #Returns the Author instance who has written the greatest number of articles
    Article.all.map do |article_instance|
      article_instance
    end
  end
end
