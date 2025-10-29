flags=-Wall -O2 -std=c2x
ldflags=

all: bin/tree

bin:
	mkdir -p bin

bin/tree: bin/tree.o | bin
	cc ${flags} $^ -o $@ ${ldflags}
bin/tree.o: tree.c | bin
	cc ${flags} -c $< -o $@

clean:
	rm -rf bin/*.o bin/tree