require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

magazine1 = Magazine.new("Sports Mag", "sports")
magazine2 = Magazine.new("Helth Mag", "health")
magazine3 = Magazine.new("Fashion Mag", "fashion")

author1 = Author.new("Joe")
author2 = Author.new("Ian")
author3 = Author.new("Dave")
author4 = Author.new("Adrienne")

article1 = Article.new(author1,magazine1,"Great Sports", "Golf and Hockey are great sports. Basketball is also very great.")
article2 = Article.new(author2,magazine2,"This is Health", "Exercise and eat well.")
article3 = Article.new(author2,magazine2,"Healthy Food", "Fruits and vegetables are healthy!")
article4 = Article.new(author3,magazine3,"New Pants", "These are the new pants you should be buying.")
article5 = Article.new(author4,magazine3,"Cool Shirts", "Short sleeves are in this summer!")
article6 = Article.new(author4,magazine3,"Nice Shoes", "Sneakers are the nice shoes.")







### DO NOT REMOVE THIS
binding.pry

0
