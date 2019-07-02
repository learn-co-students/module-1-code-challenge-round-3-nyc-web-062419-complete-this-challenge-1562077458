require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("James Franklin")
a2 = Author.new("Fred Flintsone")
a3 = Author.new("Betty White")

m1 = Magazine.new("New York Times", "Fancy")
m2 = Magazine.new("ESPN", "Sports")
m3 = Magazine.new("WSJ", "Biz")

art1 = Article.new(a1,m1,"Test Stuff", "About FI tests")
art2 = Article.new(a1,m2,"FI SPorts", "About FI tests 2")
art3 = Article.new(a1,m1,"Test Stuff nagain", "About FI tests 3")

binding.pry

puts "Test"







### DO NOT REMOVE THIS
binding.pry

0
