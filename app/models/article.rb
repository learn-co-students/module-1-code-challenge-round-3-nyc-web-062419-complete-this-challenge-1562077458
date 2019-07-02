class Article

    @@all = []

    attr_accessor :all, :magazine, :title, :content, :author

    def initialize(author, magazine, title_str, content_str)
        @author = author
        @magazine = magazine
        @title = title_str
        @content = content_str
        magazine.articles << self 
        magazine.authors << author
        author.magazines << magazine
        author.specialties << magazine.category
        author.articles << title_str  
        @@all << self 
    end 

    def self.all
        @@all
    end 



end
