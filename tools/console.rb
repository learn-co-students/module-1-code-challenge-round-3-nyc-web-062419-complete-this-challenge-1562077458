require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

###  WRITE YOUR TEST CODE HERE ###

#Created Some Authors
ben = Author.new("Ben")
yos = Author.new("Yos")
yana = Author.new("Yana")

#Created some Magazines
people = Magazine.new("People", "Pop-Culture")
nhl = Magazine.new("NHL", "Sports")
enews = Magazine.new("E-News", "Gossip")

#Created some articles
nyrArticle = Article.new(ben, nhl, "best team NYR", "The Rangers are the best team in the NHL right now")
ryanGosslingArticle = Article.new(yana, people, "Ryan Gossling Hot", "His eyes are dreamy")
getFitArticle = Article.new(yos, nhl, "Work out like a Pro", "I will teach you how to train like a pro NHL player")
famousArticle = Article.new(yana, enews, "Most Famous Actors", "Why are they famous? No one knows")

#Created an article using the add_article method
ben.add_article(nhl, "cool new article", "This article is the greatest of its kind")

#All other tests were done using Pry

### DO NOT REMOVE THIS
binding.pry

0
