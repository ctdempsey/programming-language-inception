JC = javac
CC = gcc
CPPC = g++
CSC = mcs
VBC = vbnc
OCC = gcc
OCFLAGS = `gnustep-config --objc-flags` -lgnustep-base -lobjc
SC = swiftc
GC = go build
DC = dmd
PC = fpc
DARTC = dart2native
SCC = scalac
GRC = groovyc
FSC = fsharpc
RC = rustc
COBC = cobc
KC = kotlinc
KCFLAGS = -include-runtime
FC = gfortran
ADAC = gnatmake


.PHONY: all
all: all1 all2 all3

.PHONY: all1
all1: Java.class c.exe cplusplus.exe CSharp.exe vbdotnet.exe objectivec.exe

.PHONY: all2
all2: swift.exe go.exe d.exe pascal.exe dart.exe Scala.class Groovy.class

.PHONY: all3
all3: FSharp.exe Rust.exe cobol.exe kotlin.jar fortran.exe adalang.exe


Java.class: Java.java
	$(JC) $?

c.exe: c.c
	$(CC) $? -o $@

cplusplus.exe: cplusplus.cpp
	$(CPPC) $? -o $@

CSharp.exe: CSharp.cs
	$(CSC) $?

vbdotnet.exe: vbdotnet.vb
	$(VBC) $?

objectivec.exe: objectivec.m
	. /usr/share/GNUstep/Makefiles/GNUstep.sh
	$(OCC) $? $(OCFLAGS) -o $@

swift.exe: swift.swift
	$(SC) $? -o $@

go.exe: go.go
	$(GC) -o $@ $?

d.exe: d.d
	$(DC) -of=$@ $?

pascal.exe: pascal.pas
	$(PC) -o"$@" $?

dart.exe: dart.dart
	$(DARTC) $?

Scala.class: Scala.scala
	$(SCC) $?

Groovy.class: Groovy.Groovy
	$(GRC) $?

FSharp.exe: FSharp.fs
	$(FSC) $?

Rust.exe: Rust.rs
	$(RC) -o $@ $?

cobol.exe: cobol.cbl
	$(COBC) -x -o $@ $?

kotlin.jar: kotlin.kt
	$(KC) $? $(KCFLAGS) -d $@

fortran.exe: fortran.f90
	$(FC) $? -o $@

adalang.exe: adalang.adb
	$(ADAC) -B -o $@ $?


.PHONY: clean
clean:
	rm -f *.class *.exe *.o objectivec.d *.jar *.ali

.PHONY: run
run:
	java -cp ./ Java
