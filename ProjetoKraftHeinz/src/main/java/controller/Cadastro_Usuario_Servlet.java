package controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ClienteDAO;
import model.entidades.usuario.Cliente;

@WebServlet("/cadastro")
public class Cadastro_Usuario_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("login");
		String senha = request.getParameter("senha");
		String dataNascimentoString = request.getParameter("data_nascimento");
	    LocalDate dataNascimento = LocalDate.parse(dataNascimentoString);
		new ClienteDAO().inserir(new Cliente(email,senha,nome,dataNascimento));
		response.sendRedirect("pages/login_cadastro.jsp");
	}

}
