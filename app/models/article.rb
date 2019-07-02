class Article
    attr_accessor :author, :magazine, :content
    attr_reader :title
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
