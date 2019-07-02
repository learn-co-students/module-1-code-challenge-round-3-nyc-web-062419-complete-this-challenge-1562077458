class Article

    attr_accessor :title, :content
    attr_reader :magazine, :author

    @@all = []

    def initialize author,magazine,title,content
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        Article.all << self
    end

    def self.all
        @@all
    end

end
