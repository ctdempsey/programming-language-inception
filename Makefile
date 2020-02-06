JC = javac
CC = gcc
CPPC = g++
CSC = mcs
VBC = vbnc
OCC = gcc
OCFLAGS = `gnustep-config --objc-flags` -lgnustep-base -lobjc
SC = swiftc


.PHONY: all
all: Java.class c.exe cplusplus.exe CSharp.exe vbdotnet.exe objectivec.exe swift.exe


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


.PHONY: clean
clean:
	rm -f *.class *.exe *.d


.PHONY: run
run:
	java -cp ./ Java
