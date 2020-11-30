namespace dca {
    public class Pelicula {
        private int likes;
        private int dislikes;
        private int comentarios;
        private int valoraciones;
        private float valoracion;
        private string nombre;
        private bool vista;

        public Pelicula(int likes, int dislikes, int comentarios, int valoraciones, float valoracion, string nombre, bool vista) 
        requires(likes >= 4 && dislikes >= 1 && comentarios >= 2 && valoracion >= 0.0f && valoraciones >= 3)
        {
            this.likes = likes;
            this.dislikes = dislikes;
            this.comentarios = comentarios;
            this.valoracion = valoracion;
            this.nombre = nombre;
            this.vista = vista;
        }

        public int getLikes() {
            return likes;
        }

        public int getDislikes() {
            return dislikes;
        }

        public int getComentarios() {
            return comentarios;
        }

        public float getValoracion() {
            return valoracion;
        }

        public int getValoraciones() {
            return valoraciones;
        }

        public string getNombre() {
            return nombre;
        }

        public bool getVista() {
            return vista;
        }

        public void setLikes(int likes) 
        requires(likes >= 0)
        {
            this.likes = likes;
        }

        public void setDislikes(int dislikes) 
        requires(dislikes >= 0)
        {
            this.dislikes = dislikes;
        }

        public void setComentarios(int comentarios) 
        requires(comentarios >= 0)
        {
            this.comentarios = comentarios;
        }

        public void setValoracion(float valoracion)
        requires(valoracion >= 0.0f)
        {

            this.valoracion= valoracion;
        }

        public void setValoraciones(int valoraciones) 
        requires(valoraciones >= 0)
        {
            this.valoraciones = valoraciones;
        }

        public void setNombre(string nombre) {
            this.nombre = nombre;
        }

        public void setVista(bool vista) {
            this.vista = vista;
        }

        public float calcularMedia(float valoracion) 
        requires(valoracion > 0.0f && valoracion <= 10.0f)
        ensures(result >= 0.0f)
        {
            return (this.valoracion + valoracion) / (this.valoraciones + 1);
        }

        public bool comprobarValoracionPelicula() 
        requires(this.valoracion >= 0.0)
        {
            if (this.valoracion  >= 5.0) {
                return true;
            }
            else {
                return false;
            }
        }

        public string toString() {
            return "Nombre: " + nombre + "\n" + 
                    "Likes: " + likes.to_string() + "\n" +
                    "Dislikes: " + dislikes.to_string() + "\n" +
                    "Comentarios: " + comentarios.to_string() + "\n" +
                    "Valoracion: " + valoracion.to_string() + "\n";
        }
    }
    
    int main ()
    {
        Pelicula pelicula = new Pelicula(6, 2, 3, 3, 4.0f, "La casa encantada", false);

        pelicula.setLikes(8);
        pelicula.setDislikes(3);
        pelicula.setComentarios(5);
        pelicula.setValoracion(7.20f);

        print(pelicula.toString());

        print("Valoración media: %s \n", pelicula.calcularMedia(5.8f).to_string());

        print("La pelicula tiene una valoracion positiva: %s (%s)\n", pelicula.comprobarValoracionPelicula().to_string(), pelicula.getValoracion().to_string());

        return 0;
    }
}