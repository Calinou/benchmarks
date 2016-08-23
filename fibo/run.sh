#!/bin/sh

COLOR_CYAN="\e[1;36m"
COLOR_YELLOW="\e[1;33m"
COLOR_RESET="\e[0m"
WAIT_TIME=1

# Wait $WAIT_TIME seconds between benchmarks
time_sleep() {
  time "$@"
  sleep $WAIT_TIME
}

echo -e "${COLOR_CYAN}C${COLOR_RESET}"
echo -e "${COLOR_YELLOW}GCC -O3${COLOR_RESET}"
time_sleep c/fibo.gcc
echo -e "${COLOR_YELLOW}Clang -O3${COLOR_RESET}"
time_sleep c/fibo.clang

echo -e "\n"

echo -e "${COLOR_CYAN}C++${COLOR_RESET}"
echo -e "${COLOR_YELLOW}GCC -O3${COLOR_RESET}"
time_sleep cpp/fibo.gcc
echo -e "${COLOR_YELLOW}Clang -O3${COLOR_RESET}"
time_sleep cpp/fibo.clang

echo -e "\n"

echo -e "${COLOR_CYAN}C#${COLOR_RESET}"
echo -e "${COLOR_YELLOW}Mono${COLOR_RESET}"
time_sleep mono cs/Fibo.exe

echo -e "\n"

echo -e "${COLOR_CYAN}Go${COLOR_RESET}"
echo -e "${COLOR_YELLOW}System Go${COLOR_RESET}"
time_sleep go/fibo

echo -e "\n"

echo -e "${COLOR_CYAN}Java${COLOR_RESET}"
echo -e "${COLOR_YELLOW}System Java${COLOR_RESET}"
cd java/
time_sleep java Main
cd ../

echo -e "\n"

echo -e "${COLOR_CYAN}JavaScript${COLOR_RESET}"
echo -e "${COLOR_YELLOW}Node.js${COLOR_RESET}"
time_sleep node js/fibo.js

echo -e "\n"

echo -e "${COLOR_CYAN}Lua${COLOR_RESET}"
echo -e "${COLOR_YELLOW}Lua${COLOR_RESET}"
time_sleep lua lua/fibo.lua
echo -e "${COLOR_YELLOW}LuaJIT${COLOR_RESET}"
time_sleep luajit lua/fibo.lua

echo -e "\n"

echo -e "${COLOR_CYAN}Nim${COLOR_RESET}"
echo -e "${COLOR_YELLOW}Nim (C, debug)${COLOR_RESET}"
time_sleep nim/fibo.c.debug
echo -e "${COLOR_YELLOW}Nim (C, release)${COLOR_RESET}"
time_sleep nim/fibo.c.release
echo -e "${COLOR_YELLOW}Nim (C++, debug)${COLOR_RESET}"
time_sleep nim/fibo.cpp.debug
echo -e "${COLOR_YELLOW}Nim (C++, release)${COLOR_RESET}"
time_sleep nim/fibo.cpp.release

echo -e "\n"

echo -e "${COLOR_CYAN}PHP${COLOR_RESET}"
echo -e "${COLOR_YELLOW}System PHP${COLOR_RESET}"
time_sleep php php/fibo.php

echo -e "\n"

echo -e "${COLOR_CYAN}Python${COLOR_RESET}"
echo -e "${COLOR_YELLOW}Python 2${COLOR_RESET}"
time_sleep python2 py/fibo.py
echo -e "${COLOR_YELLOW}Python 3${COLOR_RESET}"
time_sleep python3 py/fibo.py
echo -e "${COLOR_YELLOW}PyPy${COLOR_RESET}"
time_sleep pypy py/fibo.py
echo -e "${COLOR_YELLOW}PyPy3${COLOR_RESET}"
time_sleep pypy3 py/fibo.py

echo -e "\n"

echo -e "${COLOR_CYAN}Ruby${COLOR_RESET}"
echo -e "${COLOR_YELLOW}System Ruby${COLOR_RESET}"
time_sleep ruby rb/fibo.rb


echo -e "\n"

echo -e "${COLOR_CYAN}Rust${COLOR_RESET}"
echo -e "${COLOR_YELLOW}rustc (debug)${COLOR_RESET}"
time_sleep rs/target/debug/fibo
echo -e "${COLOR_YELLOW}rustc (release)${COLOR_RESET}"
time_sleep rs/target/release/fibo

echo -e "\n"

echo -e "${COLOR_CYAN}Haskell${COLOR_RESET}"
echo -e "${COLOR_YELLOW}system GHC${COLOR_RESET}"
time_sleep hs/fibo.out

echo -e "\n"

echo -e "${COLOR_CYAN}Erlang${COLOR_RESET}"
echo -e "${COLOR_YELLOW}system Erlang${COLOR_RESET}"
cd erl
time_sleep erl -noinput -run fibo
cd ..

echo -e "\n"

echo -e "${COLOR_CYAN}Elixir${COLOR_RESET}"
echo -e "${COLOR_YELLOW}system Elixir${COLOR_RESET}"
cd ex
time_sleep elixir -e "IO.puts Fibo.fibo 40"
cd ..
