class Article
    attr_reader :author,:magazine,:content,:title
    @@all = []
    def initialize author,magazine,title,content
        @author,@magazine,@title,@content = author,magazine,title,content
        Article.all << self
    end
    def self.all
        @@all
    end
end