
require "sprite"
require "vec2"

local scarab = sprite:new {
  position = vec2:new { 400, 300 },
  size = vec2:new { 0.2,  0.2 }
}

scarab.image = love.graphics.newImage "data/scarab.png"
scarab:centralizeImage()
game.sprites:insert(scarab)


