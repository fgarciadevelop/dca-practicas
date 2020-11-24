ACLOCAL_AMFLAGS = -I m4

bin_PROGRAMS = tporo-test

tporo_test_SOURCES = tporo-test.cc
tporo_test_CXXFLAGS = -I $(top_srcdir)/include

tporo_test_LDFLAGS = -L $(top_srcdir)/lib
tporo_test_LDADD = ../lib/libtporo.a -lboost_test_exec_monitor

test-run : tporo-test
	./tporo-test

.PHONY : test-run	