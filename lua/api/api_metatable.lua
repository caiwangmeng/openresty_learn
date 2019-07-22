-- API:

local version = {
    major = 1,
    minor = 2,
    patch = 3
}

-- 默认方法
ngx.print(tostring(version))
ngx.print("\n")

-- 重写方法
version = setmetatable(version, {
    __tostring = function(t)
        return string.format("%d.%d.%d", t.major, t.minor, t.patch)
    end
})

ngx.print(tostring(version))
ngx.print("\n")


local version2 = {
major = 1,
minor = 1
}

version2 = setmetatable(version2, {
    __index = function(table, key)
        if key == "patch" then
            return 2
        end
    end,
    __tostring = function(t)
        return string.format("%d.%d.%d", t.major, t.minor, t.patch)
    end
})
ngx.print(tostring(version2))
ngx.print("\n")





