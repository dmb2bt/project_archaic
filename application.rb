require 'gosu'
Dir.glob('./lib/*.rb').each { |f| require f }

Game.new.show
