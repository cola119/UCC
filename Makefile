GFLAGS=-std=c11 -g -staic

ucc: ucc.c

test: ucc
		./test.sh

clean:
		rm -f ucc *.o *~ tmp*

.PHONY: test clean