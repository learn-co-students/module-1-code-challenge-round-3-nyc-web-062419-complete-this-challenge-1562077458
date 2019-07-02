class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.find_by_name(name)
    #return the first magazine with a matching name
    Magazine.all.find { |mag| mag.name == name }
  end

  def self.all
    @@all
  end
end
