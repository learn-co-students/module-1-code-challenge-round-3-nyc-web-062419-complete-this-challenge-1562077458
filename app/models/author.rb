class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

def add_article
  Article.new(magazine, title, content)
end

def articles
  Article.all.select{|article| article.author == self}
end

def magazines
  Article.all.select{|magazine_inst| magazine_inst.author == self}.uniq
end
def show_specialties
  auth = Article.all.select{|magazine_inst|
  magazine_inst.author == self}
  auth.map{|c| c.category}.uniq
end
def self.most_active
  Article.all.max_by{|author_inst| author_inst.author}
end
def self.all
  @all
end
end
