import std.stdio : writeln;

class Pelicula {
    private {
        int likes, dislikes, comentarios, valoraciones;
        float valoracion;
        string nombre;
        bool vista;
    }

    this() {
        this.likes = 0;
        this.dislikes = 0;
        this.comentarios = 0;
        this.valoraciones = 0;
        this.valoracion = 0.0;
        this.nombre = null;
        this.vista = false;
    }

    this(int likes, int dislikes, int comentarios, int valoraciones, float valoracion, string nombre, bool vista) {
        this.likes = likes;
        this.dislikes = dislikes;
        this.comentarios = comentarios;
        this.valoraciones = valoraciones;
        this.valoracion = valoracion;
        this.nombre = nombre;
        this.vista = vista;
    }

    invariant() {
        assert(likes >= 4);
        assert(dislikes >= 1);
        assert(comentarios >= 2);
        assert(valoracion >= 0);
    }

    int getLikes() {
        return likes;
    }

    int getDislikes() {
        return dislikes;
    }

    int getComentarios() {
        return comentarios;
    }

    int getValoraciones() {
        return valoraciones;
    }

    float getValoracion() {
        return valoracion;
    }

    string getNombre() {
        return nombre;
    }

    bool getVista() {
        return vista;
    }

    void setLikes(int likes) {
        this.likes = likes;
    }

    void setDislikes(int dislikes) {
        this.dislikes = dislikes;
    }

    void setComentarios(int comentarios) {
        this.comentarios = comentarios;
    }

    void setValoraciones(int valoraciones) {
        this.valoraciones = valoraciones;
    }

    void setValoracion(int valoracion) {
        this.valoracion = valoracion;
    }

    void setNombre(string nombre) {
        this.nombre = nombre;
    }
    
    void setVista(bool vista) {
        this.vista = vista;
    }

    float calcularMedia(float valoracion) 
    in {
        assert(valoracion > 0.0);
        assert(valoracion < 10.0);
    }
    out (result) {
        assert(result >= 0.0);
    }
    do {
        return (this.valoracion + valoracion) / (this.valoraciones + 1);
    }

    bool comprobarValoracionPelicula() 
    in {
        assert(this.valoracion >= 0.0);
    }
    do {
        if (this.valoracion  >= 5.0) {
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
    auto pelicula = new Pelicula(6, 2, 3, 3, 4.0f, "La casa encantada", false);

    pelicula.writeln;
    writeln("likes: ", pelicula.getLikes());
    writeln("dislikes: ", pelicula.getDislikes());
    writeln("comentarios: ", pelicula.getComentarios());
    writeln("valoracion: ", pelicula.getValoracion());

    writeln("Valoración media: ", pelicula.calcularMedia(5.8));

    writeln("La película tiene una valoración positiva: ", pelicula.comprobarValoracionPelicula());

}