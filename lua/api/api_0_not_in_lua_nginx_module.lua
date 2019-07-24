--
-- Created by IntelliJ IDEA.
-- User: admin
-- Date: 2019/7/24
-- Time: 13:19
-- To change this template use File | Settings | File Templates.
--

local ngx_re = require "ngx.re"

local res, err = ngx_re.split("a,b,c,d", ",", nil, {pos = 5})
ngx.say(res)
