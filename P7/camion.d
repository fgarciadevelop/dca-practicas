import std.stdio : writeln;

class Camion {
    private {
        int ruedas, asientos, peso, combustible;
        string nombre;
        bool remolque;
    }

    this() {
        this.ruedas = 4;
        this.asientos = 1;
        this.peso = 2500;
        this.combustible = 0;
        this.nombre = null;
        this.remolque = false;
    }

    this(int ruedas, int asientos, int peso, int combustible, string nombre, bool remolque) {
        this.ruedas = ruedas;
        this.asientos = asientos;
        this.peso = peso;
        this.combustible = combustible;
        this.nombre = nombre;
        this.remolque = remolque;
    }

    invariant() {
        assert(ruedas >= 4);
        assert(asientos >= 1);
        assert(peso >= 2500);
        assert(combustible >= 0);
    }

    int getRuedas() {
        return ruedas;
    }

    int getAsientos() {
        return asientos;
    }

    int getPeso() {
        return peso;
    }

    int getCombustible() {
        return combustible;
    }

    string getNombre() {
        return nombre;
    }

    bool getRemolque() {
        return remolque;
    }

    void setRuedas(int ruedas) {
        this.ruedas = ruedas;
    }

    void setAsientos(int asientos) {
        this.asientos = asientos;
    }

    void setPeso(int peso) {
        this.peso = peso;
    }

    void setCombustible(int combustible) {
        this.combustible = combustible;
    }

    void setNombre(string nombre) {
        this.nombre = nombre;
    }
    
    void setRemolque(bool remolque) {
        this.remolque = remolque;
    }

    float calcularDistancia(float consumoMedio) 
    in {
        assert(consumoMedio > 0.0);
    }
    out (result) {
        assert(result >= 0.0);
    }
    do {
        return (100 * combustible) / consumoMedio;
    }

    bool pasarPorTaller(float nivelAceite) 
    in {
        assert(nivelAceite >= 3.0);
    }
    do {
        if (nivelAceite < 3.5) {
            return true;
        }
        else {
            return false;
        }
    }

    override string toString() const {
        return nombre;
    }
}

void main() {
    auto camion = new Camion(6, 2, 3000, 50, "Camion Prueba", false);

    camion.writeln;
    writeln("Ruedas: ", camion.getRuedas());
    writeln("Asientos: ", camion.getAsientos());
    writeln("Peso: ", camion.getPeso());
    writeln("Combustible: ", camion.getCombustible());

    writeln("Distancia: ", camion.calcularDistancia(5.8));

    bool irTaller = camion.pasarPorTaller(4.5);
}