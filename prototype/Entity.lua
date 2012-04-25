
require "Object"
require "Sprite"

module("Entity", Object.asClass)

function Entity:init ()
  self.tasks = Object.table()
end

function Entity:update (dt)
  for _,v in ipairs(self.tasks) do
    v(self, dt)
  end
end


