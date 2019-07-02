# Please copy/paste all three classes into this file to submit your solution!
require 'pry'

class Author
  # An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.
  attr_reader :name

  @@all =[]
  def initialize(name)
    @name = name
    Author.all << self
  end
  # + `Author.all`
  #   + Returns an array of all Author instances
  def self.all
    @@all
  end

  # + `Author.most_verbose`
  #   + Returns the Author instance who has the longest article by word count
  def self.most_verbose
  end


end


class Article
  attr_reader :author, :magazine
  attr_accessor :title, :content

  @@all = []

  def initialize(author, magazine, title, content)
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

  def self.find_by_name(name)
    Magazine.all.find do |instance|
      instance.name == name
    end
  end

  # `Magazine#article_titles`
#   + Returns an array of the titles of all articles written for that magazine
    def article_titles
      Article.all.select do |instance|
        instance.magazine == instance
      end
    end

    # + `Magazine#contributors`
    # #   + Returns an array of Author instances who have written for this magazine
    def contributors
      Article.all.select do |instance|
        instance.author == instance
      end
    end


#     `Magazine#word_count`
# #   + Returns a number that is the total number of words for all of the articles in this magazine
    def word_count
    end

end

