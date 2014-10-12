LUA = lua5.2
CFLAGS = -shared -fPIC -Wall -O2 $(shell pkg-config --cflags $(LUA))
LDFLAGS = $(shell pkg-config --libs $(LUA))
TARGET = env

$(TARGET).so: $(TARGET).c
	gcc $(CFLAGS) -o $@ $< $(LDFLAGS) 

clean:
	-rm $(TARGET).so
