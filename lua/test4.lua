local tcp = ngx.socket.tcp

local _M = { _VERSION = '0.21' } -- 使用 table 模拟类
local mt = { __index = _M } -- mt 即 metatable 的缩写，__index 指向类自身

-- 类的构造函数
function _M.new(self)
   local sock, err = tcp()
   if not sock then
      return nil, err
   end
   return setmetatable({ sock = sock }, mt) -- 使用 table 和 metatable 模拟类的实例
end

-- 类的成员函数
function _M.set_timeout(self, timeout) -- 使用 self 参数，获取要操作的类的实例
   local sock = self.sock
   if not sock then
      return nil, "not initialized"
   end

   return sock:settimeout(timeout)
end

return _M
