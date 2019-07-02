class Author
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

def articles
  Article.all.select do |articles|
    articles.author == self
  end
end

def magazines
  articles.map do |articles|
    articles.magazine
  end
end

def show_specialties
  magazines.map do |articles|
    articles.category
  end.uniq
end

def self.all_content
  wordcount = Article.all.map do |articles|
    articles.content
  end
end

def self.most_verbose
  Article.all.map do |articles|
    articles.content
  end
end

  def self.all
    @@all
  end


end
