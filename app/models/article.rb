class Article

    @@all = []

    def self.all
        @@all
      end

    attr_reader :author, :magazine
    attr_accessor :title, :content

    def initialize(author, magazine, title, content)

        @author = author
        @magazine = magazine
        @title = title
        @content = content


        Article.all << self

    end




    
    def article_length

        self.content.split(" ").length

    end


end
