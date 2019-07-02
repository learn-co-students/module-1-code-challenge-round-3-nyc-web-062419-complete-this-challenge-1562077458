class Magazine
  attr_accessor :name, :category

    @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

def article_titles
 Article.all.map{|article_inst| article_inst.title == self}
end

def constibutors
  Article.all.map{|contribute| contribute.author == self}
end
def word_count
  total = 0
  Article.all.se

end

  def self.all
    @all
  end

end
