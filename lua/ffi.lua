ngx.header["Content-type"] = "application/json;charset=UTF8;"


local ffi = require("ffi")
ffi.cdef[[
int printf(const char *fmt, ...);
]]
ffi.C.printf("Hello %s!", "world")
