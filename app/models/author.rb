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




