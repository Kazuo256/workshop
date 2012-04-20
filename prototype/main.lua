
require "sprite"
require "game"
local scarab = sprite:new {
  x = 400, y = 300,
  sx = 0.2, sy = 0.2
}

function love.load()
  scarab.image = love.graphics.newImage "data/scarab.png"
  scarab:centralizeImage()
  game.sprites:insert(scarab)
end

function love.update(dt)

end

function love.draw()
  game:draw()
end

