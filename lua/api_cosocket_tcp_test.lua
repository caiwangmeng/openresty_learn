local sock = ngx.socket.tcp()

sock:settimeouts(1000, 2000, 3000)  -- connect,send,receive

local ok, err = sock:connect("47.92.220.76", 80)
if not ok then
   ngx.say("failed to connect: ", err)
   return
end

local req_data = "GET /api3/hello HTTP/1.1\r\nHost: www.baidu.com\r\n\r\n"
local _, err = sock:send(req_data)
if err then
   ngx.say("failed to send: ", err)
   return
end

--local data, err, partial = sock:receive()
local data, err, partial = sock:receiveany(20480)
if err then
   ngx.say("failed to receive: ", err)
   return
end

--local reader = sock:receiveuntil("\r\n")
--
--while true do
--   local data, err, partial = reader(4)
--   if not data then
--      if err then
--         ngx.say("failed to read the data stream: ", err)
--         break
--      end
--
--      ngx.say("read done")
--      break
--   end
--   ngx.say("read chunk: [", data, "]")
--end


--sock:close()
local ok, err = sock:setkeepalive(2 * 1000, 100)
if not ok then
   ngx.say("failed to set reusable: ", err)
end

ngx.say("response is: ", data)
