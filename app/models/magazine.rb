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


end


# 
# + 
# +
# + `Magazine.find_by_name(name)`
#   + Given a string of magazine's name, this method returns the first magazine object that matches