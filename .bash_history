sudo apt update
sudo apt install nasm qemu-system-x86
nano boot.asm
nasm -f bin boot.asm -o boot.bin
dd if=boot.bin of=kavios.img bs=512 count=1
qemu-system-x86_64 -fda kavios.img
