-- 1
-- For Request Or Response
-- OpenResty API    更多参见:   https://github.com/openresty/lua-nginx-module/#nginx-api-for-lua

-- detail for response line
-- TODO
local a = ngx.var.arg_a

if (a == nil) then
    ngx.exit(ngx.exit(ngx.HTTP_BAD_REQUEST))
end

ngx.say("The request is ok! Param a is: " .. ngx.var.arg_a)



