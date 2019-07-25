
require "resty.core.shdict"

local cats = ngx.shared.cats
local capacity_bytes = cats:capacity()
local free_page_bytes = cats:free_space()

ngx.say(capacity_bytes)
ngx.say(free_page_bytes)
