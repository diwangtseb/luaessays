math.randomseed(os.time())

local newProducer

local function wait(time)
    local duration = os.time() + time
    while os.time() < duration do end
end

local function producer()
    while true do
        local x = math.random(10)
        coroutine.yield(x)
        wait(2)
    end
end

local function consumer()
    while true do
        local status,value = coroutine.resume(newProducer)
        print(status,value)
    end
end

newProducer = coroutine.create(producer)
consumer()