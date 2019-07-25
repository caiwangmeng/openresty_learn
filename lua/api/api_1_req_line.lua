-- 1
-- For Request Or Response
-- OpenResty API    更多参见:   https://github.com/openresty/lua-nginx-module/#nginx-api-for-lua
-- ngxin内置变量  更多参见:  http://nginx.org/en/docs/http/ngx_http_core_module.html#variables

-- detail for request line
-- GET /api/api_ngx_var HTTP/1.1


-- set_method 只能接受数字常量，以表明请求方式，ngx.HTTP_POST对应的数字常量是8
-- 改写请求方式可用于重定向等
ngx.req.set_method(ngx.HTTP_POST)

ngx.say(ngx.req.http_version())
ngx.say(ngx.req.get_method())


-- 一个是数值，一个是字符串  弱语言不同类型比较的坑!!!
if (ngx.req.get_method() == ngx.HTTP_POST) then
    ngx.say("haha bug")
end


-- ngx origin api
ngx.say(ngx.var.scheme)
ngx.say(ngx.var.request_method)
ngx.say(ngx.var.server_protocol)


