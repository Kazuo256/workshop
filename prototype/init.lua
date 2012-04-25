
require "Sprite"
require "Entity"
require "Vec2"

local scarab = Sprite.create "scarab"

scarab.position = Vec2:new { 400, 300 }
Game.stage.sprites:insert(scarab)


