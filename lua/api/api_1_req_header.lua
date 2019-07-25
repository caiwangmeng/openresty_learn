-- 1
-- For Request Or Response
-- OpenResty API    更多参见:   https://github.com/openresty/lua-nginx-module/#nginx-api-for-lua

-- detail for request headers
ngx.req.set_header("Accept", "text/css")
ngx.req.clear_header("Accept")

local h, err = ngx.req.get_headers(100, true)

-- a maximum of 100 headers as default, and can set first param as 0 to remove this limit
if err == "truncated" then
    -- one can choose to ignore or reject the current request here
end


for k, v in pairs(h) do
    ngx.say(k .. ": " .. v .. "\n")
end

ngx.say("------ 指定头获取 ------")
-- 相对nginx原生api，此种做法每次需要迭代，效率低
ngx.say("Host: ", ngx.req.get_headers()["Host"])
ngx.say("accept: ", ngx.var.http_accept)



