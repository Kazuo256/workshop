
require "Object"

module("Vec2", Object.asClass)

-- Vector coordinates.
Vec2[1] = 0
Vec2[2] = 0

function Vec2:__index (k)
  if k == "x" then return self[1] end
  if k == "y" then return self[2] end
  return getmetatable(self)[k]
end

function Vec2:__newindex (k, v)
  if k == "x" then rawset(self, 1, v) end
  if k == "y" then rawset(self, 2, v) end
  rawset(self, k, v)
end

function Vec2.__add (lhs, rhs)
  return Vec2:new {
    lhs[1] + rhs[1],
    lhs[2] + rhs[2]
  }
end

function Vec2.__sub (lhs, rhs)
  return Vec2:new {
    lhs[1] - rhs[1],
    lhs[2] - rhs[2]
  }
end

function Vec2.__mul (lhs, rhs)
  if type(lhs) == "number" then
    return Vec2:new { lhs*rhs.x, lhs*rhs.y }
  elseif type(rhs) == "number" then
    return Vec2:new { rhs*lhs.x, rhs*lhs.y }
  else
    return lhs.x*rhs.x + lhs.y*rhs.y
  end
end

function Vec2:set (x, y)
  self[1] = x
  self[2] = y
end

function Vec2:add (v)
  self[1] = self[1] + v[1]
  self[2] = self[2] + v[2]
end

function Vec2:sub (v)
  self[1] = self[1] - v[1]
  self[2] = self[2] - v[2]
end

