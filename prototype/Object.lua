
module("Object", package.seeall)

function Object:new (t)
  t = t or {}
  setmetatable(t, self)
  self.__index = rawget(self, "__index") or self
  return t
end

function Object.asClass (mod)
  Object:new(mod)
end

local table_mttab = { __index = table }

function Object.table ()
  local t = {}
  setmetatable(t, table_mttab)
  return t
end

