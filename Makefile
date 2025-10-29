flags=-Wall -O2 -std=c2x
ldflags=

all: tree

tree: bin/tree.o
	cc ${flags} $^ -o bin/$@ ${ldflags}
tree.o: tree.c
	cc ${flags} -c $^ -o bin/$@

clean:
	rm -rf *.o tree 