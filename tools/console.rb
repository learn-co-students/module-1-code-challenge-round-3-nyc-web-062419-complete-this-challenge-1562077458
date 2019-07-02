require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
#Author class
author1 = Author.new("Philip")
author2 = Author.new("Joe")
author3 = Author.new("Rick")
author4 = Author.new("Lefty")


#Magazine class
magazine1 = Magazine.new("Red", "Sound")
magazine2 = Magazine.new("Blue", "Visiom")
magazine3 = Magazine.new("Green", "Pets")
magazine4 = Magazine.new("Pink", "Random")


#Article class
article1 = Article.new(author1, magazine1, "Better Days", "Too few")
article2 = Article.new(author2, magazine2, "Worse Days", "Too many")
article3 = Article.new(author3, magazine3, "Super Days", "More")
article4 = Article.new(author4, magazine4, "Avg Days", "Just right")



binding.pry

00












### DO NOT REMOVE THIS
binding.pry

0
