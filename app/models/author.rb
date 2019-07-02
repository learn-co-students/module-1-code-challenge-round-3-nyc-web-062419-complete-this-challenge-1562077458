class Author
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all
    @@all
  end

  def helper
    Article.all.select {|instance| instance.author == self}
  end

   # this!!!!!!!
   def self.most_verbose
    var = Article.all.select {|instance| instance.content}
    var.map {|n| n.content}.sort.last
   end

  def add_article(magazine, title, content)
    var = Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select {|art| art.author == self}
  end

  def magazines
    helper.map {|art| art.magazine}.uniq
  end

  def show_specialties
    helper.map {|art| art.magazine}.map{|magazine_instance| magazine_instance.category}.uniq
  end

  #### do this
  def self.most_active
    Article.all.select {|instance| instance.author}.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  end

end
