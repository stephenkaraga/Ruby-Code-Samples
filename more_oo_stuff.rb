#
# For this homework, come up with a solution to each problem listed:
#
# To help you do the homework, here is an example:
#
# Example 1. Find an average of multiple integer values
# Defining a method that takes in an array, caculates the average, and then return the result
def find_average(input_array)
	counter = 0
	sum = 0
	while counter < input_array.length do
		sum = sum + input_array[counter]
		counter = counter + 1
	end
	result = sum.to_f / input_array.length
	return result
end

my_array = [10, 30, 34, 30, 50]
result = find_average(my_array)
puts result


# Problem 1: Find elements that are String in the array
# Ex) input_array = [1, "Hello", 'Hi', 34.23, true]
#  		Output => "Hello", "hi"
# 
# Hint: "abc".class.to_s => "String"
# Please, create and use a method!
def string_elements(array)
	counter = 0
	strings = []
	while counter < array.length
		if array[counter].class == String
          strings << array[counter]
        end
        counter = counter + 1
    end
  strings
end

answer = string_elements([true, 5, "hi", 4.5, "hola"])
puts answer

# Problem 2: Create a method that takes in an array and convert to a hash
# Ex) input_array = ['a', 'b', 'c']
# 		output => { 0 => 'a', 1 => 'b', 2 => 'c' }
def array_to_hash(array)
	counter = 0
	hash = {}
	while counter < array.length
		hash[counter] = array[counter]
		counter = counter + 1
	end
	hash
end
stuff = array_to_hash(["a", "b", "c"])
puts stuff
# Problem 3: Find duplicate elements in an array
# Ex) input_array = [1, 2, 3, 1, 'a', 4, 'a']
# 		output => 2, 'a'
# Please, create and use a method

def find_duplicates(array)
	counter = 0
	duplicates = []
	while counter < array.length
		counter2 = counter + 1
      while counter2 < array.length
      	if array[counter] == array[counter2]
      	  duplicates << array[counter2]
      	end
      	counter2 = counter2 + 1
      end
      counter = counter + 1
	end
	duplicates
end	

cool = find_duplicates([1, 1, 3, "hi", 3, "hi", 4])
puts cool



# Problem 4: Create a class called Calculator that has the follwing methods
# 	1. Class Methods
# 		a. add(num1, num2) returns the sum of the two argumentz
# 		b. subtract(num1, num2)
#     c. divide(num1, num2)
class Calculator
  def self.add(num1, num2)
  	num1 + num2
  end
  def self.subtract(num1, num2)
  	num1 - num2
  end
  def self.divide(num1, num2)
  	num1/num2
  end	
end

puts Calculator.add(3, 4)
puts Calculator.subtract(13, 4)
puts Calculator.divide(12, 4)




# Problem 5: Finish up the NBA homework from yesterday.
# For this assignment, let's create a program that represents National Basketball League (NBA). So, we need
# to define the following classes:
# 	1. Team
# 	2. Player < Person
# 	3. Agent
# 	4. Venue (where they play...)
# 	5. Game
#   6. Nba
#
# Using the classes you define, please, create some objects of them and depict some real life situations.
# For example, Kobe Bryant plays for LA Lakers. Atlanta Hawks has a game againt New York Knicks tonight, etc
class Person
	attr_accessor :first_name, :last_name
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
end

class Team
	attr_accessor :name, :conference, :division :games_won, :games_lost, :percentage, :head_coach, :players
	def initialize(name)
		@name = name
	end
end
hawks = Team.new("Atlanta Hawks")
hawks.conference = "Eastern"
hawks.division = "Southeast"
hawks.games_won = 38
hawks.games_lost = 44
hawks.percentage = 0.463
hawks.head_coach = "Mike Budenholzer"
hawks.players = [Player.new("Al", "Horford"), Player.new("Paul", "Millsap"), Player.new("Jeff", "Teague"),
 Player.new("Kyle", "Korver"), Player.new("DeMarre", "Carroll"), 
	Player.new("Louis", "Williams"), Player.new("John" "Jenkins"), Player.new("Kyle" "Korver")]

lakers = Team.new("Los Angeles Lakers")
lakers.conference = "Western"
lakers.division = "Pacific"
lakers.games_won = 27
lakers.games_lost = 5
lakers.percentage = 0.329
lakers.head_coach = "Mike D'Antoni"
lakers.players = [Player.new("Kent", "Bazemore"), Player.new("MarShon", "Brooks"), Player.new("Kobe", "Bryant"),
 Player.new("Jordan", "Farmar"), Player.new("Pau", "Gasol"), Player.new("Xavier", "Henry"), Player.new("Jordan", "Hill"), 
 Player.new("Wesley", "Johnson")]

class Player < Person
	attr_accessor :number :position, :height, :weight, :ppg, :team, :agent
end

kobe = Player.new("Kobe Bryant")
kobe.number = 24
kobe.position = "Guard"
kobe.height = "6-6"
kobe.weight = 205
kobe.ppg = 25.5
kobe.team = lakers
kobe.agent = rob

carlos = Player.new("Carlos Boozer")
carlos.agent = rob

class Agent < Person
	attr_accessor :clients
end

rob = Agent.new("Rob", "Pelinka")
rob.clients = kobe, carlos

class Venue
	attr_accessor :stadium, :city, :capacity
	def initialize(stadium, city)
		@stadium = stadium
		@city = city
	end
end

staples = Venue.new("Staples Center", "Los Angeles")
staple.capacity = 18118

class Game
	attr_accessor :home_team, :away_team, :venue, :date, :time, :venue, :final_score, :winner
	def initialize(home_team, away_team)
		@home_team = home_team
		@away_team = away_team
	end
end

game = Game.new(lakers, hawks)
game.date = "November 3, 2013"
game.time = "7:00 PM PT"
game.venue = staples
game.final_score = "103-105"
game.winner = lakers





