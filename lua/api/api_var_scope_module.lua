
local _M = {}

local data = {
    dog = 3,
    cat = 4,
    pig = 5
}

function _M.get_age(animal_name)
    if (animal_name == nil) then
        return 0
    end
    return data[animal_name]
end

return _M