--local ngx_ctx = ngx.ctx
--
--local function bar()
--    ngx_ctx.host =  'test.com'
--end
--
--ngx.say(ngx_ctx.host)


local ngx_ctx = ngx

local function bar()
    ngx_ctx.host =  'test.com'
end

ngx.say(ngx_ctx.host)
