#include <cxxtest/TestSuite.h>
#include <tporo.h>

class TPoroTest: public CxxTest::TestSuite{
public:
	void testConstructorDefecto(void){
		TPoro tp;
		TS_ASSERT_EQUALS(0, tp.PosicionX());
		TS_ASSERT_EQUALS(0, tp.PosicionY());
		TS_ASSERT_EQUALS(0, tp.Volumen());
		TS_ASSERT_EQUALS(NULL, tp.Color());
	}

	void testConstructor (void){
		TPoro tp(2,3,10, NULL);
		TS_ASSERT_EQUALS(2, tp.PosicionX());
	}

	void testIgual (void){
		TPoro tp1, tp2;
		TS_ASSERT_EQUALS(true, tp1.PosicionX() == tp2.PosicionX());
	}

	void testDistinto(void){
		TPoro tp1, tp2;
		tp1.Volumen(30);
		TS_ASSERT_EQUALS(true, tp1.Volumen() != tp2.Volumen());
	}

	void testSettersAndGetters(void){
		TPoro tp;
		tp.Posicion(2,3);
		tp.Volumen(300);
		tp.Color(NULL);
		TS_ASSERT_EQUALS(2, tp.PosicionX());
		TS_ASSERT_EQUALS(3, tp.PosicionY());
		TS_ASSERT_EQUALS(300, tp.Volumen());
		TS_ASSERT_EQUALS(NULL, tp.Color());
	}
};