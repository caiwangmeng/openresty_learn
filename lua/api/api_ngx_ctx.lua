local ngx_ctx = ngx.ctx

local function bar()
    ngx_ctx.host =  'test.com'
end

ngx.say(ngx_ctx.host)


--local ngx = ngx
--
--local function bar()
--    ngx.ctx.host =  'test.com'
--end
--
--ngx.say(ngx.ctx.host)
