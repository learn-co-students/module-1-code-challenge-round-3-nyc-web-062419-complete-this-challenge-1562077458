class Article

    attr_reader :author, :magazine
    attr_accessor :title, :content

    @@all = []

    def initialize(author,magazine,title,content)
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        Article.all << self
    end

    def self.author
        self.author
    end

    def self.magazine
       self.magazine
    end

    def self.title
        self.title
    end

    def self.content
        self.content
    end


    def self.all
        @@all
    end


end
