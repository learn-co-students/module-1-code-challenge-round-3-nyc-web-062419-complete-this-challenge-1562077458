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

  def helper
    Article.all.select {|instance| instance.magazine == self}
  end

  def self.find_by_name(name)
    self.all.find {|mag| mag.name == name}
  end

  def article_titles
    helper.map {|magazine_instance| magazine_instance.title}
  end

  def contributors
    helper.map {|magazine_instance| magazine_instance.author}
  end

  def word_count
    helper.map {|magazine_instance| magazine_instance.author}.join.length
  end

end
