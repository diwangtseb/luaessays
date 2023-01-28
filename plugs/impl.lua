local function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

local function lines_from(file)
    if not file_exists(file) then return {} end
    local lines = {}
    for line in io.lines(file) do
        lines[#lines + 1] = line
    end
    return lines
end

local file_path = "template.txt"

local t;
local function append(file_path,content,line)
    t = lines_from(file_path)
    table.insert(t,line,content..'\n')
    for k, v in pairs(t) do
        print('line[' .. k .. ']', v)
    end
end

append(file_path,'func(xm *XM) Show(){\n    panic("Not impl") \n}',2)

local temp_file_path = file_path..".tmp"
local temp_file = io.open(temp_file_path,"w")
for _, line in ipairs(t) do
    temp_file:write(line.."\n")
end
temp_file:close()


os.remove(file_path)
os.rename(temp_file_path,file_path)