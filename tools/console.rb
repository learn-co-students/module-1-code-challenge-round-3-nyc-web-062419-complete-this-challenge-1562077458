require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("mary")
author2 = Author.new("joe")
author3 = Author.new("susan")

magazine1 = Magazine.new("Scarlett", "fashion")
magazine2 = Magazine.new("Racing", "sports")
magazine3 = Magazine.new("Cosmo", "beauty")

article1 = Article.new(author1, magazine1, "summer wear", "Your goal is to build out all of the methods listed below in the deliverables.") #15
article2 = Article.new(author2, magazine2, "cars3", "Your goal is to build out all of the methods listed below in the deliverables. We've provided you with a console that you can use to test your code. ") #29
article3 = Article.new(author3, magazine2, "cars2", "Your goal is to build out all of the methods listed below in the deliverables. For this assignment") #18
article4 = Article.new(author1, magazine2, "cars1", "Your goal is to build out all of the methods listed below in the deliverables. Class Methods") #17
article5 = Article.new(author2, magazine1, "spring1", "Your goal is to build out all of the methods listed below in the deliverables. If you are not sketching out your domain, ") #23
article6 = Article.new(author1, magazine1, "summer2", "Your goal is to build out all of the methods listed below in the deliverables. Take a look at that file to see how you can pre-define variables and create object instances, rather than manually doing it in every single console session.") #42






### DO NOT REMOVE THIS
binding.pry

0
