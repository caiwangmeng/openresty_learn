
if (ngx.var.arg_a == nil) then
    ngx.req.set_uri_args("a=3")
end

ngx.req.set_uri("/api2/fooXXXX", false)

ngx.redirect("http://47.92.220.76/api2" .. ngx.var.uri .. "?a=" .. ngx.var.arg_a)