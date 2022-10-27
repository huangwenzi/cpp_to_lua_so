#include<stdio.h>

#include"src/lua.hpp"
#include"src/lapi.h"

lua_State *L;

extern "C" {
static int l_add(lua_State *L);
int luaopen_libadd(lua_State* L);
}

static int l_add(lua_State *L) {
  double num1 = luaL_checknumber(L, 1);
  double num2 = luaL_checknumber(L, 2);

  lua_pushnumber(L, 1);
  return 1;
}

static const struct luaL_Reg libadd[] = {
        {"myadd", l_add},
        {NULL, NULL}
};

extern int luaopen_libadd(lua_State *L) {
  luaL_newlib(L, libadd);
  return 1;
}