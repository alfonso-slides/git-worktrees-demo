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

## Ejecución de los tests

Los tests se ejecutan usando mocka. Para ejecutarlos solo tienes que lanzar
`make tests` dentro del contenedor de docker:

```bash
> make docker-bash
root@0b0faa8b3bea:/app# make tests
rm -f reports/cmocka/*
rm -f main.o stack.o armstrong.o
rm -rf tests/build/*
rm -f is_armstrong_number
gcc -c armstrong.c
gcc -c stack.c
gcc tests/test_is_armstrong_number.c armstrong.o stack.o -lm -lcmocka -o tests/build/test_is_armstrong_number
CMOCKA_MESSAGE_OUTPUT=stdout CMOCKA_XML_FILE='' ./tests/build/test_is_armstrong_number
[==========] Running 2 test(s).
[ RUN      ] test_is_armstrong_number_returns_true
[       OK ] test_is_armstrong_number_returns_true
[ RUN      ] test_is_armstrong_number_returns_false
[       OK ] test_is_armstrong_number_returns_false
[==========] 2 test(s) run.
[  PASSED  ] 2 test(s).
```
