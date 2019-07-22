-- API:
-- table.getn     ---> #
-- table.insert
-- table.remove
-- table.concat

local color = {"red", "blue", third = "green", "yellow", "orange"}

table.remove(color, 1)

-- 去除table中k,v值
color.third = nil

-- ipairs 是纯序列遍历 pairs包括k,v
for k, v in pairs(color) do
   ngx.print(k .. ' & ' .. v ..'\n')
end

-- table.getn 和 # 时间复杂度 O(n)
ngx.print('table length: ' .. table.getn(color))
ngx.print('\n')

ngx.print('table index 2 is: ' .. color[2])
ngx.print('\n')

ngx.print(table.concat(color, ","))
ngx.print('\n')

ngx.print(table.concat(color, ",", 2, 3))
ngx.print('\n')

table.insert(color, 1, "black")
ngx.print(color[1])
ngx.print('\n')

table.insert(color, "pink")
ngx.print(#color .. " & " .. color[#color])
ngx.print('\n')

local new_tab = require "table.new"
local t = new_tab(100, 0)
for i = 1, 100 do
   t[i] = i
end

