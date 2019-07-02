require 'pry'

class Author
  # An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.
  attr_reader :name

  @@all =[]
  def initialize(name)
    @name = name
    Author.all << self
  end
  # + `Author.all`
  #   + Returns an array of all Author instances
  def self.all
    @@all
  end

  # + `Author.most_verbose`
  #   + Returns the Author instance who has the longest article by word count
  def self.most_verbose
  end


end



#X    An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.
#X+ `Author#name`
#   + Returns the name of the author as a string
# + `Author.all`
#   + Returns an array of all Author instances
# + `Author.most_verbose`
#   + Returns the Author instance who has the longest article by word count
