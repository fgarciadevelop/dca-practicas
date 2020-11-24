//48780988N FRANCISCO GARCÍA MORA (31/01/2019).

#include "tporo.h"

TPoro::TPoro(){
	this->x = 0;
	this->y = 0;
	this->volumen = 0;
	this->color = NULL;
}

TPoro::TPoro(int x, int y, double vol){
	color = NULL;
	Posicion(x, y);
	Volumen(vol);
}

TPoro::TPoro(int x, int y, double vol, char* color){
	this->color = NULL;
	Posicion(x, y);
	Volumen(vol);
	Color(color);
}

TPoro::TPoro(const TPoro &poro){
	color = NULL;
	Copia(poro);
}

TPoro::~TPoro(){
	x = 0;
	y = 0;
	volumen = 0;
	if(color != NULL){
		delete[] color;
		color = NULL;
	}
}

TPoro& TPoro::operator= (const TPoro &p){
	if(this != &p){
		(*this).~TPoro();
		Copia(p);
	}
	return *this;
}

void TPoro::Copia(const TPoro &p){
	Posicion(p.x, p.y);
	Volumen(p.volumen);
	Color(p.color);
}

void TPoro::Posicion(int x, int y){
	this->x = x;
	this->y = y;
}

void TPoro::Volumen(double v){
	volumen = v;
}

void TPoro::Color(char* c){
	if(color != NULL){
		delete[] color;
		color = NULL;
	}
	if(c != NULL){
		color = new char[strlen(c)+1];
		int i;
		for (i = 0; c[i]; i++){
			color[i] = tolower(c[i]);
		}
		color[i] = '\0';
	}
}

		//Métodos.
char * TPoro::pasaMin(char * mensaje){
	for(unsigned i = 0; i < strlen(mensaje); i++){
		mensaje[i] = tolower(mensaje[i]);
	}
	return mensaje;
}

bool TPoro::operator==(const TPoro &p)const{
	if(this->x == p.PosicionX() && this->y == p.PosicionY() && this->volumen == p.Volumen()){
		if(ComparaCadenas(color, p.Color()))
			return true;
	}
	return false;
}

//Revisar esto.
bool TPoro::operator!=(const TPoro &p)const{
	if(this->x == p.PosicionX() && this->y == p.PosicionY() && this->volumen == p.Volumen()){
		if(ComparaCadenas(color, p.Color()))
			return false;
		else
			return true;
	}
	return true;
}

int TPoro::PosicionX()const{
	return x;
}

int TPoro::PosicionY()const{
	return y;
}

double TPoro::Volumen()const{
	return volumen;
}

char * TPoro::Color()const{
	return color;
}

bool TPoro::EsVacio()const{
	return x == 0 && y == 0 && volumen == 0 && color == NULL;

}

bool TPoro::ComparaCadenas(const char* cad1, const char* cad2)const {
	return (cad1 == NULL && cad2 == NULL) || (cad1 != NULL && cad2 != NULL && strcmp(cad1, cad2) == 0);
}

//Funciones amigas.
ostream &operator<<(ostream &os, const TPoro &tporo){
	if(!tporo.EsVacio()){
		os.setf(ios::fixed);
		os.precision(2);
		os <<"("<< tporo.PosicionX() << ", " << tporo.PosicionY() << ") " << tporo.Volumen()<< " ";
		if(tporo.Color() != NULL)
			os << tporo.Color();
		else
			os << "-"	;
	}else
		os << "()";

	return os;
}


