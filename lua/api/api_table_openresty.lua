-- API: Since OpenResty 1.15.8.1 !!!
-- table.nkeys
-- table.isempty
-- table.isarray
-- table.clone

local nkeys = require "table.nkeys"
local table_isempty = require "table.isempty"
local table_isarray = require "table.isarray"
local table_clone = require "table.clone"

ngx.print(nkeys({}))  -- 0
ngx.print("\n")
ngx.print(nkeys({ "a", nil, "b" }))  -- 2
ngx.print("\n")
ngx.print(nkeys({ dog = 3, cat = 4, bird = nil }))  -- 2
ngx.print("\n")
ngx.print(nkeys({ "a", dog = 3, cat = 4 }))  -- 3
ngx.print("\n")

ngx.print(table_isempty({}))
ngx.print("\n")

local table1 = {1, 2, 5, first = 7}
ngx.print(table_isarray(table1))
ngx.print("\n")
table1.first = nil
ngx.print(table_isarray(table1))
ngx.print("\n")

local table2 = table_clone(table1)
ngx.print(#table2)
ngx.print("\n")

ngx.print(table2[3])
ngx.print("\n")
