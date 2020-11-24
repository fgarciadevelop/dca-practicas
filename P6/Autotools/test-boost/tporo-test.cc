#define BOOST_TEST_MODULE TPoro test
#include <boost/test/unit_test.hpp>
#include <boost/test/output_test_stream.hpp>

#include <sstream>
#include <TPoro.h>

using boost::test_tools::output_test_stream;

BOOST_AUTO_TEST_SUITE(TPoro_ts)

BOOST_AUTO_TEST_CASE(constructordefecto){
	TPoro tp;
	BOOST_CHECK_EQUAL(tp.PosicionX(), 0);
	BOOST_CHECK_EQUAL(tp.PosicionY(), 0);
	BOOST_CHECK_EQUAL(tp.Color(), NULL);
	BOOST_CHECK_EQUAL(tp.Volumen(), 0);
}

BOOST_AUTO_TEST_CASE(constructor){
	TPoro tp(2,3,4,NULL);
	BOOST_CHECK_EQUAL(tp.PosicionX(), 2);
	BOOST_CHECK_EQUAL(tp.PosicionY(), 3);
	BOOST_CHECK_EQUAL(tp.Volumen(), 4);
	BOOST_CHECK_EQUAL(tp.Color(), NULL);
}

BOOST_AUTO_TEST_CASE(igual){
	TPoro tp1, tp2;
	BOOST_CHECK_EQUAL(tp1.PosicionX() == tp2.PosicionX(), true);
}

BOOST_AUTO_TEST_CASE(distinto){
	TPoro tp1, tp2;
	tp1.Volumen(300);
	BOOST_CHECK_EQUAL(tp1.Volumen() == tp2.Volumen() true);
}

BOOST_AUTO_TEST_CASE(settersandgetters){
	TPoro tp;
	tp.Posicion(2,3);
	tp.Volumen(300);
	tp.Color(NULL);
	BOOST_CHECK_EQUAL(tp.PosicionX(), 2);
	BOOST_CHECK_EQUAL(tp.PosicionY(), 3);
	BOOST_CHECK_EQUAL(tp.Volumen(), 300);
	BOOST_CHECK_EQUAL(tp.Color(), NULL);
}

BOOST_AUTO_TEST_SUITE_END()