# 版本
src lua：5.3.6
需要注意使用的lua版本和src的lua版本，不对应会出错

# 编译指令
gcc -c -fPIC -o libadd.o libadd.cpp
gcc -shared -o libadd.so libadd.o


