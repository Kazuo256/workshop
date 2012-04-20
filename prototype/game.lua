
require "object"
require "sprite"

module("game", object.asClass)

game.sprites = object.table()

function game:draw()
  for _,v in ipairs(self.sprites) do
    v:draw()
  end
end


