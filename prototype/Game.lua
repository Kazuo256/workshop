
require "Object"
require "Sprite"

module("Game", Object.asClass)

Game.stage = {
  sprites = Object.table(),
  entities = Object.table(),
}

Game.input = {
  key = {
    pressed = Object.table(),
    released = Object.table()
  }
}

Game.init = love.filesystem.load "init.lua"

function Game:update (dt)
  for _,v in ipairs(self.stage.entities) do
    v:update(dt)
  end
end

function Game:draw ()
  for _,v in ipairs(self.stage.sprites) do
    v:draw()
  end
end


