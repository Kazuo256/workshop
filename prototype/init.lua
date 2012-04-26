
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
  self.sprite.position:set(
    center.x + 100*math.cos(time),
    center.y + 100*math.sin(time)
  )
  self.sprite.rotation = -math.pi/2+time
end

scarab.tasks:insert(scarab.moveTask)
scarab.sprite.position = Vec2:new { 400, 300 }

Game.stage.entities:insert(scarab)
Game.stage.sprites:insert(scarab.sprite)


