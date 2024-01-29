package model.entidades.feedback;

import model.entidades.usuario.Cliente;
import model.entidades.usuario.Usuario;

public abstract class Feedback{
		private int id;
		private String mensagem;
		private Cliente cliente;
		
		public Feedback(String mensagem, Cliente cliente) {
			this.mensagem = mensagem;
			this.cliente = cliente;
		}
		
		public Feedback(int id,String mensagem, Cliente cliente) {
			super();
			this.id = id;
			this.mensagem = mensagem;
			this.cliente = cliente;
		}
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		
		public String getMensagem() {
			return mensagem;
		}
		public void setMensagem(String mensagem) {
			this.mensagem = mensagem;
		}
		public Usuario getCliente() {
			return cliente;
		}
		public void setCliente(Cliente cliente) {
			this.cliente = cliente;
		}

		@Override
		public String toString() {
			return "Feedback [id=" + id + ", mensagem=" + mensagem + ", cliente=" + cliente + "]";
		}

		
}

