require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/application.rb'
require 'app/board_case.rb'
require 'app/board.rb'
require 'app/game.rb'
require 'app/player.rb'
require 'app/show.rb'

MyClass.new.perform

x
x
x

binding.pry