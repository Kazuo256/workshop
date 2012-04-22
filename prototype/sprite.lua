
require "object"
require "vec2"

module("sprite", object.asClass)

-- Image.
sprite.image = nil
-- Position
sprite.position = vec2:new {}
-- Rotation (in radians)
sprite.rotation = 0
-- Size factors.
sprite.size = vec2:new { 1, 1 }
-- Offset
sprite.offset = vec2:new { 0, 0 }
-- Shearing.
sprite.shearing = vec2:new { 0, 0 }

function sprite:centralizeImage()
  if not self.image then return end
  self.offset.x = self.image:getWidth()/2
  self.offset.y = self.image:getHeight()/2
end

function sprite:setDimension(w, h)
  if not self.image then return end
  self.size.x = w/self.image:getWidth()
  self.size.y = h/self.image:getHeight()
end

function sprite:draw()
  love.graphics.draw(
    self.image,
    self.position.x, self.position.y,
    self.rotation,
    self.size.x, self.size.y,
    self.offset.x, self.offset.y,
    self.shearing.x, self.shearing.y
  )
end

