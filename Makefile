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


.PHONY: all
all: Java.class c.exe cplusplus.exe CSharp.exe vbdotnet.exe objectivec.exe swift.exe go.exe d.exe pascal.exe dart.exe Scala.class


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


.PHONY: clean
clean:
	rm -f *.class *.exe *.o objectivec.d

.PHONY: run
run:
	java -cp ./ Java
