require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/board_case.rb'
require 'app/board.rb'
require 'app/game.rb'
require 'app/player.rb'
require 'app/show.rb'

puts "*************************************************"
puts "|Bienvenue sur jeu du MORPION' !                |"
puts "|TIC TAC TOE                                    |"
puts "*************************************************"
puts " "
puts " "

player1 = Player.new("X")
player2 = Player.new("O")

board = Board.new

game = Game.new


game.play


binding.pry