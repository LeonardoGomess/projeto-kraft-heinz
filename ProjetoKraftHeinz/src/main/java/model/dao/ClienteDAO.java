package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;

import model.entidades.usuario.Cliente;

public class ClienteDAO extends ClasseDAO{
	
	public Cliente pesquisar(String email,String senha){
		sql = "select * from kraft_heinz_cliente where email=? and senha=? ";
		Cliente cliente = null;
		try(Connection connection = conexao.conectar()){
			ps = connection.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2,senha);
			rs = ps.executeQuery();
			if(rs.next()) {
				String nome = rs.getString("nome"); 
				cliente = new Cliente(nome);
			}
			ps.close();
			rs.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return cliente;
	}
	
	public Cliente pesquisar(String email){
		sql = "select * from kraft_heinz_cliente where email=?";
		Cliente cliente = null;
		try(Connection connection = conexao.conectar()){
			ps = connection.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if(rs.next()) {
				cliente = new Cliente(email);
			}
			ps.close();
			rs.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return cliente;
	}
	
	public void inserir(Cliente cliente) {
		sql = "insert into kraft_heinz_cliente(nome,email,data_nascimento,senha) values(?,?,?,?)";
		try(Connection connection = conexao.conectar()) {
			ps = connection.prepareStatement(sql);
			ps.setString(1, cliente.getNome());
			ps.setString(2,cliente.getEmail());
			ps.setDate(3,Date.valueOf(cliente.getDataNascimento()));
			ps.setString(4,cliente.getSenha());
			ps.execute();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
}
