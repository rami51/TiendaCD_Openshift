package Capa_de_Entidades;

public class Disco {
	private int codDisco;
	private String titulo;
	private int anoLanzamiento;
	private int cantCopiasDisp;
	private float precio;
	private GeneroMusical genero;
	private Autor autor;
	private float valoracion;
	
	public Disco(){
		genero = new GeneroMusical();
		autor = new Autor();
	}
	
	public int getCodDisco() {
		return codDisco;
	}
	public void setCodDisco(int codDisco) {
		this.codDisco = codDisco;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public int getAnoLanzamiento() {
		return anoLanzamiento;
	}
	public void setAnoLanzamiento(int anoLanzamiento) {
		this.anoLanzamiento = anoLanzamiento;
	}
	public int getCantCopiasDisp() {
		return cantCopiasDisp;
	}
	public void setCantCopiasDisp(int cantCopiasDisp) {
		this.cantCopiasDisp = cantCopiasDisp;
	}
	public float getPrecio() {
		return precio;
	}
	public void setPrecio(float precio) {
		this.precio = precio;
	}
	public GeneroMusical getGenero() {
		return genero;
	}
	public void setGenero(GeneroMusical genero) {
		this.genero = genero;
	}
	public Autor getAutor() {
		return autor;
	}
	public void setAutor(Autor autor) {
		this.autor = autor;
	}

	public float getValoracion() {
		return valoracion;
	}

	public void setValoracion(float valoracion) {
		this.valoracion = valoracion;
	}

}
