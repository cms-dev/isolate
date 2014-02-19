# Makefile for Moe isolator
# (c) 2012 Martin Mares <mj@ucw.cz>
# (c) 2014 Giovanni Mascellani <mascellani@poisson.phc.unipi.it>

isolate: isolate.c
	gcc -o isolate isolate.c -O2 -Wall -Wno-parentheses -Wno-unused-result -g -std=c99

isolate.1: isolate.1.txt
	a2x -f manpage -D . $<

# The dependency on isolate.1 is there to serialize both calls of asciidoc,
# which does not name temporary files safely.
isolate.1.html: isolate.1.txt isolate.1
	a2x -f xhtml -D . $<
