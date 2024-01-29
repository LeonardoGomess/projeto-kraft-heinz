package model.entidades.usuario;

import java.time.LocalDate;

public class Cliente extends Usuario {

	private String nome;
	private LocalDate dataNascimento;
	

	public void setDataNascimento(LocalDate dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public Cliente(String email,String senha,String nome,LocalDate dataNascimento) {
		super(email,senha);
		this.nome = nome;
		this.dataNascimento = dataNascimento;
	}
	
	public Cliente(String nome) {
		this.nome = nome;
	}

	public LocalDate getDataNascimento() {
		return dataNascimento;
	}
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
