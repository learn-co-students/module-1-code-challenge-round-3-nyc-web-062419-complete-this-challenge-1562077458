require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("Kyle")
author2 = Author.new("Steve")
author3 = Author.new("Mike")
author4 = Author.new("Joe")
author5 = Author.new("Rafia")

magazine1 = Magazine.new("Mag1", "Sports")
magazine2 = Magazine.new("Mag2", "Nature")
magazine3 = Magazine.new("Mag3", "Animals")
magazine4 = Magazine.new("Mag4", "Nature")
magazine5 = Magazine.new("Mag5", "Nature")

article1 = Article.new(author1, magazine1, "Title1", "Blah blah blah i went on a walk today oh man")
article2 = Article.new(author2, magazine2, "Title2", "Wow this is hard")
article3 = Article.new(author3, magazine3, "Title3", "I am running out of ideas")
article4 = Article.new(author1, magazine4, "Title4", "This is content?")


### DO NOT REMOVE THIS
binding.pry

0
