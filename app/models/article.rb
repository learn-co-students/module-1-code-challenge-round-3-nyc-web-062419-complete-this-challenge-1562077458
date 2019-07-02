class Article
    attr_accessor 
    @@all = []


    def initialize (author, magazine, title, content)
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        Article.all << self
    end

    # def authors ()


    # def author
    #      self.
    # end

    def self.all
        @@all
    end
end
