
public class main {

	public static void main(String[] args) {
		HolaMundo hola = new HolaMundo();
		if(args.length == 0) {
			hola.saludoVacio();
		}else {
			hola.saludoPersona(args[0]);
		}
	}

}
