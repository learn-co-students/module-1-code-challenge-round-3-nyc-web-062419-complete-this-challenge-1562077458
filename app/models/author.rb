class Author
  attr_reader :name

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


# Author#add_article(magazine, title, content)`
#   + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
# + `Author#articles`
#   + Returns an array of Article instances the author has written
# + `Author#magazines`
#   + Returns a **unique** array of Magazine instances for which the author has contributed to
# + `Author#show_specialties`
#   + Returns a **unique** array of categories of the magazines for which the author has contributed to
# + `Author.most_active`
#   + Returns the Author instance who has written the greatest number of articles

