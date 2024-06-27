#!make
CXX_FLAGS= -c -ffreestanding -Wall -Wextra -fno-exceptions -fno-rtti -fno-use-cxa-atexit -I $(INCLUDE)

kernel: kernel.cpp
	$(GXX) $(CXX_FLAGS) $(ARG_FLAGS) kernel.cpp -o $(PROJECT_DIR)/bin/out/kernel.o 