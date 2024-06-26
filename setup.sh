#!/bin/bash

gpp=$1
project_dir="$(pwd)"

if [ -z "${gpp}" ];then 
    echo "./setup.sh <directorio de g++>"
    exit
fi

mkdir bin 
mkdir bin/img bin/out bin/x64

mkdir -p disk/iso/boot/grub

cat <<'EOF' > ./disk/iso/boot/grub/grub.cfg 
menuentry "x64"{
	multiboot2 /boot/kernel_x64.bin
}
EOF

cat <<EOF > .env 
PROJECT_DIR=${project_dir}
GPP=${gpp}
EOF

echo "Listo! Ya se crearon los archivos necesarios para construir el proyecto"