package model.entidades.feedback;

import model.entidades.usuario.Cliente;

public class Feedback_Sugestao extends Feedback{
	private String relacionado;
	
	@Override
	public String toString() {
		return "Feedback_Sugestao [relacionado=" + relacionado + "]";
	}

	public String getRelacionado() {
		return relacionado;
	}

	public void setRelacionado(String relacionado) {
		this.relacionado = relacionado;
	}

	public Feedback_Sugestao(String mensagem, Cliente cliente, String relacionado) {
		super(mensagem, cliente);
		this.relacionado = relacionado;
	}
	
}
