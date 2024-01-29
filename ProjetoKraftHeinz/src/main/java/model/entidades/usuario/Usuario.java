package model.entidades.usuario;

public class Usuario {
	private String email;
	private String senha;
	private String nome;
	
	public Usuario(String email,String senha) {
		this.email = email;
		this.senha = senha;
	}
	
	public Usuario(String email,String senha,String nome) {
		this.email = email;
		this.senha = senha;
		this.nome = nome;
	}

	public Usuario() {
	}

	public Usuario(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
