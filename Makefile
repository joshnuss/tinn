BIN = test

CFLAGS = -Wall -Wextra -pedantic -Ofast -flto -march=native

LDFLAGS = -lm

CC = g++

SRC = test.c Tinn.c

all:
	$(CC) -o $(BIN) $(SRC) $(CFLAGS) $(LDFLAGS)

debug:
	$(CC) -o $(BIN) $(SRC) $(CFLAGS) $(LDFLAGS) -ggdb
	gdb test

run:
	./$(BIN)

clean:
	rm -f $(BIN)
