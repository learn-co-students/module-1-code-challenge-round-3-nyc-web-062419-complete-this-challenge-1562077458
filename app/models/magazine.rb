class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def article_titles
    Article.all.select { |artti| artti.magazine == self }.map { |artti| artti.title }
  end

  def contributers
    Article.all.select { |artti| artti.magazine == self }.map { |artti| artti.author }.uniq
  end

  def word_count
    totalWords = 0
    Article.all.select { |artti| artti.magazine == self }.each { |artti| totalWords += artti.content.split(" ").length }
    totalWords
  end

  def self.find_by_name(name)
    #return the first magazine with a matching name
    Magazine.all.find { |mag| mag.name == name }
  end

  def self.all
    @@all
  end
end
