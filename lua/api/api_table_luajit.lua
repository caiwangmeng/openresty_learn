-- API:
-- table.new
-- table.clear

local new_tab = require "table.new"
local clear_tab = require "table.clear"

-- 100 is array size; 1 is hash size
--local t = new_tab(100, 1)
--for i = 1, 100 do
--   t[i] = i
--end
--ngx.print(#t .. " & " ..t[5])

local color = {first = "red", "blue", third = "green", "yellow"}
clear_tab(color)
for k, v in pairs(color) do
   ngx.print(k)
end
