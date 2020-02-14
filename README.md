# Programming Language Inception

A  project where a program is coded in as many languages
as is feasible, chained together with each program calling the next as a
subprocess, across every single language used.

![alt text](docs/screenshots/program-output.gif "Project Output")

The self-imposed restrictions are:

-   Each program is coded using a language from and chained in the order listed
    on the [TIOBE Programming Language Index](https://www.tiobe.com/tiobe-index/)
    (at time of coding), excluding languages that aren't actually programming
    languages that have the required capability (e.g. SQL), are too low-level to
    implement the desired functionality (e.g. Assembly), or require proprietary
    software to run and cannot be executed from a terminal (e.g. MATLAB).
-   Use native/built-in APIs/packages/modules/libraries wherever possible.
    This includes the use of alternative interpreters or runtimes to execute
    code in the terminal for languages that weren't originally designed to do
    so (e.g. using Node for JavaScript).

## Languages Implemented

The list of currently implemented languages, in order of how they've been
chained:

-   [Java](Java.java)
-   [C](c.c)
-   [Python](python.py)
-   [C++](cplusplus.cpp)
-   [C#](CSharp.cs)
-   [Visual Basic .NET](vbdotnet.vb)
-   [JavaScript](javascript.js)
-   [PHP](php.php)
-   [Objective-C](objectivec.m)
-   [Ruby](ruby.rb)
-   [Swift](swift.swift)
-   [Go](go.go)
-   [R](r.r)
-   [D](d.d)
-   [Pascal](pascal.pas)
-   [Perl](perl.pl)
-   [Dart](dart.dart)
-   [Scala](Scala.scala)
-   [Groovy](Groovy.groovy)
-   [F#](FSharp.fs)
-   [Rust](Rust.rs)
-   [Cobol](cobol.cbl)
-   [Lisp](lisp.lisp)
-   [Kotlin](kotlin.kt)
-   [Lua](lua.lua)
-   [Fortran](fortran.f90)
-   [PowerShell](powershell.ps1)
-   [Ada](adalang.adb)
-   [Erlang](erlanglang.erl)
-   [Julia](julia.jl)
-   [ML](ml.sml)
-   [Haskell](haskell.hs)

## Installation and Compilation

Due to some programming languages being platform-restricted, or nearly
impossible to code for portability across multiple systems, all programs have
been coded based on the assumption that it will only be compiled and
executed within Linux. However they have been tested to work using the [Windows
Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about).

Below is a table of the compilers/interpreters/runtimes that have been tested to
work for each language. Using older or newer versions may likely work, but are
not guaranteed to. Included is also any commands used for compiling each program
into a usable binary, where relevant. A [Makefile](Makefile) has been included
in the repo that uses the same commands to compile each program that requires
compiling.

| Language          | Compiler                                                                                                    | Interpreter/Runtime                                                                                                                      | Suggested Compile Command                                                                  |
| ----------------- | ----------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| Java              | [OpenJDK JDK 8+](https://openjdk.java.net/install/)                                                         | [OpenJDK JRE 8+](https://openjdk.java.net/install/)                                                                                      | `javac Java.java`                                                                          |
| C                 | [GCC](https://gcc.gnu.org/install/)                                                                         |                                                                                                                                          | `gcc c.c -o c.exe`                                                                         |
| Python            |                                                                                                             | [Python 3](https://www.python.org/downloads/)                                                                                            |                                                                                            |
| C++               | [GCC](https://gcc.gnu.org/install/)                                                                         |                                                                                                                                          | `g++ cplusplus.cpp -o cplusplus.exe`                                                       |
| C#                | [MCS Compiler 6.8.0+](https://www.mono-project.com/download/stable/#download-lin)                           | [Mono Runtime 6.8.0+](https://www.mono-project.com/download/stable/#download-lin)                                                        | `mcs CSharp.cs`                                                                            |
| Visual Basic .NET | [VBNC Compiler 0.0.0.5943+](https://www.mono-project.com/download/stable/#download-lin)                     | [Mono Runtime 6.8.0+](https://www.mono-project.com/download/stable/#download-lin)                                                        | `vbnc vbdotnet.vb`                                                                         |
| JavaScript        |                                                                                                             | [Node.js 8.10.0+](https://nodejs.org/en/download)                                                                                        |                                                                                            |
| PHP               |                                                                                                             | [PHP CLI 7.2+](https://www.php.net/downloads)                                                                                            |                                                                                            |
| Objective-C       | [GCC & GNUstep](https://www.techotopia.com/index.php/Installing_and_Using_GNUstep_and_Objective-C_on_Linux) |                                                                                                                                          | ``gcc objectivec.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -o objectivec.exe`` |
| Ruby              |                                                                                                             | [Ruby 2.5+](https://www.ruby-lang.org/en/documentation/installation/)                                                                    |                                                                                            |
| Swift             | [Swift 5.1.4+](https://swift.org/download/)                                                                 |                                                                                                                                          | `swiftc swift.swift -o swift.exe`                                                          |
| Go                | [Go 1.13.7+](https://golang.org/doc/install)                                                                |                                                                                                                                          | `go build -o go.exe go.go`                                                                 |
| R                 |                                                                                                             | [R 3.4.4+](https://cran.r-project.org/)                                                                                                  |                                                                                            |
| D                 | [DMD 2.09+](https://dlang.org/download.html)                                                                |                                                                                                                                          | `dmd -of=d.exe d.d`                                                                        |
| Pascal            | [Free Pascal 3.0.4+](https://www.freepascal.org/download.html)                                              |                                                                                                                                          | `fpc -o"pascal.exe" pascal.pas`                                                            |
| Perl              |                                                                                                             | [Perl 5.26.1+](https://www.perl.org/get.html)                                                                                            |                                                                                            |
| Dart              | [Dart SDK 2.7.1+](https://dart.dev/get-dart)                                                                |                                                                                                                                          | `dart2native dart.dart`                                                                    |
| Scala             | [Scala Compiler 2.11.12+](https://www.scala-lang.org/download/)                                             | [Scala Runtime 2.11.12+](https://www.scala-lang.org/download/)                                                                           | `scalac Scala.scala`                                                                       |
| Groovy            | [Groovy Compiler 2.5.9+](http://groovy-lang.org/download.html)                                              | [Groovy Runtime 2.5.9+](http://groovy-lang.org/download.html)                                                                            | `groovyc Groovy.groovy`                                                                    |
| F#                | [F# Compiler 10.2.3+](https://fsharp.org/use/linux/)                                                        | [Mono Runtime 6.8.0+](https://www.mono-project.com/download/stable/#download-lin)                                                        | `fsharpc FSharp.fs`                                                                        |
| Rust              | [Rust Compiler 1.41.0+](https://www.rust-lang.org/tools/install)                                            |                                                                                                                                          | `rustc -o Rust.exe Rust.rs`                                                                |
| Cobol             | [GnuCOBOL 3.0+](https://sourceforge.net/projects/open-cobol/)                                               |                                                                                                                                          | `cobc -x -o cobol.exe cobol.cbl`                                                           |
| Lisp              |                                                                                                             | [SBCL 2.0.1+](https://sourceforge.net/projects/sbcl/)                                                                                    |                                                                                            |
| Kotlin            | [Kotlin Compiler 1.3.61+](https://kotlinlang.org/docs/tutorials/command-line.html)                          | [OpenJDK JRE 8+](https://openjdk.java.net/install/)                                                                                      | `kotlinc kotlin.kt -include-runtime -d kotlin.jar`                                         |
| Lua               |                                                                                                             | [Lua 5.3.3+](https://www.lua.org/download.html)                                                                                          |                                                                                            |
| Fortran           | [GCC](https://gcc.gnu.org/install/)                                                                         |                                                                                                                                          | `gfortran fortran.f90 -o fortran.exe`                                                      |
| PowerShell        |                                                                                                             | [PowerShell 6.2.4+](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7) |                                                                                            |
| Ada               | [GCC](https://gcc.gnu.org/install/)                                                                         |                                                                                                                                          | `gnatmake -B -o adalang.exe adalang.adb`                                                   |
| Erlang            | [Erlang/OTP 22.2+](https://www.erlang.org/downloads)                                                        |                                                                                                                                          | `erlc erlanglang.erl`                                                                      |
| Julia             |                                                                                                             | [Julia 1.0.4+](https://julialang.org/downloads/)                                                                                         |                                                                                            |
| ML                | [MLton Compiler 20180207](https://sourceforge.net/projects/mlton/)                                          |                                                                                                                                          | `mlton -output ml.exe ml.sml`                                                              |
| Haskell           | [GHC 7.10.3+](https://www.haskell.org/downloads/)                                                           |                                                                                                                                          | `ghc -o haskell.exe haskell.hs`                                                            |

## Usage

The program invocation chain can be started from any program in the chain, with
the first program being the Java based one. The commands used to run each
individual program are listed below, assuming using a typical Linux terminal,
all required runtimes and interpreters for each program are installed, and the
listed compilation commands were used.

| Language          | Command                                       |
| ----------------- | --------------------------------------------- |
| Java              | `java -cp ./ Java.class`                      |
| C                 | `./c.exe`                                     |
| Python            | `python3 python.py`                           |
| C++               | `./cplusplus.exe`                             |
| C#                | `./CSharp.exe`                                |
| Visual Basic .NET | `./vbdotnet.exe`                              |
| JavaScript        | `node javascript.js`                          |
| PHP               | `php php.php`                                 |
| Objective-C       | `./objectivec.exe`                            |
| Ruby              | `ruby ruby.rb`                                |
| Swift             | `./swift.exe`                                 |
| Go                | `./go.exe`                                    |
| R                 | `R --vanilla --slave -f r.r`                  |
| D                 | `./d.exe`                                     |
| Pascal            | `./pascal.exe`                                |
| Perl              | `perl perl.pl`                                |
| Dart              | `./dart.exe`                                  |
| Scala             | `scala Scala`                                 |
| Groovy            | `groovy Groovy`                               |
| F#                | `mono FSharp.exe`                             |
| Rust              | `./Rust.exe`                                  |
| Cobol             | `./cobol.exe`                                 |
| Lisp              | `sbcl --script lisp.lisp`                     |
| Kotlin            | `java -jar kotlin.jar`                        |
| Lua               | `lua lua.lua`                                 |
| Fortran           | `./fortran.exe`                               |
| PowerShell        | `pwsh powershell.ps1`                         |
| Ada               | `./adalang.exe`                               |
| Erlang            | `erl -noshell -run erlanglang -run init stop` |
| Julia             | `julia julia.jl`                              |
| ML                | `./ml.exe`                                    |
| Haskell           | `./haskell.exe`                               |

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
