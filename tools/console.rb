require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


author1 = Author.new("Alex")
author2 = Author.new("Joe")
author3 = Author.new("James")

magazine1 = Magazine.new("6 pages", "short magazines")
magazine2 = Magazine.new("ppl", "news")
magazine3 = Magazine.new("Oprah pictures", "models")

article1 = Article.new(author1, magazine1, "my home","this is my home")
article2 = Article.new(author2, magazine1, "my office", "this is my office")
article3 = Article.new(author3, magazine3, "my oprah", "this is my oprah")




### DO NOT REMOVE THIS
binding.pry

0
