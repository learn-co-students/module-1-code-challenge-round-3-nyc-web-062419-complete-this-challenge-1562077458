class Article

    @all = []
    def initialize

    Article.all << self
    end
    def self.all
        @@all
    end

end
