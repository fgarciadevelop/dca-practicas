import java.util.Scanner;

public class HolaMundo {
	
	public void saluda(String[] args) {
		if(args.length == 0) {
			saludoVacio();
			pregunta();
		}else {
			saludoPersona(args[0]);
			pregunta();
		}
	}
	
	public void saludoVacio() {
		System.out.println("Hola Mundo!");
	}
	
	public void saludoPersona(String persona) {
		System.out.println("Hola" + persona);
	}
	
	public void pregunta() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("¿Qué tal el día?");
		String contestacion = scanner.next();
		System.out.println("De modo que: " + contestacion);
	}
}
