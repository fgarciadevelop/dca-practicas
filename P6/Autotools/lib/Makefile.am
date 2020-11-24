ACLOCAL_AMFLAGS = -I m4

sources = tporo.cpp
headers = $(top_srcdir)/include/*.h

lib_LIBRARIES = libtporo.a
libtporo_a_SOURCES = ${headers} ${sources}
libtporo_a_CPPFLAGS = -I$(top_srcdir)/include

CLEANFILES = *~ *.o