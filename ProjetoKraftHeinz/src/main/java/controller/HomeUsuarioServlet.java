package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ClienteDAO;
import model.dao.Feedback_Satisfacao_DAO;
import model.dao.Feedback_Sugestao_DAO;
import model.entidades.feedback.Feedback_Satisfacao;
import model.entidades.feedback.Feedback_Sugestao;
import model.entidades.usuario.Cliente;

@WebServlet("/enviar")
public class HomeUsuarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String email_cliente  =  request.getParameter("email_login");
	    System.out.println(email_cliente);
		String mensagem = request.getParameter("mensagem");
		Cliente cliente = new ClienteDAO().pesquisar(email_cliente);
		System.out.println(cliente);
		cliente.setEmail(email_cliente);
		if(request.getParameter("tipo").equals("satisfacao")) {
			int nota_qualidade = Integer.parseInt(request.getParameter("qualidade_produtos"));
			int nota_variedade = Integer.parseInt(request.getParameter("variedade_produtos"));
			int nota_sustentabilidade =Integer.parseInt(request.getParameter("sustentabilidade"));
			int nota_preco = Integer.parseInt(request.getParameter("preco"));
			int nota_marketing = Integer.parseInt(request.getParameter("marketing"));
			new Feedback_Satisfacao_DAO().inserir(new Feedback_Satisfacao(mensagem, cliente, nota_qualidade, nota_variedade, nota_sustentabilidade, nota_preco, nota_marketing));
		
		}else if(request.getParameter("tipo").equals("sugestao")){
			String relacionado = request.getParameter("relacionado");
			new Feedback_Sugestao_DAO().inserir(new Feedback_Sugestao(mensagem, cliente, relacionado));
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/home_usuario.jsp");
        dispatcher.forward(request, response);
	}

}
