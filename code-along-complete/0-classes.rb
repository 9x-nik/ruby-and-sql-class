# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along-complete/0-classes.rb

# String Class

bens_favorite_food = "sushi"
brians_favorite_food = "tacos"

puts bens_favorite_food.class # type of thing this is (aka object)
puts brians_favorite_food.class # type of thing this is (aka object)

# String Methods

puts bens_favorite_food.upcase
puts brians_favorite_food.upcase

# Our own class
class Dog

  def speak
    puts "Woof!"
  end

end

jenkins = Dog.new
jenkins.speak

# A lot of powerful programming we can do with this concept,
# but we only really care about it for 1 reason.
# in a database-backed application - custom classes to represent specific data tables.
# A Model is a special class that connects to its corresponding table.
