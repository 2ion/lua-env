# lua-env

The lua-env library adds functionality to set environment variables to
Lua. It provides a table for getting, setting and clearing environment
variables and tries to be small and concise.

Key-value pairs as representations of the env variables are
obtained by splitting at the first '=' character. I wrote the library
for Linux, but it should work on all Unixes; I don't know about Windows
platforms.

The library consists of a C part (implements setting and listing) and a
Lua part (implements the Env table using the C functionality and
os.getenv from Lua).

The interface is as follows:

```lua
local Env = require("Env")

-- setting COLOR = blue
Env.COLOR = "blue"

-- getting COLOR
color = Env.COLOR

-- unsetting COLOR
Env.COLOR = nil

-- list all environment variables
for k,v in pairs(Env()) do
    print(k,v)
end

-- filter the list of environment variables.
-- Pass a filter function f(k, v), the arguments of which will be
-- the environment kv-pairs. Only if the functions returns a true value
-- the kv-pair will be entered into the table returned by Env(f).
-- Here: report only variables the value of which contains >1 digit.
for k,v in pairs(Env(function (k,v) return v:match("[%d]+") end)) do
    print(k,v)
end

```

# License

```
env - Lua library for getting, setting and clearing env variables
Copyright (C) 2013 Jens Oliver John <asterisk ~ 2ion.de>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Project home: https://github.com/2ion/lua-env
```
