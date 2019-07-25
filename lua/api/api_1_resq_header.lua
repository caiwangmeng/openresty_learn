-- 1
-- For Request Or Response
-- OpenResty API    更多参见:   https://github.com/openresty/lua-nginx-module/#nginx-api-for-lua

-- detail for response header

ngx.header["Content-Type"] = 'text/plain'
ngx.header["Content-Type"] = 'application/json'

ngx.header["X-My-Header"] = 'blah blah';
-- multi
ngx.header['Set-Cookie'] = {'a=32; path=/', 'b=4; path=/'}
-- del
ngx.header["X-My-Header"] = nil;

-- add header by nex.resp api & override same key header by ngx.header['key'] api
local ngx_resp = require "ngx.resp"
ngx_resp.add_header("X-My-Header", "bar")
ngx_resp.add_header("X-My-Header", "bar1")
ngx_resp.add_header("X-My-Header", "bar2")


ngx.say("aaa")


