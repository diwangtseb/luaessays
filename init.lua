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
-- nil
local coolman
print(coolman,type(coolman))
-- function
function Move(name,place)
    return name .. "move to" .. place
end

local funcResult = Move(name,"mars")
print(funcResult)