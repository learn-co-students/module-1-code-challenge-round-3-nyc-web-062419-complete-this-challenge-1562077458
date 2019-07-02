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
    def self.most_verbose
    longest =  Article.all.sort_by {|a| a.content.length}.last
    longest.author
    end

end


# An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.

#
# 
# + `Author.most_verbose`
#   + Returns the Author instance who has the longest article by word count

