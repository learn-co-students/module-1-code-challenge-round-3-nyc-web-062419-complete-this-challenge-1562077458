require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

author1 = Author.new("Bob")
author2 = Author.new("John")
author3 = Author.new("Linda")
author4 = Author.new("Alex")

magazine1 = Magazine.new("Readers Ingest","old people")
magazine2 = Magazine.new("Sadness Monthly","depression")
magazine3 = Magazine.new("Cooking Time","food")
magazine4 = Magazine.new("Coding Time","software")


article1 = Article.new(author1,magazine1,"hello","blah blah")
article2 = Article.new(author2,magazine2,"hi","blah blah blah")
article3 = Article.new(author3,magazine4,"nope","blah blah blah blah blah")
article4 = Article.new(author1,magazine2,"hello","blah blah")
article5 = Article.new(author3,magazine3,"hello","blah blah")
article6 = Article.new(author1,magazine1,"hello","blah ")
article7 = Article.new(author4,magazine1,"hello","bla")


author1.add_article(magazine1,"Boom","oh no oh god")

###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
