require('map)

local map = Map()
map.len = function()
end                 -- would fail
print(map.len())    -- 0
map:set('b','b')
print(map.b)        -- b
print(map.len())    -- 1
map:unset('a')
map[1] = 'c'
print(map[1])       -- 1
map:print()         -- b=b, 1=c


print(string.rep('*', 20))
local map = Map('number', 'string')
map:set(1, 's')
map:set(2, 2)
map:set(3, function() return 3 end)
map:set('4', 4)
map:print()         -- [1]=s
map:setKeyType('string')
map:setValueType('number')
map:set('a', 22)
map:set(2, 'a')
map:set(1, 1)
map[3]   = 3
map.a    = 4
map[1] = false
map:print()         -- [a]=4
