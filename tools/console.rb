require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


a1 = Author.new("A1")
a2 = Author.new("A2")
a3 = Author.new("A3")
a4 = Author.new("A4")
a5 = Author.new("A5")

m1 = Magazine.new("M1", "sports")
m2 = Magazine.new("M2", "food")
m3 = Magazine.new("M3", "food")
m4 = Magazine.new("M1", "sports")

r1 = Article.new(a1, m1, "T1", "content")
r2 = Article.new(a1, m2, "T2", "content+")
r3 = Article.new(a2, m1, "T3", "content++")
r4 = Article.new(a3, m3, "T4", "content+++")
r5 = Article.new(a4, m4, "T5", "content++++")
r6 = Article.new(a1, m1, "T6", "content+++++")






### DO NOT REMOVE THIS
binding.pry

0
