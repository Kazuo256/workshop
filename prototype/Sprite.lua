
require "Object"
require "Vec2"

module("Sprite", Object.asClass)

-- Image.
Sprite.image = nil
-- Position
Sprite.position = nil
-- Rotation (in radians)
Sprite.rotation = 0
-- Size factors.
Sprite.size = nil
-- Dimension.
Sprite.dimension = nil
-- Offset
Sprite.offset = nil
-- Shearing.
Sprite.shearing = nil

function Sprite:init ()
  self.position = Vec2:new {}
  self.size = Vec2:new { 1, 1 }
  self.dimension = Vec2:new { 0, 0 }
  self.offset = Vec2:new { 0, 0 }
  self.shearing = Vec2:new { 0, 0 }
end

local loaded_sprites = {}

function Sprite.create (name)
  local loaded = loaded_sprites[name]
  if loaded then
    return loaded
  end
  local loader = love.filesystem.load("sprites/"..name..".lua")
  if not loader then return nil end
  loaded = Sprite:new()
  local env = { [name] = loaded }
  setmetatable(env, { __index = Sprite })
  setfenv(loader, env)
  local check, err = pcall(loader)
  if not check then
    print("Could not create sprite '"..name.."'.")
    print(err)
    return nil
  end
  return loaded
end

function Sprite:centralizeImage ()
  if not self.image then return end
  self.offset.x = self.image:getWidth()/2
  self.offset.y = self.image:getHeight()/2
end

function Sprite:setDimension (w, h)
  if not self.image then return end
  self.size.x = w/self.image:getWidth()
  self.size.y = h/self.image:getHeight()
end

function Sprite:draw ()
  local w, h = self.image:getWidth(), self.image:getHeight()
  love.graphics.draw(
    self.image,
    self.position.x, self.position.y,
    self.rotation,
    self.size.x*self.dimension.x/w, self.size.y*self.dimension.y/h,
    self.offset.x, self.offset.y,
    self.shearing.x, self.shearing.y
  )
end

