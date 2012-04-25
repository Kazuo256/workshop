
require "object"
require "Sprite"

module("game", object.asClass)

game.stage = object.table()

game.init = love.filesystem.load "init.lua"

function game:draw()
  for _,v in ipairs(self.stage) do
    v:draw()
  end
end


