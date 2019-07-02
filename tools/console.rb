require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

article1 = Article.new(author1, magazine1, "Title1", "Sports")
article2 = Article.new(author2, magazine2, "Title2", "Nature")
article3 = Article.new(author3, magazine3, "Title3", "Animals")
article4 = Article.new(author1, magazine4, "Title4", "Sports")

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



### DO NOT REMOVE THIS
binding.pry

0
