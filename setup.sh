#!/bin/bash

gxx=$1
asm=$2
project_dir="$(pwd)"

if [ -z "${gxx}" ] || [ -z "${asm}" ];then 
    echo "./setup.sh <directorio de g++> <directorio de nasm>"
    exit
fi

mkdir bin -v 2>>./log.txt
mkdir bin/img bin/out bin/x64 2>>./log.txt

mkdir -p disk/iso/boot/grub 2>>./log.txt

cat <<'EOF' > ./disk/iso/boot/grub/grub.cfg 
menuentry "x64"{
	multiboot2 /boot/kernel_x64.bin
}
EOF

cat <<EOF > .env 
PROJECT_DIR=${project_dir}
INCLUDE=${project_dir}/include
GXX=${gxx}
ASM=${asm}
EOF

echo "Listo! Ya se crearon los archivos necesarios para construir el proyecto"