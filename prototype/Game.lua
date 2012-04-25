
require "Object"
require "Sprite"

module("Game", Object.asClass)

Game.stage = Object.table()

Game.init = love.filesystem.load "init.lua"

function Game:draw()
  for _,v in ipairs(self.stage) do
    v:draw()
  end
end


