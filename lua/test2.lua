
local mysql = require "test1" -- 先引用 lua-resty 库

local db, err = mysql:new() -- 新建一个类的实例
db:set_timeout(1000) -- 调用类的方法
