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

  def self.find_by_name(name)
    Magazine.all.find do |instance|
      instance.name == name
    end
  end


end

# A magazine is initialized with a name as a string and a category as a string. The name of the magazine and the category of the magazine **can be** changed after being initialized.

#X + `Magazine#name`
#X   + Returns the name of this magazine
#X + `Magazine#category`
#X   + Returns the category of this magazine
#X + `Magazine.all`
#X   + Returns an array of all Magazine instances
# X+ `Magazine.find_by_name(name)`
#   + Given a string of magazine's name, this method returns the first magazine object that matches
