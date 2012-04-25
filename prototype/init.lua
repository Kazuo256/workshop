
require "Sprite"
require "Vec2"

local scarab = Sprite.create "scarab"

scarab.position = Vec2:new { 400, 300 }
Game.stage:insert(scarab)


