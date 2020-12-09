#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#include <libintl.h>
#include <locale.h>
using namespace std;

#define _(STRING) gettext(STRING)

class Matricula // Class Matricula
{
public:
	Matricula(int E = 18, bool FN = false , bool REP = true); // Constructor
	float calculaTasaMatricula() const; // Calcular la tasa de matricula
	int getEdad()const; // return edad
	bool isFamiliaNumerosa()const; // return edad
	bool isRepetidor()const; // return edad
private:
	int edad;
	bool familiaNumerosa, repetidor;
			
};

Matricula::Matricula(int E, bool FN, bool REP) // Scope function
{
	edad = E; 
	familiaNumerosa = FN;
	repetidor = REP;
}

float Matricula::calculaTasaMatricula() const {
	float tasa = 500.00f;

	if ((edad < 25) && (!familiaNumerosa) && (repetidor)) {
		tasa = tasa + 1500.00f;
	} else {
		if ((familiaNumerosa) || (edad >= 65)) {
			tasa = tasa / 2;
		}
		if ((edad > 50) && (edad < 65)) {
			tasa = tasa - 100.00f;
		}
	}
	return tasa;
}
int Matricula::getEdad()const
{
	return edad;
}
bool Matricula::isFamiliaNumerosa()const
{
	return familiaNumerosa;
}
bool Matricula::isRepetidor()const
{
	return repetidor;
}

int main() 
{

	//bindtextdo
	setlocale(LC_ALL, "");               
	bindtextdomain("matricula", "/usr/share/locale/");                
	bind_textdomain_codeset("matricula", "UTF-8");              
	textdomain("matricula");

	int edad;
	bool fm,rep;
	//Matricula MyMatricula;
	printf ( _("Enter the age: ") );
	//cout << "Introduce la edad: ";
	cin >> edad;
	printf ( _("Large Family?: ") );
	//cout << "Familia Numerosa?: ";
	cin >> fm;
	printf ( _("Repeater Student?: ") );
	//cout << "Repetidor?: ";
	cin >> rep;
	Matricula MyMatricula(edad,fm,rep);
	cout <<"Tasa de matricula es : "<< MyMatricula.calculaTasaMatricula() << endl;

	return 0 ;
}
