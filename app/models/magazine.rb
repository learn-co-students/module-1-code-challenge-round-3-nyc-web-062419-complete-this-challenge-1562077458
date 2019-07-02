class Magazine
  attr_accessor :name, :category
  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end
  def self.all 
    @@all
  end
  def self.find_by_name name
    Magazine.all.find {|m| m.name == name}
  end
  def article_titles
    Article.all.select {|a| a.magazine == self}
    .map {|a| a.title}
  end
  def contributors
    Article.all.select {|a| a.magazine == self}
    .map {|a| a.author}.uniq
  end
  def word_count
    Article.all.select {|a| a.magazine == self}
    .map {|a| a.content.split}.flatten.length
  end
end