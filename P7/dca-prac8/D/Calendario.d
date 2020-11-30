import std.stdio;

class Calendario {
    int dia;
    int mes;
    int año;
    this(int dia, int mes, int año)
    in{
        assert(dia > 0);
        assert(dia <= 31);
        assert(mes <= 12);
        assert(mes > 0);
        assert(año >0);
    }
    do{
        this.dia = dia;
        this.mes = mes;
        this.año = año;
    }

    invariant(){
        assert(dia >= 1 && dia <= 32);
        assert(mes >= 1 && mes <= 12);
        assert(año > 0);
    }

    int nextDia()
    out{
        assert(dia <= 31);
    }
    do{
        this.dia++;
        return dia;
    }

    int nextMes()
    out{
        assert(mes <= 12);
    }
    do{
        this.mes++;
        return mes;
    }

    int nextAño(){
        this.año++;
        return año;
    }

    int getDia(){return dia;}
    int getMes(){return mes;}
    int getAño(){return año;}
}

void main() 
{
    writefln("Creamos un calendario");
    writefln("El Calendario no puede tener Dias/Meses/Años Negativos");
    writefln("Los Meses no pueden ser mayores que 12");
    writefln("Los dias de un mes no pueden tener mas de 31 (Para simplificar el calendario se supone que todos los meses tienes 31 dias");
    Calendario cal = new Calendario(30,2,2019);
    writeln("Dia ", cal.getDia());
    writeln("Podemos Aumentar uno mas el dia");
    writeln("Aumentamos uno mas el dia");
    cal.nextDia();
    writeln("Dia ", cal.getDia());
}



