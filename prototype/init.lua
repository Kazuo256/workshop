
require "Sprite"
require "vec2"

local scarab = Sprite.create "scarab"

scarab.position = vec2:new { 400, 300 }
Game.stage:insert(scarab)


