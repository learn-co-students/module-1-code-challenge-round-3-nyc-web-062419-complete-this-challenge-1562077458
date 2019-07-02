require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#Author(name)
author1 = Author.new("Bill")
author2 = Author.new("Tom")
author3 = Author.new("Lisa")
author4 = Author.new("Mark")
author5 = Author.new("Taro")


# Magazine(name, category)
magazine1 = Magazine.new("Gamepro","Video Games")
magazine2 = Magazine.new("Cineste","Film")
magazine3 = Magazine.new("GameFan","Video Games")
magazine4 = Magazine.new("Time Magazine","News")

author1.add_article(magazine1, "New Games Thing is Here", "content wow")
author1.add_article(magazine3, "Another New Games Thing", "even more bits")
author2.add_article(magazine2, "Movies and What I think of Them", "hard-hitting critique")



### DO NOT REMOVE THIS
binding.pry

0
