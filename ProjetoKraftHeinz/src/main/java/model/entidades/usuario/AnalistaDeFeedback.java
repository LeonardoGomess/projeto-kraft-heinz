package model.entidades.usuario;

public class AnalistaDeFeedback extends Usuario {
	
	private Long cpf;
	private Long telefone;

	public AnalistaDeFeedback(String email,String senha,Long cpf,String nome,Long telefone) {
		super(email,senha,nome);
		this.telefone = telefone;
		this.cpf = cpf;
	}

	public AnalistaDeFeedback(String nome) {
		super(nome);
	}

	public Long getCPF() {
		return cpf;
	}

	public void setCPF(Long cpf) {
		this.cpf = cpf;
	}

	

	public Long getTelefone() {
		return telefone;
	}

	public void setTelefone(Long telefone) {
		this.telefone = telefone;
	}
	

	
}
