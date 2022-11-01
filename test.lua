-- package.cpath = package.cpath .. "./?.so"  -- 如果你生成的是dylib文件，那么so要换成dylib
print(package.cpath)
local mylib = require "libplua"
local socket = require("socket")
-- local result =  mylib.myadd(2,1)
-- print("C func add : " .. result)

local function test_1()
    socket.select(nil, nil, 1)
    print("test_1:")
end

local function test_2()
    socket.select(nil, nil, 10)
    print("test_2:")
end

mylib.start(0, "call.pro")

print("do_some_thing")
test_1()
test_2()

-- 结束采样，输出结果文件
mylib.stop()