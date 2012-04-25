
require "Game"

function love.load()
  Game.init()
end

function love.update(dt)
  Game:update(dt)
end

function love.draw()
  Game:draw()
end

