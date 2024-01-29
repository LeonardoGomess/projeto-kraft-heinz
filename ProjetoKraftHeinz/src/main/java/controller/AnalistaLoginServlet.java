package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.AnalistaDeFeedbackDAO;
import model.entidades.usuario.AnalistaDeFeedback;

@WebServlet("/admin")
public class AnalistaLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect("pages/login_analista_feedback.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String login = request.getParameter("login");
		 String senha = request.getParameter("senha");
		 AnalistaDeFeedback adf = new AnalistaDeFeedbackDAO().pesquisar(login, senha);
		 if(adf != null) {
			 response.sendRedirect("pages/analista_feedback.jsp");
		 }else
			 response.sendRedirect("pages/login_analista_feedback.jsp");
	}
	

}
