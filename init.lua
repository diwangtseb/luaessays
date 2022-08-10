-- first code
print("Hello world!")

-- variable
-- string
local name = "zhangsan";
print(name,type(name))
-- number
local age = 20;
print(age,type(age))
-- boolean
local sex = true;
print(sex,type(sex))

local a,b = true,true

print(a and b, a or b, not(a and b))

-- nil
local coolman
print(coolman,type(coolman))
-- function
local function Move(name,place)
    return name .. "move to" .. place
end

local funcResult = Move(name,"mars")
print(funcResult)

-- TODO:userdata

-- thread
local co = coroutine.create(function ()
    print("hello")
end)
local result = coroutine.resume(co)
print(result)

-- table
local t = {name = "zhangsan",age = 20}
print(t.name,t.age,type(t))

-- metatable
local mt = setmetatable({},{
    __add = function (t1,t2)
        return t1.age + t2.age
    end
})
print("mt",mt,mt.age)

local ttt = table.insert(t,mt)
print("ttt",ttt,t.age)

-- error handling
local function testError()
    error("error")
end

local r,errorMsg = pcall(testError)
print(r,errorMsg)

r,errorMsg = xpcall(testError,function(err)
    print("xpcall error:",err)
end)
print(r,errorMsg)