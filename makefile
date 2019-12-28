all: bin/writeTar2Ext

bin/writeTar2Ext: src/writeTar2Ext.c
	mkdir -p bin
	$(CC) -std=c99 -Wall -Wextra -Werror -pedantic $^ -ltar -lext2fs -lcom_err -o $@

clean:
	rm -rf bin
