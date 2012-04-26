
require "Object"
require "Sprite"

module("Entity", Object.asClass)

function Entity:init ()
  self.tasks = Object.table()
end

function Entity:update (dt)
  for k,v in pairs(self.tasks) do
    if not v(self, dt) then
      self.tasks[k] = nil
    end
  end
end


