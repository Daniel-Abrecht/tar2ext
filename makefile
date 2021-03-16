LDLIBS+=-ltar -lext2fs -lcom_err
CFLAGS+=-std=c99 -Wall -Wextra -Werror -pedantic

all: bin/tar2ext

bin/tar2ext: src/tar2ext.c
	mkdir -p bin
	$(CC) -o "$@" $(LDFLAGS) $(CFLAGS) $^ $(LOADLIBES) $(LDLIBS)

clean:
	rm -rf bin
