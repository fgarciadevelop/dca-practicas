import practica2.Incidencia;
import java.util.*;

public class Lbt {
	private static boolean exit = false;
	private static List<Incidencia> incidencias = new ArrayList<Incidencia>();
	
	private static void crearIncidencia(){
        Scanner entEscaner3 = new Scanner(System.in);

        System.out.print("Dime el titulo: ");
        String titulo = entEscaner3.next();

        System.out.print("Dime la descripción: ");
        String descripcion = entEscaner3.next();

        System.out.println("Dime el tipo: ");
        System.out.println("1. Important");
        System.out.println("2. Normal");
        System.out.println("3. Minor");
        System.out.println("4. Wishlist");

        String tipo = "";
        int op3 = entEscaner3.nextInt();

        tipo = tipoIncidencia(op3);

        if (tipo == "Error") {
            System.out.println("El tipo es incorrecto, no se ha podido crear la incidencia");
        }
        else {
            System.out.print("Dime tu usuario: ");
            String usuario = entEscaner3.next();

            Incidencia inc = new Incidencia(incidencias.size() + 1, titulo, descripcion, tipo, usuario);
            incidencias.add(inc);

            System.out.println("Se ha creado la incidencia correctamente\n");
        }
	}
	
    private static void comentarIncidencia() {
        Scanner entEscaner4 = new Scanner(System.in);

        int numId = pedirNumInc();

        if(numId > 0 && numId <= incidencias.size()) {
            if(incidencias.get(numId - 1).isEstado()) {
                System.out.println("La incidencia está cerrada\n");
            }
            else {
                System.out.print("Dime tu usuario: ");
                String usuario = entEscaner4.next();

                System.out.print("Dime el comentario: ");
                String comentario = entEscaner4.next();

                incidencias.get(numId - 1).setComentario(usuario, comentario);

                System.out.println("Se ha creado el comentario correctamente\n");
            }
        }
        else {
            System.out.println("No existe la incidencia\n");
        }
    }

    private static void verIncidencia() {
        int numId = pedirNumInc();

        if(numId > 0 && numId <= incidencias.size()) {
            System.out.println(incidencias.get(numId - 1));
        }
        else {
            System.out.println("No existe la incidencia\n");
        }
    }

    private static void cerrarIncidencia() {
        int numId = pedirNumInc();

        if(numId > 0 && numId <= incidencias.size()) {
            incidencias.get(numId - 1).setEstado(true);

            System.out.println("Incidencia cerrada\n");
        }
        else {
            System.out.println("No existe la incidencia\n");
        }
    }

    private static int pedirNumInc() {
        Scanner entEscaner2 = new Scanner(System.in);

        System.out.print("Dime el id de la incidencia: ");
        int op2 = entEscaner2.nextInt();

        return op2;
    }

    private static String tipoIncidencia(int op) {
        String res = "";

        switch(op) {
            case 1: res = "Important"; break;
            case 2: res = "Normal"; break;
            case 3: res = "Minor"; break;
            case 4: res = "Wishlist"; break;
            default: res = "Error"; break;
        }

        return res;
    }

    private static void menu(int op) {
        switch(op) {
            case 1: crearIncidencia(); break;
            case 2: comentarIncidencia(); break;
            case 3: verIncidencia(); break;
            case 4: cerrarIncidencia(); break;
            case 5: exit = true; break;
            default: System.out.println("Opción incorrecta\n");
        }
    }

    public static void main(String [ ] args) {
        Scanner entEscaner = new Scanner(System.in);

        System.out.println("LBT");

        int op;

        while(!exit) {
            System.out.println("Elige la opción: ");
            System.out.println("1. Nueva incidencia");
            System.out.println("2. Comentar incidencia");
            System.out.println("3. Ver incidencia");
            System.out.println("4. Cerrar incidencia");
            System.out.println("5. Salir");

            op = entEscaner.nextInt();

            menu(op);
        }

        entEscaner.close();        
    }
}
