is_amstrong_number : objects
	gcc main.o stack.o armstrong.o -o is_armstrong_number -lm 
main.o : main.c
	gcc -c main.c
armstrong.o : armstrong.c
	gcc -c armstrong.c
stack.o : stack.c
	gcc -c stack.c	
objects : main.o stack.o armstrong.o

clean-objects: 
	rm -f main.o stack.o armstrong.o
clean-reports:
	rm -f reports/cmocka/*

clean-tests:
	rm -rf tests/build/*
clean: clean-reports clean-objects clean-tests
	rm -f is_armstrong_number

tests: clean armstrong.o stack.o
	gcc tests/test_is_armstrong_number.c armstrong.o stack.o -lm -lcmocka -o tests/build/test_is_armstrong_number
	CMOCKA_MESSAGE_OUTPUT=stdout CMOCKA_XML_FILE='' ./tests/build/test_is_armstrong_number 

docker-build:
	docker build -t git-worktree-demo .

docker-bash:
	docker run --rm -ti -v $(shell pwd):/app -w /app git-worktree-demo bash
