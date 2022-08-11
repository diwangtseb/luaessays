-- Interesting table
local tableone = {"卡哇伊",name='张三',"ook"}
print(tableone[1],tableone["name"],tableone[2])

-- ipairs
for index, value in ipairs(tableone) do
    print(index,value)
end
-- pairs
for index, value in pairs(tableone) do
    print(index,value)
end

-- concat
local tcr = table.concat(tableone,",")
print("tcr :",tcr)

-- insert table
table.insert(tableone,{name = 'cc'})
print("tir :",tableone[3].name)

-- delete table
table.remove(tableone,3)


-- table pack
table.pack = function(...)
    local t = {...}
    t.n = select("#",...)
    return t
end
print(table.pack(1,2,3).n)
