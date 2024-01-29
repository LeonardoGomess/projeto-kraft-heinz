package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ClienteDAO;
import model.entidades.usuario.Cliente;

@WebServlet("/login")
public class Login_Usuario_Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email_login");
		String senha = request.getParameter("senha_login");
		Cliente cliente = new ClienteDAO().pesquisar(email,senha);
		 if(cliente != null) {
			 RequestDispatcher requestDispatcher = request.getRequestDispatcher("/pages/home_usuario.jsp") ;
			 request.setAttribute("email", email);
			 request.setAttribute("senha", senha);
			 requestDispatcher.forward(request, response);
		  	 }
		 else if(cliente == null){
			response.sendRedirect("pages/login_cadastro.jsp");
		 }	
		 
	}

}
