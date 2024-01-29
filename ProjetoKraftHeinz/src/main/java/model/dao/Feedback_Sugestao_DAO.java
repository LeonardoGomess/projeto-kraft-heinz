package model.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.entidades.feedback.Feedback_Sugestao;
import model.entidades.usuario.Cliente;

public class Feedback_Sugestao_DAO extends ClasseDAO{

	public void inserir(Feedback_Sugestao feedback_Sugestao) {
		sql = "insert into kraft_heinz_feedback_sugestao(relacionado,mensagem,id_cliente) values(?,?,?)";
		try(Connection connection = conexao.conectar()) {
			ps = connection.prepareStatement(sql);
			ps.setString(1,feedback_Sugestao.getRelacionado());
			ps.setString(2,feedback_Sugestao.getMensagem());
			ps.setString(3,feedback_Sugestao.getCliente().getEmail());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public List<Feedback_Sugestao> pesquisar() {
		sql = "select c.nome,c.email,s.relacionado,s.mensagem from kraft_heinz_feedback_sugestao s join kraft_heinz_cliente c on c.email = s.id_cliente";
		List <Feedback_Sugestao> lista_sugestao = new ArrayList<>();
		try(Connection connection = conexao.conectar()){
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String nome = rs.getString("nome");
				String relacionado = rs.getString("relacionado");
				String mensagem = rs.getString("mensagem");
				String email = rs.getString("email");
				Cliente cliente = new Cliente(nome);
				cliente.setEmail(email);
				lista_sugestao.add(new Feedback_Sugestao(mensagem,cliente,relacionado));
			}
			ps.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista_sugestao;
	}

	
}
