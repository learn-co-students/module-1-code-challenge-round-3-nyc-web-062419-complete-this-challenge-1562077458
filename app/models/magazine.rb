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

  def name_magazine
    self.name
  end

  def category_magazine
    self.category
  end

  def self.find_by_name(name)
    all.find do |magazine|
      magazine.name == name
    end
  end

end
