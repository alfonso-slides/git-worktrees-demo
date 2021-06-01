Repositorio utilizado para la demo de la presentación git-worktrees.

Para crear una imagen de docker con todo lo necesario para ejecutar la demo,
utiliza el siguiente comando:

```bash
> make docker-build
```

Para compilar el programa y ejecutarlo:

```
> make docker-bash
...
root@e30e4350f77e:/app# make
gcc -c main.c
gcc -c stack.c
gcc -c armstrong.c
gcc main.o stack.o armstrong.o -o is_armstrong_number -lm
root@ed45d2204f7f:/app# ./is_armstrong_number
Introduce un número entero 10
10 no es un número de armstrong 😢
root@ed45d2204f7f:/app# ./is_armstrong_number
Introduce un número entero371
371 es un número de armstrong 😎
```

Trabajo en el readme...
