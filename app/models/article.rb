class Article
    attr_accessor :author, :magazine
    attr_reader :title, :content
    @@all = []


    def initialize (author, magazine, title, content)
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
