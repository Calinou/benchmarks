#!/bin/sh -x

cd c/
gcc -O3 fibo.c
mv a.out fibo.gcc
clang -O3 fibo.c
mv a.out fibo.clang

cd ../cpp/
g++ -O3 fibo.cpp
mv a.out fibo.gcc
clang++ -O3 fibo.cpp
mv a.out fibo.clang

cd ../cr/
crystal build fibo.cr
mv fibo fibo.debug
crystal build --release fibo.cr
mv fibo fibo.release

cd ../cs/
mcs Fibo.cs

cd ../go/
go build fibo.go

cd ../java/
javac Main

cd ../nim/
nim compileToC -d:debug fibo.nim
mv fibo fibo.c.debug
nim compileToC -d:release fibo.nim
mv fibo fibo.c.release
nim compileToCpp -d:debug fibo.nim
mv fibo fibo.cpp.debug
nim compileToCpp -d:release fibo.nim
mv fibo fibo.cpp.release

cd ../rs/
cargo build
cargo build --release
