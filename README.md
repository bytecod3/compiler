## Introduction
Compiler components

### Instructions
Make sure you have Flex and GCC or any other C compiler installed.

Run the following command to install flex

```bash
sudo apt-get install -y flex

```

### Compile and run
```bash  
flex yourlex.l
gcc lex.yy.c -lfl
```
If no errors, run
```bash  
./a.out
```


