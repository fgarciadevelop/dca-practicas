//48780988N FRANCISCO GARCÍA MORA (31/01/2019).
#ifndef _TPORO_H_
#define _TPORO_H_

#include <iostream>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

using namespace std;

class TPoro{

	private:
		//Coordenada x de la posición.
		int x;
		//Coordenada y de la posición.
		int y;
		//Volumen
		double volumen;
		//Color
		char* color;
		char * pasaMin(char *);
		void Copia(const TPoro &p);
		bool ComparaCadenas(const char* cad1, const char* cad2)const ;

	public: 
		//Forma canónica.
		TPoro();
		TPoro(int x, int y, double vol);
		TPoro(int x, int y, double vol, char* color);
		TPoro(const TPoro &poro);
		~TPoro();
		TPoro& operator= (const TPoro &);

		//Métodos.
		bool operator==(const TPoro &)const;
		bool operator!=(const TPoro &)const;
		void Posicion(int, int);
		void Volumen(double);
		void Color(char *);
		int PosicionX()const;
		int PosicionY()const;
		double Volumen()const;
		char * Color()const;
		bool EsVacio()const;

		//Funciones amigas.
		friend ostream &operator<<(ostream &os, const TPoro &tporo);
};

#endif
