# Please copy/paste all three classes into this file to submit your solution!
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
#############################################################
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
  ##############################################################
  class Magazine
    attr_accessor :name, :category
    @@all = []
    def initialize(name, category)
      @name = name
      @category = category
      Magazine.all << self
    end
    def self.all 
      @@all
    end
    def self.find_by_name name
      Magazine.all.find {|m| m.name == name}
    end
    def article_titles
      Article.all.select {|a| a.magazine == self}
      .map {|a| a.title}
    end
    def contributors
      Article.all.select {|a| a.magazine == self}
      .map {|a| a.author}.uniq
    end
    def word_count
      Article.all.select {|a| a.magazine == self}
      .map {|a| a.content.split}.flatten.length
    end
  end