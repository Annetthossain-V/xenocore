cmake_minimum_required(VERSION 3.16)
project(xenocore LANGUAGES C ASM_NASM)

set(CMAKE_ASM_NASM_OBJECT_FORMAT elf64)

file(GLOB _SOURCE "src/*.asm" "src/*.c" "src/util/*.asm" "src/util/*.c" "src/data/*.c"
                  "src/builtin/*.asm" "src/builtin/*.c" )

add_executable(${PROJECT_NAME} ${_SOURCE})

set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE C)

# target_compile_options(${PROJECT_NAME} PRIVATE "-g")
