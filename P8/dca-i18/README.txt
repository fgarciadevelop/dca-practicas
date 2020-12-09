

	IDIOMAS PARA ACTIVAR REQUERIDOS

#####################################################

	sudo nano /etc/locale.gen
	
	es_ES.UTF-8 UTF-8
	fr_FR.UTF-8 UTT-8
	ja_JP.UTF-8 UTF-8

	sudo locale-gen

#####################################################





	Comandos utilizados para crear un idioma

#####################################################

	mkdir /po/{idioma}
	xgettext -d matricula -o /po/matricula.pot -s ./src/matricula.cpp -k_
	msginit -l {Abreviacion idioma} -o po/{idioma}/matricula.po -i po/matricula.pot
	msgfmt -c -v -o ./po/{idioma}/matricula.mo ./po/{idioma}/matricula.po
	sudo cp ./po/{idioma}/matricula.mo /usr/share/locale/{Abreviacion idioma}/LC_MESSAGES
	LANG={idioma} ./matricula (Idioma en este caso corresponderia al del sistema ej es_ES.UTF-8)

#####################################################




	Ejecucion de la practica con un idioma

#####################################################

	g++ ./src/matricula.cpp -o matricula
	sudo cp ./po/{idioma}/matricula.mo /usr/share/locale/{Abreviacion idioma}/LC_MESSAGES
	LANG={idioma} ./matricula (Idioma en este caso corresponderia al del sistema ej es_ES.UTF-8)
