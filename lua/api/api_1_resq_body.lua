-- 1
-- For Request Or Response
-- OpenResty API    更多参见:   https://github.com/openresty/lua-nginx-module/#nginx-api-for-lua

-- detail for response body
-- TODO

ngx.print("The ngx.print do not have newline" .. "\n")
ngx.say("And ngx.say have one newline default")
ngx.say("Response 3")
ngx.say("Response 4")

-- contact array param
ngx.say("The api ngx.say can accept array param, so assign contact string work to C, which lua not good at")
ngx.say({"hello", ", ", "world", "! hey boy"})


