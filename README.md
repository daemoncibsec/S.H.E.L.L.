<h1 align="center">
  <img src="https://github.com/daemoncibsec/S.H.E.L.L./blob/main/header-SHELL.png" alt="SHELL" width="1000px">
  <br>
</h1>

## Summary
Shellcode Handcrafted & Engineered at Low Level (S.H.E.L.L.) is a repository that aims to create a collection of handmade (also not vibe-coded) custom shellcodes. All shellcodes here will be designed for GNU/Linux systems with x86_64 architecture. I will be posting (whenever it's possible) new shellcode in this repository, as well as new source code for both shellcode and vulnerable applications to test this shellcode.

## Finding resources
In this repository, the resources are organized as follows:

- **shellcode:** Binary files that contain the shellcode ready to execute.
- **testing:**: C-coded programs that are vulnerable or intended to execute the shellcode in order to test if it's functional.
- **src:** Source code of both shellcode (written in .asm) and testing programs (written in .c) for you to compile or understand how they work.

## Compiling shellcode
The shellcode you'll find in `src/shellcode` is written for the **nasm** assembler. In order to create the assembled ELF, you'll need to use both **nasm** assembler and **ld** linker as follows.

```bash
nasm -f elf64 <shellcode.asm> -o <shellcode.o>
ld <shellcode.o> -o <shellcode>
```

## Contributing
If you want to be part of this project, you can contact me via this email:

- daemoncibsec@gmail.com

And share information about shellcode and exploit development such as stack alignment techniques or information about Assembly or C you find interesting. I hope you find this repository useful!

## Authors

- [@daemoncibsec](https://www.github.com/daemoncibsec)
