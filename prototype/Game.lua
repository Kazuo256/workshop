
require "object"
require "Sprite"

module("Game", object.asClass)

Game.stage = object.table()

Game.init = love.filesystem.load "init.lua"

function Game:draw()
  for _,v in ipairs(self.stage) do
    v:draw()
  end
end


