package Capa_de_Entidades;

public class TipoUsuario {
	public static final int COD_ADMIN = 0;
	public static final int COD_USER = 1;
	private int codTipoUsuario;
	private String nombre;
	private String descPermisos;
	
	public int getCodTipoUsuario() {
		return codTipoUsuario;
	}
	public void setCodTipoUsuario(int codTipoUsuario) {
		this.codTipoUsuario = codTipoUsuario;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescPermisos() {
		return descPermisos;
	}
	public void setDescPermisos(String descPermisos) {
		this.descPermisos = descPermisos;
	}
	
}
