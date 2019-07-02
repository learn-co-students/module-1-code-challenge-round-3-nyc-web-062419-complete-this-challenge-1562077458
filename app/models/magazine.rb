class Magazine
  attr_accessor :name, :category
  attr_reader
  attr_writer
  @@all = []

  # A magazine is initialized with a name as a string and a category as a string. The name of the magazine and the category of the magazine **can be** changed after being initialized.
  def initialize(name, category)
    @name = name
    @category = category
    @@all.push(self)
  end
  # + `Magazine.all`
  #   + Returns an array of all Magazine instances
  def self.all
    @@all
  end
  
  # + `Magazine.find_by_name(name)`
  #   + Given a string of magazine's name, this method returns the first magazine object that matches
  def self.find_by_name(name)
    Magazine.all.find {|mag| mag == self}
  end
  
  
end


# + `Magazine#name`
#   + Returns the name of this magazine -- self.name ALREADY DOES THIS

# + `Magazine#category`
#   + Returns the category of this magazine -- self.category ALREADY DOES THIS
