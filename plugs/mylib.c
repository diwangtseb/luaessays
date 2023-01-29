#include <stdio.h>
#include "lua.h"
#include "lauxlib.h"

static int l_test (lua_State *L) {
    printf("hello world\n");
    return 0;
}

static const struct luaL_Reg mylib [] = {
    {"test", l_test},
    {NULL, NULL}
};

// loader函数
int luaopen_mylib(lua_State *L) {
    luaL_newlib(L, mylib);
    return 1;
}