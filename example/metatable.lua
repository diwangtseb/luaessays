local mt = setmetatable({1}, {
    __index = function(t,k)
        return k .. " is not found"
    end,
    __call = function(t,k)
        return k .. " is called not found"
    end,
    __newindex = function(t,k,v)
        rawset(t,k,"asdasd\""..v.."asdasd\"")
    end
    }
)

-- update
mt[2] = "ccc"

print(mt[2])
-- call
print(mt(1))