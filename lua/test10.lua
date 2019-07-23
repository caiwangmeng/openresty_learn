local cjson = require "cjson"
local t = {}
ngx.print(cjson.encode(t))
ngx.print("\n")

t = {123}
ngx.print(tostring(t))



