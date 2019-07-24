
local dogs = ngx.shared.dogs

local table1 = {1 }
-- string.rep("a", 65535)
local data, err = dogs:get(1)

if data == nil and err then
    ngx.say("get not ok: ", err)
    return
end

ngx.say("data: ", data)