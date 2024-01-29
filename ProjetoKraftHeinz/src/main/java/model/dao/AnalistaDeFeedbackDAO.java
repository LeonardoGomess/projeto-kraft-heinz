package model.dao;

import java.sql.Connection;
import java.sql.SQLException;

import model.conexao.Conexao;
import model.entidades.usuario.AnalistaDeFeedback;

public class AnalistaDeFeedbackDAO extends ClasseDAO{
	public AnalistaDeFeedback pesquisar(String login,String senha){
		AnalistaDeFeedback analistaDeFeedback = null;
		sql = "select login,senha from kraft_heinz_analista_feedback where login=? and senha = ?";
		try(Connection connection = new Conexao().conectar()){
			ps = connection.prepareStatement(sql);
			ps.setString(1, login);
			ps.setString(2, senha);
			rs = ps.executeQuery();
			if(rs.next()) {
				String nome = rs.getString("senha");
				analistaDeFeedback = new AnalistaDeFeedback(nome);
			}
			ps.close();
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return analistaDeFeedback;
	}
}
