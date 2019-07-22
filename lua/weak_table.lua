local nkeys = require "table.nkeys"

local tb = {}
local xx1 = {color = red}
tb[{color = red}] = "red"
local fc = function() print("func") end
tb[fc] = "func"

setmetatable(tb, {__mode = "k"})
ngx.print(nkeys(tb) .. "\n")

--fc = nil

collectgarbage()
ngx.print(nkeys(tb) .. "\n")

--for k, v in pairs(tb) do
--    ngx.print(tostring(k) .. " & " .. v .. " \n")
--end

ngx.print(tb[{color = red}])
ngx.print("\n")

ngx.print(tb[fc])
ngx.print("\n")

-- kb
ngx.say(collectgarbage("count"))