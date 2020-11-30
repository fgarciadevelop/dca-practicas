//import std.stdio;

public class Calendario {
    int dia;
    int mes;
    int anyo;
    public Calendario(int dia, int mes, int anyo)
    	requires(dia > 0)
	requires(dia < 31)
	requires(mes <= 12)
	requires(mes > 0)
	requires(anyo >0)
    {
        this.dia = dia;
        this.mes = mes;
        this.anyo = anyo;
    }

    public int nextDia()
        ensures(dia <= 31)
    {
        this.dia++;
        return dia;
    }

    public int nextMes()
        ensures(mes <= 12)
    {
        this.mes++;
        return mes;
    }

    public int nextanyo(){
        this.anyo++;
        return anyo;
    }

    public int getDia(){return dia;}
    public int getMes(){return mes;}
    public int getAnyo(){return anyo;}
}

void main() 
{
	stdout.printf ("Creamos un calendario\n");
	stdout.printf("El Calendario no puede tener Dias/Meses/anyos Negativos");
	stdout.printf("Los Meses no pueden ser mayores que 12");
	stdout.printf("Los dias de un mes no pueden tener mas de 31 (Para simplificar el calendario se supone que todos los meses tienes 31 dias");
	Calendario cal = new Calendario(30,2,2019);
	stdout.printf("Dia %d" , cal.getDia());
	stdout.printf("Mes %d" , cal.getMes());
	stdout.printf("Año %d" , cal.getAnyo());
	stdout.printf("Podemos Aumentar uno mas el dia");
	stdout.printf("Aumentamos uno mas el dia");
	cal.nextDia();
	stdout.printf("Dia %d", cal.getDia());
	stdout.printf("Aumentamos uno mas el año");
	cal.nextanyo();
	stdout.printf("Dia %d", cal.getDia());
	stdout.printf("Aumentamos uno mas el mes");
	cal.nextMes();


}



