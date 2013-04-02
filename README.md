# lua-env

The lua-env library adds functionality to set environment variables to
Lua. It provides a table for getting, setting and clearing environment
variables. The usage is as follows:

```lua
local Env = require("Env")

-- setting COLOR = blue
Env.COLOR = "blue"

-- getting COLOR
color = Env.COLOR

-- unsetting COLOR
Env.COLOR = nil
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
