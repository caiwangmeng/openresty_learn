
-- OpenResty      更多参见:  https://github.com/openresty/lua-nginx-module/#nginx-api-for-lua       ngx.req...!!!
-- ngxin内置变量  更多参见:  http://nginx.org/en/docs/http/ngx_http_core_module.html#variables
local my_var = ngx.var.my_var

-- 自定义
ngx.say(my_var)
ngx.say("242423xx")

-- 请求行
-- GET /api/api_ngx_var HTTP/1.1
ngx.say(ngx.var.scheme)
ngx.say(ngx.var.request_method)

-- set_method 只能接受数字常量，以表明请求方式，ngx.HTTP_POST对应的数字常量是8
-- 改写请求方式可用于重定向等
ngx.req.set_method(ngx.HTTP_POST)

ngx.say(ngx.req.http_version())
ngx.say(ngx.req.get_method())

-- 一个是数值，一个是字符串  弱语言不同类型比较的坑
if (ngx.req.get_method() == ngx.HTTP_POST) then
    ngx.say("haha bug")
end

-- 请求头
ngx.say("------ 请求头 ------")
ngx.say(ngx.var.host)
ngx.say(ngx.var.uri)
ngx.say(ngx.var.request_uri)

-- 请求体

-- 待分
ngx.say(ngx.var.server_protocol)
