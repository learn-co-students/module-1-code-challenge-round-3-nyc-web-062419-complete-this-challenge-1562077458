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


# An article is initialized with an author as an Author object, a magazine as a Magazine object, title as a string, and content as a string. An article **cannot** change its author or magazine after it is has been initialized.

# + `Article.all`
#   + Returns an array of all Article instances
# + `Article#author`
#   + Returns the author for that given article
# + `Article#magazine`
#   + Returns the magazine for that given article
# + `Article#title`
#   + Returns the title for that given article
# + `Article#content`
#   + Returns the content for that given article