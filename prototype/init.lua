
require "sprite"

local scarab = sprite:new {
  x = 400, y = 300,
  sx = 0.2, sy = 0.2
}

scarab.image = love.graphics.newImage "data/scarab.png"
scarab:centralizeImage()
game.sprites:insert(scarab)


