class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  # def self.most_verbose

  # end

  def self.all
    @@all
  end

end
