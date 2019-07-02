require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

mag1 = Magazine.new("mag1", "lifestyle")
mag2 = Magazine.new("mag2", "heealth")
mag3 = Magazine.new("mag3", "family")

author1 = Author.new("auther1")
author2 = Author.new("auther2")
author3 = Author.new("auther3")

article1 = Article.new(author1, mag1, "wtf1", "1wtfcontentblahblahblahblahblahblahblahblahblahblahblahblah")
article2 = Article.new(author2, mag2, "wtf2", "2wtfcontentblahblahblahblahblahblahblahblahblahblahblahblah")
article3 = Article.new(author3, mag3, "wtf3", "3wtfcontentblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblahblah")
article4 = Article.new(author1, mag1, "wtf4", "4wtfcontentblahblahblahblahblahblahblahblahblahblahblahblah")


### DO NOT REMOVE THIS
binding.pry

0
