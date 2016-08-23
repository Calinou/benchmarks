# Benchmarks

## Simple Fibonacci sequence

Using a recursive function, counts the time required to calculate the Fibonacci
sequence of number 40. Intentionally unoptimized.

### Results

#### Hardware

- Intel Core i7-6700K @ 4.0 GHz (Turbo enabled)
- 32GB DDR4-2133 C15

#### Software

- Distribution: [Antergos](http://antergos.com)
- Linux 4.7.1 64-bit

#### Results table

**Note:** results are calculated using the UNIX `time` command which may be
slightly inaccurate, and takes into account the possible interpreter start-up
time.

|   Language implementation | Time to complete ↑ |
| ------------------------: | :----------------- |
|         C (GCC 6.1.1 -O3) | 0.24 seconds       |
|       C++ (GCC 6.1.1 -O3) | 0.24 seconds       |
| Nim 0.14.2 (release, C++) | 0.25 seconds       |
|   Nim 0.14.2 (release, C) | 0.28 seconds       |
|     Rust 0.12.0 (release) | 0.45 seconds       |
|  Java (OpenJDK 1.8.0_102) | 0.46 seconds       |
|     C++ (Clang 3.8.1 -O3) | 0.48 seconds       |
|       C (Clang 3.8.1 -O3) | 0.50 seconds       |
|                    Go 1.7 | 0.53 seconds       |
|    Crystal 0.18.7 (debug) | 0.54 seconds       |
|          Mono 4.4.1 (mcs) | 0.58 seconds       |
|  Crystal 0.18.7 (release) | 0.89 seconds       |
|             Node.js 6.4.0 | 1.01 seconds       |
|       Rust 0.12.0 (debug) | 1.09 seconds       |
|              LuaJIT 2.0.4 | 1.13 seconds       |
|                PyPy 5.3.1 | 2.59 seconds       |
|             Erlang 19.0.4 | 2.88 seconds       |
|              Elixir 1.3.2 | 2.93 seconds       |
|               PyPy3 2.4.0 | 3.04 seconds       |
|   Nim 0.14.2 (debug, C++) | 4.28 seconds       |
|     Nim 0.14.2 (debug, C) | 4.31 seconds       |
|       Haskell (GHC 8.0.1) | 5.56 seconds       |
|                PHP 7.0.10 | 7.79 seconds       |
|                Ruby 2.3.1 | 10.85 seconds      |
|                 Lua 5.3.3 | 13.05 seconds      |
|             Python 2.7.12 | 26.28 seconds      |
|              Python 3.5.2 | 33.46 seconds      |

## License

Copyright (c) 2016 Hugo Locurcio and contributors

CC0 1.0 Universal, see [LICENSE.md](LICENSE.md) for details.
