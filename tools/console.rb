require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Tom")
author2 = Author.new("Joe")
author3 = Author.new("Bob")

magazine1 = Magazine.new("Vogue","fashion")
magazine2 = Magazine.new("GQ","fashion")
magazine3 = Magazine.new("Teen","advice")

article1 = Article.new(author1,magazine1,"How-to","blah blah blah")
article2 = Article.new(author2,magazine3,"How-not","blah")
article3 = Article.new(author3,magazine1,"How-be","blah blah blah blah")
article3 = Article.new(author3,magazine2,"How-should","blah blah blah blah blah")








### DO NOT REMOVE THIS
binding.pry

0
