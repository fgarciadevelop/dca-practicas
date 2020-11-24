
public class HolaMundo {
	
	public void saluda(String[] args) {
		if(args.length == 0) {
			saludoVacio();
		}else {
			saludoPersona(args[0]);
		}
	}
	
	public void saludoVacio() {
		System.out.println("Hola Mundo!");
	}
	
	public void saludoPersona(String persona) {
		System.out.println("Hola" + persona);
	}
}
