ACLOCAL_AMFLAGS = -I m4

bin_PROGRAMS = tporo-test

tporo_test_SOURCES = tporo-test.cc
tporo_test_CXXFLAGS = -I $(top_srcdir)/include

tporo_test_LDFLAGS = -L $(top_srcdir)/lib
tporo_test_LDADD = ../lib/libtporo.a

tporo-test.cc : tporo-test.h
	cxxtestgen -w wn -o $@ --error-printer $^

test-run: tporo-test
	./tporo-test

.PHONY : test-run

CLEANFILES = *~ *.o tporo-test.cc tporo-test *.cc