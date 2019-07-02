class Magazine
  
  
  attr_accessor :name, :category

  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self

  end

  def article_titles
    Article.all.select do |article_instances|
      article_instances.magazine == self
    end
  end

  def self.name
    self.name
  end

  def self.category
    self.category
  end

  def contributors
    Article.all.select do |article_instances|
      article_instances
  end
end

  def find_by_name(name)
    self.all.find do |magazine_instances|
      magazine_instances.name == self
    end
  end

  # ..... ugh
  def word_count_helper
    Article.all.select do |article_instances|
      article_instances.magazine == self
    end
  end

  # def word_count
  #   word_count_helper.
  # end


  def self.all
    @@all
  end


end
