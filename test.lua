-- package.cpath = package.cpath .. "./?.so"  -- 如果你生成的是dylib文件，那么so要换成dylib
print(package.cpath)
local mylib = require "libadd"
local result =  mylib.myadd(2,1)
print("C func add : " .. result)