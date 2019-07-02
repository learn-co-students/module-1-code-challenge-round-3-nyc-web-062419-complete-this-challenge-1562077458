require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


aut1 = Author.new("John")
aut2 = Author.new("Sam")
aut3 = Author.new("Sally")

mag1 = Magazine.new("Swimming Monthly", "sports")
mag2 = Magazine.new("Basketball Quarterly", "sports")
mag3 = Magazine.new("BBQ Enthusiast", "cooking")


art1 = Article.new(aut1, mag1, "test1", "Here's a five word article.")
art2 = Article.new(aut2, mag3, "test2", "Some content.")
art3 = Article.new(aut2, mag2, "test3", "Some more content.")
art4 = Article.new(aut3, mag1, "test4", "Here's an extra extra extra long article.")
art5 = Article.new(aut3, mag3, "test5", "An article.")
art6 = Article.new(aut3, mag3, "test6", "Here's another five word article.")



print aut1.articles
puts "\n"
print aut2.articles
puts "\n"
print aut3.articles
puts "\n"

print aut1.magazines
puts "\n"
print aut2.magazines
puts "\n"
print aut3.magazines
puts "\n"

print mag1.articles
puts "\n"
print mag2.articles
puts "\n"
print mag3.articles
puts "\n"

print mag1.contributors
puts "\n"
print mag2.contributors
puts "\n"
print mag3.contributors
puts "\n"


# Other tests conducted directly in pry.






### DO NOT REMOVE THIS
binding.pry

0
