############################################################################################################
#
# For this assignment, let's create a program that represents National Basketball League (NBA). So, we need
# to define the following classes:
# 	1. Team
# 	2. Player
# 	3. Agent
# 	4. Venue (where they play...)
# 	5. Game
#
# Using the classes you define, please, create some objects of them and depict some real life situations.
# For example, Kobe Bryant plays for LA Lakers. Atlanta Hawks has a game againt New York Knicks tonight, etc
#
############################################################################################################
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
hawks.players = ["Al Horford", "Paul Millsap", "Jeff Teague", "Kyle Korver", "DeMarre Carroll", 
	"Louis Williams", "John Jenkins", "Kyle Korver"]

lakers = Team.new("Los Angeles Lakers")
lakers.conference = "Western"
lakers.division = "Pacific"
lakers.games_won = 27
lakers.games_lost = 5
lakers.percentage = 0.329
lakers.head_coach = "Mike D'Antoni"
lakers.players = ["Kent Bazemore", "MarShon Brooks", "Kobe Bryant", "Jordan Farmar", "Pau Gasol", 
	"Xavier Henry", "Jordan Hill", "Wesley Johnson"]

class Player
	attr_accessor :name, :number :position, :height, :weight, :ppg, :team, :agent
	def initialize(name)
		@name = name
	end
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

class Agent
	attr_accessor :name, :clients
	def initialize(name)
		@name = name
	end
end

rob = Agent.new("Rob Pelinka")
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
