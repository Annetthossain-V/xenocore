cmake_minimum_required(VERSION 3.16)
project(xenocore LANGUAGES C ASM_NASM)

set(CMAKE_ASM_NASM_OBJECT_FORMAT elf64)

file(GLOB ASM_SOURCE "src/*.asm" )

add_executable(${PROJECT_NAME} ${ASM_SOURCE})

set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE C)

# target_link_libraries(${PROJECT_NAME} PRIVATE c)
# target_link_options(${PROJECT_NAME} PRIVATE LINKER:--dynamic-linker=/libexec/ld-elf.so.1 /usr/lib/crt1.o -L/lib/ )
target_compile_options(${PROJECT_NAME} PRIVATE "-g")
