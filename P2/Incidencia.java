package practica2;

import java.util.*;

public class Incidencia{
	
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}

	public List<String> getComentarios() {
		return comentarios;
	}

	public void setComentarios(List<String> comentarios) {
		this.comentarios = comentarios;
	}
	
	public void setComentario(String usuario, String comentario){
		this.comentarios.add((comentarios.size() + 1) + "# " + usuario + "\n" + comentario);
	}

	private String titulo;
	private String desc;
	private String tipo;
	private String usuario;
	private boolean estado;
	private List<String> comentarios;

	public Incidencia(int id, String titulo, String desc, String tipo, String usuario) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.desc = desc;
		this.tipo = tipo;
		this.usuario = usuario;
		this.estado = false;
		this.comentarios = new ArrayList<String>();
	}
	
	public String toString(){
		String est = "";
		if(this.estado) {
			est = "Cerrada";
		}else {
			est = "Abierta";
		}
		
		String cad = "INCIDENCIA \nId: " + this.id + "\nTítulo: " + this.titulo 
				+ "\nDescripción: " + this.desc + "\nTipo: " 
				+ this.tipo + "\nNobmre: " + usuario + "\nEstado: " + est + "\n";
		
		if(!comentarios.isEmpty()) {
			cad += "Comentarios: \n";
			
			for(String c: comentarios) {
				cad += c + "\n\n";
			}
		}
		
		return cad;
	}
}
