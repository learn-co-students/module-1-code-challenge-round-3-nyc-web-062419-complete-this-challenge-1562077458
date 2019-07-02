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
    def add_article magazine,title,content
      Article.new(self,magazine,title,content)
    end
    def articles 
      Article.all.select {|a| a.author ==  self}
    end
    def magazines
      Article.all.select {|a| a.author ==  self}
      .map {|a| a.magazine}.uniq
    end
    def show_specialties
      Article.all.select {|a| a.author ==  self}
      .map {|a| a.magazine.category}.uniq
    end
    def self.most_active
      Author.all.sort_by {|a| a.articles.length}.last
    end
end