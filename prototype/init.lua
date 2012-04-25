
require "Sprite"
require "Entity"
require "Vec2"

local scarab = Entity:new {
  sprite = Sprite.create "scarab"
}

local center = Vec2:new { 400, 300 }
local time = 0

function scarab:moveTask(dt)
  time = time + dt
  self.sprite.position = center + Vec2:new { 100*math.cos(time), 100*math.sin(time) }
end

scarab.tasks:insert(scarab.moveTask)
scarab.sprite.position = Vec2:new { 400, 300 }

Game.stage.entities:insert(scarab)
Game.stage.sprites:insert(scarab.sprite)


