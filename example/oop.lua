user = {name="",age=0}
function user:new(o,name,age)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.name = name or ""
    self.age = age or 0
    return o
end

u = user:new(nil,"张三",18)
print(u.name)