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

clean: clean-objects
	rm -f is_armstrong_number

docker-build:
	docker build -t git-worktree-demo .

docker-bash: docker-build
	docker run --rm -ti -v $(shell pwd):/app -w /app git-worktree-demo bash
