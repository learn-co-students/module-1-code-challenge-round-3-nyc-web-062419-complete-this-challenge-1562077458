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
        instance.author 

    end

#     `Magazine#word_count`
# #   + Returns a number that is the total number of words for all of the articles in this magazine
    def word_count
    end

end




# 
# +





