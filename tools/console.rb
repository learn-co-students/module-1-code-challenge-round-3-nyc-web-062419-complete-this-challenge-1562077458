require_relative "../config/environment.rb"

# require_relative "../app/author"
# require_relative "../app/article"
# require_relative "../app/magazine"

def reload
  load "config/environment.rb"
end

###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("whatevername")
magazine1 = Magazine.new("Mag1", "Fashion")
article1 = Article.new(author1, magazine1, "idk-title1", "bla bla")

### DO NOT REMOVE THIS
binding.pry

0
