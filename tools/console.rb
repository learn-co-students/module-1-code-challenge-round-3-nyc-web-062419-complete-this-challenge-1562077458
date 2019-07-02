# require 'pry'

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Jack Russell")
author2 = Author.new("Mike Dickson")
author3 = Author.new("Richard Girr")

magazine1 = Magazine.new("Times","Business")
magazine2 = Magazine.new("Nature","Eco Tour")
magazine3 = Magazine.new("Insider","Tech")

article1 = Article.new( magazine3,"Machine Learning","all about AI",author1)
article2 = Article.new( magazine2, "Conservation","Lets save Earth",author3)
article3 = Article.new(magazine1,"Bitcoin","Discuss bitcoin and how it affects economy",author1)
article4 = Article.new( magazine2,"Eco travel","Visit conservations",author1)






### DO NOT REMOVE THIS
binding.pry

0
