gcc -c -I /opt/homebrew/Cellar/lua/5.4.4_1/include/lua/ mylib.c
gcc -O2 -bundle -undefined dynamic_lookup -o mylib.so mylib.o

- [x] record lua c api compile