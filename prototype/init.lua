
require "Sprite"
require "Entity"
require "Vec2"

local scarab = Entity:new {
  sprite = Sprite.create "scarab"
}

local center = Vec2:new { 400, 300 }
local time = 0

function scarab.tasks:moveTask(dt)
  time = time + dt
  self.sprite.size:set(
    1.0 + 0.1*math.sin(3*time),
    1.0 + 0.1*math.sin(3*time)
  )
  -- Run forever.
  return true
end

function Game.input.key.pressed.moveScarab (key)
  if key == "up" then
    scarab.sprite.position:add(Vec2:new{0,-5})
  elseif key == "down" then
    scarab.sprite.position:add(Vec2:new{0,5})
  elseif key == "left" then
    scarab.sprite.position:add(Vec2:new{-5,0})
  elseif key == "right" then
    scarab.sprite.position:add(Vec2:new{5,0})
  end
  return true
end

scarab.sprite.position = Vec2:new { 400, 300 }

Game.stage.entities:insert(scarab)
Game.stage.sprites:insert(scarab.sprite)


