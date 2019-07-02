require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Ace")
author2 = Author.new("Base")
author3 = Author.new("Case")
author4 = Author.new("Dase")

magazine1 = Magazine.new("Alpha Monthly", "sports")
magazine2 = Magazine.new("Beta Monthly", "comedy")
magazine3 = Magazine.new("Ceta Monthly", "business")
magazine4 = Magazine.new("Deta Monthly", "entertainment")

article1 = Article.new(author1, magazine1, "title 1", "content a")
article2 = Article.new(author2, magazine2, "title 2", "contentbb")
article3 = Article.new(author3, magazine3, "title 3", "contentccc")
article4 = Article.new(author4, magazine4, "title 4", "contentdddd")
article5 = Article.new(author1, magazine2, "title 5", "contente")
article6 = Article.new(author2, magazine3, "title 6", "contentff")
article7 = Article.new(author3, magazine4, "title 7", "contentggg")
article8 = Article.new(author1, magazine1, "title 8", "contenthhhhhhh")

### DO NOT REMOVE THIS
binding.pry

0
