
module("object", package.seeall)

function object:new (t)
  t = t or {}
  setmetatable(t, self)
  self.__index = rawget(self, "__index") or self
  return t
end

function object.asClass (mod)
  object:new(mod)
end

local table_mttab = { __index = table }

function object.table ()
  local t = {}
  setmetatable(t, table_mttab)
  return t
end

