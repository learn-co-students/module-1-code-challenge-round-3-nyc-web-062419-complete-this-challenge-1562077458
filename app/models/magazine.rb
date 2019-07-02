class Magazine
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.find_by_name(name)
    @@all.select do |magazines|
      magazines.name == name
    end
  end

  def my_articles
    Article.all.select do |articles|
      articles.magazine == self
    end
  end

  def article_titles
    my_articles.map do |articles|
      articles.title
    end
  end

  def contributers
    my_articles.map do |articles|
      articles.author
    end
  end

  def my_content_joined   #joins the array of content
    joined_content = my_articles.map do |articles|
      articles.content
    end
    joined_content.join(" ")
  end

  def word_count
    my_content_joined.split(" ").count
  end



def self.all
  @@all
end



end #class end
