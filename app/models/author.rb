class Author
  attr_accessor :name

    @@all = []
    def initialize name
    @name = name
    Author.all << self
    end
    def self.all
        @@all
    end


end


# An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.

#
# 
#   + Returns an array of all Author instances
# + `Author.most_verbose`
#   + Returns the Author instance who has the longest article by word count

