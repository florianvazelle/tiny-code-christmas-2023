default:
  just --list

fmt:
  luarocks install luacheck
  luacheck
