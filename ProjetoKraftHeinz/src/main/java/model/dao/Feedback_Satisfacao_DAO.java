package model.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.entidades.usuario.Cliente;
import model.entidades.feedback.Feedback_Satisfacao;


public class Feedback_Satisfacao_DAO extends ClasseDAO{
	public void inserir(model.entidades.feedback.Feedback_Satisfacao feedback_Satisfacao) {
		sql = "insert into kraft_heinz_feedback_satisfacao(mensagem,id_cliente,qualidade_produtos,variedade_produtos,sustentabilidade,preco, marketing) values(?,?,?,?,?,?,?)";
		try(Connection connection = conexao.conectar()) {
			ps = connection.prepareStatement(sql);
			ps.setString(1,feedback_Satisfacao.getMensagem());
			ps.setString(2,feedback_Satisfacao.getCliente().getEmail());
			ps.setInt(3, feedback_Satisfacao.getQualidade_produtos());
			ps.setInt(4,feedback_Satisfacao.getVariedade_produtos());
			ps.setInt(5, feedback_Satisfacao.getSustentabilidade());
			ps.setInt(6, feedback_Satisfacao.getPreco());
			ps.setInt(7,feedback_Satisfacao.getMarketing());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public List<Feedback_Satisfacao> pesquisar() {
		sql = "select c.nome,c.email,s.mensagem,s.qualidade_produtos,s.variedade_produtos,s.sustentabilidade,s.preco,s.marketing from kraft_heinz_feedback_satisfacao s join kraft_heinz_cliente c on c.email= s.id_cliente";
		List <Feedback_Satisfacao> lista_satisfacao = new ArrayList<>();
		try(Connection connection = conexao.conectar()){
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String email = rs.getString("email");
				String nome = rs.getString("nome");
				String mensagem = rs.getString("mensagem");
				int qualidade_produtos  = rs.getInt("qualidade_produtos");
				int variedade_produtos  = rs.getInt("variedade_produtos");
				int sustentabilidade = rs.getInt("sustentabilidade");
				int preco = rs.getInt("preco");
				int marketing  = rs.getInt("marketing");
				Cliente cliente = new Cliente(nome);
				cliente.setEmail(email);
				lista_satisfacao.add(new Feedback_Satisfacao(mensagem,cliente,qualidade_produtos,
						variedade_produtos,sustentabilidade,preco, marketing));
			}
			ps.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista_satisfacao;
	}


}
