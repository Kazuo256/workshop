
require "object"
module("sprite", object.asClass)

-- Image.
sprite.image = nil
-- Position
sprite.x = 0
sprite.y = 0
-- Rotation (in radians)
sprite.r = 0
-- Size factors.
sprite.sx = 1
sprite.sy = 1
-- Offset
sprite.ox = 0
sprite.oy = 0
-- Shearing.
sprite.kx = 0
sprite.ky = 0

function sprite:centralizeImage()
  if not self.image then return end
  self.ox = self.image:getWidth()/2
  self.oy = self.image:getHeight()/2
end

function sprite:draw()
  love.graphics.draw(
    self.image,
    self.x, self.y,
    self.r,
    self.sx, self.sy,
    self.ox, self.oy,
    self.kx, self.ky
  )
end

