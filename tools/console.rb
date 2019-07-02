require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

playboy = Magazine.new("Playboy", "Men's")
rolling_stone = Magazine.new("Rolling Stone", "Misc.")
hunter_thompson = Author.new("Hunter S. Thompson")
bob_delory = Author.new("Bob Delory")
# fear_and_loathing = Article.new

fear_and_loathing = Article.new(hunter_thompson, playboy, "Fear and Loathing in Las Vegas", "We can't stop here! This is bat country!")
campaign_trail = Article.new(hunter_thompson, rolling_stone, "Campaign Trail '76", "Terrible thing they did to Musky")
other_article = Article.new(bob_delory, rolling_stone, "Something Else", "Something not as good")
###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
