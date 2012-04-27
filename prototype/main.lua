
require "Game"

function love.load ()
  Game.init()
end

local function makeInputFunction (handlers)
  local h = handlers
  return function (key)
    for k,v in pairs(h) do
      if not v(key) then
        h[k] = nil
      end
    end
  end
end

love.keypressed = makeInputFunction(Game.input.key.pressed)
love.keyreleased = makeInputFunction(Game.input.key.released)

function love.update (dt)
  Game:update(dt)
end

function love.draw ()
  Game:draw()
end

