#!make
include .env
include ./arch/x64/make.config

debug: $(LINKER)
	make -C ./arch/x64/ PROJECT_DIR="$(PROJECT_DIR)" ASM="$(ASM)"
	make -C ./kernel PROJECT_DIR="$(PROJECT_DIR)" CXX="$(CXX)" ARG_FLAGS="-g -DDEBUG"

release: $(LINKER)
	make -C ./arch/x64/ PROJECT_DIR="$(PROJECT_DIR)" ASM="$(ASM)"
	make -C ./kernel PROJECT_DIR="$(PROJECT_DIR)" CXX="$(CXX)" ARG_FLAGS="-O2"

	

mount:


clean:
	rm $(PROJECT_DIR)/bin/out/*.o