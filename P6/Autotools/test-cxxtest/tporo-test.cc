/* Generated file, do not edit */

#ifndef CXXTEST_RUNNING
#define CXXTEST_RUNNING
#endif

#define _CXXTEST_HAVE_STD
#include <cxxtest/TestListener.h>
#include <cxxtest/TestTracker.h>
#include <cxxtest/TestRunner.h>
#include <cxxtest/RealDescriptions.h>
#include <cxxtest/TestMain.h>
#include <cxxtest/ErrorPrinter.h>

int main( int argc, char *argv[] ) {
 int status;
    CxxTest::ErrorPrinter tmp;
    CxxTest::RealWorldDescription::_worldName = "wn";
    status = CxxTest::Main< CxxTest::ErrorPrinter >( tmp, argc, argv );
    return status;
}
bool suite_TPoroTest_init = false;
#include "tporo-test.h"

static TPoroTest suite_TPoroTest;

static CxxTest::List Tests_TPoroTest = { 0, 0 };
CxxTest::StaticSuiteDescription suiteDescription_TPoroTest( "tporo-test.h", 4, "TPoroTest", suite_TPoroTest, Tests_TPoroTest );

static class TestDescription_suite_TPoroTest_testConstructorDefecto : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TPoroTest_testConstructorDefecto() : CxxTest::RealTestDescription( Tests_TPoroTest, suiteDescription_TPoroTest, 6, "testConstructorDefecto" ) {}
 void runTest() { suite_TPoroTest.testConstructorDefecto(); }
} testDescription_suite_TPoroTest_testConstructorDefecto;

static class TestDescription_suite_TPoroTest_testConstructor : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TPoroTest_testConstructor() : CxxTest::RealTestDescription( Tests_TPoroTest, suiteDescription_TPoroTest, 14, "testConstructor" ) {}
 void runTest() { suite_TPoroTest.testConstructor(); }
} testDescription_suite_TPoroTest_testConstructor;

static class TestDescription_suite_TPoroTest_testIgual : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TPoroTest_testIgual() : CxxTest::RealTestDescription( Tests_TPoroTest, suiteDescription_TPoroTest, 19, "testIgual" ) {}
 void runTest() { suite_TPoroTest.testIgual(); }
} testDescription_suite_TPoroTest_testIgual;

static class TestDescription_suite_TPoroTest_testDistinto : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TPoroTest_testDistinto() : CxxTest::RealTestDescription( Tests_TPoroTest, suiteDescription_TPoroTest, 24, "testDistinto" ) {}
 void runTest() { suite_TPoroTest.testDistinto(); }
} testDescription_suite_TPoroTest_testDistinto;

static class TestDescription_suite_TPoroTest_testSettersAndGetters : public CxxTest::RealTestDescription {
public:
 TestDescription_suite_TPoroTest_testSettersAndGetters() : CxxTest::RealTestDescription( Tests_TPoroTest, suiteDescription_TPoroTest, 30, "testSettersAndGetters" ) {}
 void runTest() { suite_TPoroTest.testSettersAndGetters(); }
} testDescription_suite_TPoroTest_testSettersAndGetters;

#include <cxxtest/Root.cpp>
const char* CxxTest::RealWorldDescription::_worldName = "cxxtest";
