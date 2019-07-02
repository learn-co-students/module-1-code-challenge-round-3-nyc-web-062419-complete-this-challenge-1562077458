class Author
  attr_reader :name #file template had this as accessor; changed to reader per readme
  @@all = []
# An author is initialized with a name as a string. A name **cannot** be changed after it is initialized.


# + `Author#name`
#   + Returns the name of the author as a string
  def initialize(name)
    @name = name
    @@all.push(self)
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

#   + `Author#add_article(magazine, title, content)`
#   + Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

# + `Author#articles`
#   + Returns an array of Article instances the author has written
  def articles
    Article.all.select {|art| art.author == self}
  end

# + `Author#magazines`
#   + Returns a **unique** array of Magazine instances for which the author has contributed to
  def magazines
    Magazine.all.select {|art| art.author == self}
end
# + `Author#show_specialties`
#   + Returns a **unique** array of categories of the magazines for which the author has contributed to
  def show_specialties
    self.articles.map {|art| art.magazine.category}.uniq
  end

# + `Author.most_active`
#   + Returns the Author instance who has written the greatest number of articles
  def self.most_active
    author_instances = Article.all.map {|art| art.author}
    author_instances.min_by {|x| x.name}
  end





end
