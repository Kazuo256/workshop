
require "sprite"
require "vec2"

local scarab = sprite:new {
  position = vec2:new { 400, 300 },
  dimension = vec2:new { 100, 100 }
}

scarab.image = love.graphics.newImage "data/scarab.png"
scarab:centralizeImage()
game.stage:insert(scarab)


