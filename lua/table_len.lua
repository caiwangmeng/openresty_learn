local t1 = { 1, 2, 3 }
print("Test1 " .. table.getn(t1))

local t2 = { 1, a = 2, 3 }
print("Test2 " .. table.getn(t2))

local t3 = { 1, nil }
print("Test3 " .. table.getn(t3))

local t4 = { 1, nil, 2 }
print("Test4 " .. table.getn(t4))

local t5 = {1, nil, name='cjf', 2}
print("Test5 " .. table.getn(t5))
