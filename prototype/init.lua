
require "Sprite"
require "Entity"
require "Vec2"

local scarab = Entity:new {
  sprite = Sprite.create "scarab"
}

scarab.speed = Vec2:new()

local center = Vec2:new { 400, 300 }
local time = 0

function scarab.tasks:moveTask(dt)
  time = time + dt
  self.sprite.size:set(
    1.0 + 0.1*math.sin(3*time),
    1.0 + 0.1*math.sin(3*time)
  )
  if self.speed then
    self.sprite.position:add(self.speed*dt)
  end
  -- Run forever.
  return true
end

local move_dirs = {
  up = Vec2:new { 0, -150 },
  down = Vec2:new { 0, 150 },
  left = Vec2:new { -150, 0 },
  right = Vec2:new { 150, 0 }
}

function Game.input.key.pressed.moveScarab (key)
  if move_dirs[key] then
    scarab.speed:add(move_dirs[key])
  end
  return true
end

function Game.input.key.released.stopScarab (key)
  if move_dirs[key] then
    scarab.speed:sub(move_dirs[key])
  end
  return true
end

scarab.sprite.position = Vec2:new { 400, 300 }

Game.stage.entities:insert(scarab)
Game.stage.sprites:insert(scarab.sprite)


