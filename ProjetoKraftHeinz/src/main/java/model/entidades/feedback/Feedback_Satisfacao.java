package model.entidades.feedback;

import model.entidades.usuario.Cliente;

public class Feedback_Satisfacao extends Feedback {
	private int qualidade_produtos;
	private int variedade_produtos;
	private int sustentabilidade;
	private int preco;
	private int marketing;
	
	public Feedback_Satisfacao(String mensagem, Cliente cliente, int qualidade_produtos,
			int variedade_produtos, int sustentabilidade, int preco, int marketing) {
		super(mensagem, cliente);
		this.qualidade_produtos = qualidade_produtos;
		this.variedade_produtos = variedade_produtos;
		this.sustentabilidade = sustentabilidade;
		this.preco = preco;
		this.marketing = marketing;
	}

	public int getQualidade_produtos() {
		return qualidade_produtos;
	}

	public void setQualidade_produtos(int qualidade_produtos) {
		this.qualidade_produtos = qualidade_produtos;
	}

	public int getVariedade_produtos() {
		return variedade_produtos;
	}

	public void setVariedade_produtos(int variedade_produtos) {
		this.variedade_produtos = variedade_produtos;
	}

	public int getSustentabilidade() {
		return sustentabilidade;
	}

	public void setSustentabilidade(int sustentabilidade) {
		this.sustentabilidade = sustentabilidade;
	}

	public int getPreco() {
		return preco;
	}

	public void setPreco(int preco) {
		this.preco = preco;
	}

	public int getMarketing() {
		return marketing;
	}

	public void setMarketing(int marketing) {
		this.marketing = marketing;
	}



}
