
local dogs = ngx.shared.dogs
dogs:set("Jim", "8XSF13154x")
dogs:set(1, 12321321231)
ngx.say("STORED")