
require "Game"

function love.load ()
  Game.init()
end

function love.keypressed (key)
  local handlers = Game.input.key.pressed
  for k,v in pairs(handlers) do
    if not v(key) then
      handlers[k] = nil
    end
  end
end

function love.update (dt)
  Game:update(dt)
end

function love.draw ()
  Game:draw()
end

