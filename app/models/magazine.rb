class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name) #arg is string
    #Given a string of magazine's name, this method returns the first magazine object that matches
    self.all.find do |magazine_instance|
      magazine_instance.name == name
    end
  end

  def article_titles
    #Returns an array of the titles of all articles written for that magazine
    titles_array = []
    Article.all.select do |article_instance|
      if article_instance.magazine.name == self.name
        titles_array << article_instance.title
      end
    end
    titles_array
  end

  def contributors
    # Returns an array of Author instances who have written for this magazine
    authors_array = []
    Article.all.select do |article_instance|
      if article_instance.magazine.name == self.name
        authors_array << article_instance.author
      end
    end
    authors_array.uniq
    #didn't ask for unique but it kinda makes sense? It's easily removed
  end

  def word_count
    #Returns a number that is the total number of words for all of the articles in this magazine
    content_array = []
    Article.all.select do |article_instance|
      if article_instance.magazine.name == self.name
        content_array << article_instance.content
      end
    end
    word_count = content_array.join(" ").count(" ") + 1
    word_count
  end
end
