namespace dca {
    public class Camion {
        private int ruedas;
        private int asientos;
        private int peso;
        private int combustible;
        private string nombre;
        private bool remolque;

        public Camion(int ruedas, int asientos, int peso, int combustible, string nombre, bool remolque) 
        requires(ruedas >= 4 && asientos >= 1 && peso >= 2500 && combustible >= 0)
        {
            this.ruedas = ruedas;
            this.asientos = asientos;
            this.peso = peso;
            this.combustible = combustible;
            this.nombre = nombre;
            this.remolque = remolque;
        }

        public int getRuedas() {
            return ruedas;
        }

        public int getAsientos() {
            return asientos;
        }

        public int getPeso() {
            return peso;
        }

        public int getCombustible() {
            return combustible;
        }

        public string getNombre() {
            return nombre;
        }

        public bool getRemolque() {
            return remolque;
        }

        public void setRuedas(int ruedas) 
        requires(ruedas >= 4)
        {
            this.ruedas = ruedas;
        }

        public void setAsientos(int asientos) 
        requires(asientos >= 1)
        {
            this.asientos = asientos;
        }

        public void setPeso(int peso) 
        requires(peso >= 2500)
        {
            this.peso = peso;
        }

        public void setCombustible(int combustible) 
        requires(combustible >= 0)
        {
            this.combustible = combustible;
        }

        public void setNombre(string nombre) {
            this.nombre = nombre;
        }

        public void setRemolque(bool remolque) {
            this.remolque = remolque;
        }

        public float calculadoraDistancia(float consumoMedio) 
        requires(consumoMedio > 0.0f)
        ensures(result >= 0.0f)
        {
            return (100 * combustible) / consumoMedio;
        }

        public bool pasarPorTaller(float nivelAceite) 
        requires(nivelAceite > 3.0f)
        {
            if (nivelAceite < 3.5f) {
                return true;
            }
            else {
                return false;
            }
        }

        public string toString() {
            return "Nombre: " + nombre + "\n" + 
                    "Ruedas: " + ruedas.to_string() + "\n" +
                    "Asientos: " + asientos.to_string() + "\n" +
                    "Peso: " + peso.to_string() + "\n" +
                    "Combustible: " + combustible.to_string() + "\n";
        }
    }
    
    int main ()
    {
        Camion camion = new Camion(4, 1, 2800, 40, "Camion Prueba", false);

        camion.setRuedas(6);
        camion.setAsientos(2);
        camion.setPeso(3000);
        camion.setCombustible(50);

        print(camion.toString());

        print("Distancia: " + camion.calculadoraDistancia(5.8f).to_string() + "\n");

        bool irTaller = camion.pasarPorTaller(4.5f);

        return 0;
    }
}